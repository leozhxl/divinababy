import { useEffect, useMemo, useState } from 'react';
import { Link } from 'react-router-dom';
import { Plus, Search } from 'lucide-react';
import { supabase } from '../lib/supabase';
import { ProductRow } from '../lib/catalog';
import { Button, Card, ErrorMessage, Input, PageHeader, Select, Spinner, Thumb, Toggle, formatBRL } from './ui';

const DIACRITICS = /[̀-ͯ]/g;
const normalize = (v: string) => v.toLowerCase().normalize('NFD').replace(DIACRITICS, '');

export default function ProductsList() {
  const [products, setProducts] = useState<ProductRow[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [query, setQuery] = useState('');
  const [category, setCategory] = useState('');
  const [status, setStatus] = useState<'todos' | 'ativos' | 'inativos'>('todos');

  useEffect(() => {
    supabase
      .from('products')
      .select('*')
      .order('sort_order')
      .order('name')
      .then(({ data, error }) => {
        if (error) setError(error.message);
        setProducts((data ?? []) as ProductRow[]);
      });
  }, []);

  const categories = useMemo(() => Array.from(new Set((products ?? []).map((p) => p.category))).sort(), [products]);

  const visible = useMemo(() => {
    const terms = normalize(query).split(/\s+/).filter(Boolean);
    return (products ?? []).filter((p) => {
      if (category && p.category !== category) return false;
      if (status === 'ativos' && !p.active) return false;
      if (status === 'inativos' && p.active) return false;
      const haystack = normalize(`${p.name} ${p.slug} ${p.id}`);
      return terms.every((t) => haystack.includes(t));
    });
  }, [products, query, category, status]);

  const toggleActive = async (product: ProductRow, active: boolean) => {
    setProducts((prev) => prev?.map((p) => (p.id === product.id ? { ...p, active } : p)) ?? null);
    const { error } = await supabase.from('products').update({ active }).eq('id', product.id);
    if (error) {
      setError(error.message);
      setProducts((prev) => prev?.map((p) => (p.id === product.id ? { ...p, active: !active } : p)) ?? null);
    }
  };

  return (
    <div>
      <PageHeader
        title="Produtos"
        subtitle={products ? `${products.length} produtos · ${products.filter((p) => p.active).length} ativos na loja` : undefined}
        actions={
          <Link to="/admin/produtos/novo">
            <Button>
              <Plus size={16} /> Novo produto
            </Button>
          </Link>
        }
      />
      <ErrorMessage message={error} />

      <div className="grid sm:grid-cols-[1fr_220px_150px] gap-2 mb-4">
        <div className="relative">
          <Search size={16} className="absolute left-3 top-1/2 -translate-y-1/2 text-nude-400" />
          <Input placeholder="Buscar por nome ou código" value={query} onChange={(e) => setQuery(e.target.value)} className="pl-9" />
        </div>
        <Select value={category} onChange={(e) => setCategory(e.target.value)}>
          <option value="">Todas as categorias</option>
          {categories.map((c) => (
            <option key={c} value={c}>
              {c}
            </option>
          ))}
        </Select>
        <Select value={status} onChange={(e) => setStatus(e.target.value as typeof status)}>
          <option value="todos">Todos</option>
          <option value="ativos">Ativos</option>
          <option value="inativos">Inativos</option>
        </Select>
      </div>

      {!products ? (
        <Spinner />
      ) : (
        <Card className="overflow-hidden">
          {visible.length === 0 ? (
            <p className="p-8 text-center text-sm text-nude-500">Nenhum produto encontrado.</p>
          ) : (
            <ul className="divide-y divide-oat-100">
              {visible.map((p) => (
                <li key={p.id} className="flex items-center gap-3 px-4 py-3 hover:bg-cream-50">
                  <Link to={`/admin/produtos/${encodeURIComponent(p.id)}`} className="flex items-center gap-3 flex-1 min-w-0">
                    <Thumb src={p.images[0]} alt={p.name} className="w-14 h-14" />
                    <div className="min-w-0">
                      <p className={`text-sm font-medium truncate ${p.active ? 'text-nude-800' : 'text-nude-400'}`}>{p.name}</p>
                      <p className="text-xs text-nude-400 truncate">
                        {p.category} · {p.images.length} {p.images.length === 1 ? 'foto' : 'fotos'} · cód. {p.id.slice(0, 8)}
                      </p>
                    </div>
                  </Link>
                  <div className="text-right shrink-0 hidden sm:block">
                    <p className="text-sm font-semibold text-nude-800">{formatBRL(p.price)}</p>
                    {p.pix_price && <p className="text-xs text-oat-600">{formatBRL(p.pix_price)} no Pix</p>}
                  </div>
                  <div className="shrink-0 w-24 flex justify-end">
                    <Toggle checked={p.active} onChange={(v) => toggleActive(p, v)} label={p.active ? 'Ativo' : 'Inativo'} />
                  </div>
                </li>
              ))}
            </ul>
          )}
        </Card>
      )}
    </div>
  );
}
