import { FormEvent, useEffect, useState } from 'react';
import { ArrowDown, ArrowUp, Plus, Trash2 } from 'lucide-react';
import { supabase } from '../lib/supabase';
import { CategoryRow } from '../lib/catalog';
import { SingleImageField } from './ImageManager';
import { Button, Card, ErrorMessage, Input, PageHeader, Spinner, Toggle } from './ui';

export default function Categories() {
  const [rows, setRows] = useState<CategoryRow[] | null>(null);
  const [counts, setCounts] = useState<Record<string, number>>({});
  const [error, setError] = useState<string | null>(null);
  const [newName, setNewName] = useState('');

  const load = async () => {
    const [cats, prods] = await Promise.all([
      supabase.from('categories').select('*').order('sort_order'),
      supabase.from('products').select('category'),
    ]);
    if (cats.error) setError(cats.error.message);
    setRows((cats.data ?? []) as CategoryRow[]);
    const map: Record<string, number> = {};
    (prods.data ?? []).forEach((p: { category: string }) => (map[p.category] = (map[p.category] ?? 0) + 1));
    setCounts(map);
  };

  useEffect(() => {
    load();
  }, []);

  const update = async (name: string, patch: Partial<CategoryRow>) => {
    setError(null);
    const { error } = await supabase.from('categories').update(patch).eq('name', name);
    if (error) {
      setError(error.code === '23505' ? 'Já existe uma categoria com esse nome.' : error.message);
      return false;
    }
    setRows((prev) => prev?.map((r) => (r.name === name ? { ...r, ...patch } : r)) ?? null);
    if (patch.name && patch.name !== name) {
      setCounts((prev) => ({ ...prev, [patch.name!]: prev[name] ?? 0 }));
    }
    return true;
  };

  const move = async (index: number, direction: -1 | 1) => {
    if (!rows) return;
    const target = index + direction;
    if (target < 0 || target >= rows.length) return;
    // Renumera tudo para garantir ordem estável mesmo com valores repetidos.
    const reordered = [...rows];
    [reordered[index], reordered[target]] = [reordered[target], reordered[index]];
    const renumbered = reordered.map((r, i) => ({ ...r, sort_order: i * 10 }));
    setRows(renumbered);
    const original = new Map(rows.map((r) => [r.name, r.sort_order]));
    const changed = renumbered.filter((r) => original.get(r.name) !== r.sort_order);
    await Promise.all(changed.map((r) => supabase.from('categories').update({ sort_order: r.sort_order }).eq('name', r.name)));
  };

  const add = async (e: FormEvent) => {
    e.preventDefault();
    const name = newName.trim();
    if (!name) return;
    const sortOrder = rows && rows.length ? Math.max(...rows.map((r) => r.sort_order)) + 10 : 0;
    const { error } = await supabase.from('categories').insert({ name, sort_order: sortOrder });
    if (error) return setError(error.code === '23505' ? 'Já existe uma categoria com esse nome.' : error.message);
    setNewName('');
    load();
  };

  const remove = async (row: CategoryRow) => {
    if (counts[row.name]) {
      setError(`"${row.name}" tem ${counts[row.name]} produto(s). Mova-os para outra categoria antes de excluir.`);
      return;
    }
    if (!confirm(`Excluir a categoria "${row.name}"?`)) return;
    const { error } = await supabase.from('categories').delete().eq('name', row.name);
    if (error) return setError(error.message);
    setRows((prev) => prev?.filter((r) => r.name !== row.name) ?? null);
  };

  return (
    <div>
      <PageHeader title="Categorias" subtitle="Aparecem em 'Compre por Categoria' na página inicial e nos filtros da loja, nesta ordem." />
      <ErrorMessage message={error} />

      <form onSubmit={add} className="flex gap-2 mb-4">
        <Input placeholder="Nome da nova categoria" value={newName} onChange={(e) => setNewName(e.target.value)} />
        <Button type="submit" className="shrink-0">
          <Plus size={16} /> Adicionar
        </Button>
      </form>

      {!rows ? (
        <Spinner />
      ) : (
        <Card className="divide-y divide-oat-100">
          {rows.map((row, i) => (
            <div key={row.name} className="flex flex-wrap sm:flex-nowrap items-center gap-3 px-4 py-3">
              <SingleImageField
                value={row.image}
                onChange={(image) => update(row.name, { image })}
                folder="categorias"
                onError={setError}
                size="w-14 h-14 !rounded-full"
              />
              <div className="flex-1 min-w-[180px]">
                <Input
                  defaultValue={row.name}
                  onBlur={async (e) => {
                    const value = e.target.value.trim();
                    if (!value || value === row.name) {
                      e.target.value = row.name;
                      return;
                    }
                    if (!(await update(row.name, { name: value }))) e.target.value = row.name;
                  }}
                />
                <p className="text-xs text-nude-400 mt-1">{counts[row.name] ?? 0} produto(s)</p>
              </div>
              <Toggle checked={row.active} onChange={(active) => update(row.name, { active })} label={row.active ? 'Visível' : 'Oculta'} />
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
