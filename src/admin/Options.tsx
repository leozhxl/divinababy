import { FormEvent, useEffect, useState } from 'react';
import { ArrowDown, ArrowUp, Plus, Trash2 } from 'lucide-react';
import { supabase } from '../lib/supabase';
import { OptionRow } from '../lib/catalog';
import { SingleImageField } from './ImageManager';
import { Button, Card, ErrorMessage, Input, PageHeader, Spinner, Toggle } from './ui';

type Table = 'bead_colors' | 'themes';

function OptionTable({ table, withHex }: { table: Table; withHex: boolean }) {
  const [rows, setRows] = useState<OptionRow[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [newName, setNewName] = useState('');

  const load = async () => {
    const { data, error } = await supabase.from(table).select('*').order('sort_order');
    if (error) setError(error.message);
    setRows((data ?? []) as OptionRow[]);
  };

  useEffect(() => {
    load();
  }, []);

  const update = async (id: number, patch: Partial<OptionRow>) => {
    setError(null);
    const { error } = await supabase.from(table).update(patch).eq('id', id);
    if (error) {
      setError(error.code === '23505' ? 'Já existe um item com esse nome.' : error.message);
      return false;
    }
    setRows((prev) => prev?.map((r) => (r.id === id ? { ...r, ...patch } : r)) ?? null);
    return true;
  };

  const move = async (index: number, direction: -1 | 1) => {
    if (!rows) return;
    const target = index + direction;
    if (target < 0 || target >= rows.length) return;
    const reordered = [...rows];
    [reordered[index], reordered[target]] = [reordered[target], reordered[index]];
    const renumbered = reordered.map((r, i) => ({ ...r, sort_order: i * 10 }));
    setRows(renumbered);
    const original = new Map(rows.map((r) => [r.id, r.sort_order]));
    const changed = renumbered.filter((r) => original.get(r.id) !== r.sort_order);
    await Promise.all(changed.map((r) => supabase.from(table).update({ sort_order: r.sort_order }).eq('id', r.id)));
  };

  const add = async (e: FormEvent) => {
    e.preventDefault();
    const name = newName.trim();
    if (!name) return;
    const sortOrder = rows && rows.length ? Math.max(...rows.map((r) => r.sort_order)) + 10 : 0;
    const { error } = await supabase.from(table).insert({ name, sort_order: sortOrder, ...(withHex ? { hex: '#e8ddc6' } : {}) });
    if (error) return setError(error.code === '23505' ? 'Já existe um item com esse nome.' : error.message);
    setNewName('');
    load();
  };

  const remove = async (row: OptionRow) => {
    if (!confirm(`Excluir "${row.name}"? Para só esconder da loja, desative.`)) return;
    const { error } = await supabase.from(table).delete().eq('id', row.id);
    if (error) return setError(error.message);
    setRows((prev) => prev?.filter((r) => r.id !== row.id) ?? null);
  };

  return (
    <div>
      <ErrorMessage message={error} />
      <form onSubmit={add} className="flex gap-2 mb-4">
        <Input placeholder={withHex ? 'Nome da nova cor' : 'Nome do novo tema'} value={newName} onChange={(e) => setNewName(e.target.value)} />
        <Button type="submit" className="shrink-0">
          <Plus size={16} /> Adicionar
        </Button>
      </form>

      {!rows ? (
        <Spinner />
      ) : (
        <Card className="divide-y divide-oat-100">
          {rows.length === 0 && <p className="p-8 text-center text-sm text-nude-500">Nenhum item cadastrado.</p>}
          {rows.map((row, i) => (
            <div key={row.id} className="flex flex-wrap sm:flex-nowrap items-center gap-3 px-4 py-2.5">
              <SingleImageField
                value={row.image}
                onChange={(image) => update(row.id, { image })}
                folder={table === 'themes' ? 'temas' : 'cores'}
                onError={setError}
                size="w-12 h-12"
              />
              {withHex && (
                <input
                  type="color"
                  title="Cor da bolinha"
                  defaultValue={row.hex ?? '#ffffff'}
                  onBlur={(e) => e.target.value !== row.hex && update(row.id, { hex: e.target.value })}
                  className="w-9 h-9 rounded-full border border-oat-300 cursor-pointer shrink-0 p-0 overflow-hidden"
                />
              )}
              <Input
                key={row.name}
                defaultValue={row.name}
                className="flex-1 min-w-[160px]"
                onBlur={async (e) => {
                  const value = e.target.value.trim();
                  if (!value || value === row.name) {
                    e.target.value = row.name;
                    return;
                  }
                  if (!(await update(row.id, { name: value }))) e.target.value = row.name;
                }}
              />
              <Toggle checked={row.active} onChange={(active) => update(row.id, { active })} label={row.active ? 'Visível' : 'Oculto'} />
              <div className="flex gap-1">
                <Button variant="ghost" className="!px-2" disabled={i === 0} onClick={() => move(i, -1)} title="Subir">
                  <ArrowUp size={16} />
                </Button>
                <Button variant="ghost" className="!px-2" disabled={i === rows.length - 1} onClick={() => move(i, 1)} title="Descer">
                  <ArrowDown size={16} />
                </Button>
                <Button variant="ghost" className="!px-2 text-red-600" onClick={() => remove(row)} title="Excluir">
                  <Trash2 size={16} />
                </Button>
              </div>
            </div>
          ))}
        </Card>
      )}
    </div>
  );
}

export default function Options() {
  const [tab, setTab] = useState<Table>('bead_colors');
  return (
    <div>
      <PageHeader
        title="Cores e Temas"
        subtitle="Valem para todos os produtos que têm a opção ligada. A foto aparece quando a cliente passa o mouse ou toca na opção."
      />
      <div className="flex gap-1 mb-5 border-b border-oat-200">
        {(
          [
            ['bead_colors', 'Cores das miçangas'],
            ['themes', 'Temas'],
          ] as const
        ).map(([value, label]) => (
          <button
            key={value}
            onClick={() => setTab(value)}
            className={`px-4 py-2 text-sm -mb-px border-b-2 ${
              tab === value ? 'border-oat-500 text-oat-800 font-semibold' : 'border-transparent text-nude-500 hover:text-nude-700'
            }`}
          >
            {label}
          </button>
        ))}
      </div>
      <OptionTable key={tab} table={tab} withHex={tab === 'bead_colors'} />
    </div>
  );
}
