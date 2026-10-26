import { FormEvent, KeyboardEvent, useEffect, useState } from 'react';
import { Link, useNavigate, useParams, useSearchParams } from 'react-router-dom';
import { ArrowLeft, Copy, ExternalLink, Trash2, X } from 'lucide-react';
import { supabase } from '../lib/supabase';
import { ProductRow, CategoryRow } from '../lib/catalog';
import ImageManager from './ImageManager';
import { deleteUnusedProductImages } from './storage';
import { Button, Card, ErrorMessage, Field, Input, PageHeader, Select, Spinner, Textarea, Toggle, slugify } from './ui';

interface FormState {
  slug: string;
  name: string;
  category: string;
  price: string;
  compare_at_price: string;
  pix_price: string;
  installments: string;
  alt_installments: string;
  alt_installment_amount: string;
  images: string[];
  image_position: string;
  image_fit: '' | 'cover' | 'contain';
  has_colors: boolean;
  has_themes: boolean;
  sizes: string[];
  description: string;
  badges: string[];
  active: boolean;
  sort_order: string;
}

const emptyForm: FormState = {
  slug: '',
  name: '',
  category: '',
  price: '',
  compare_at_price: '',
  pix_price: '',
  installments: '2',
  alt_installments: '',
  alt_installment_amount: '',
  images: [],
  image_position: '',
  image_fit: '',
  has_colors: false,
  has_themes: false,
  sizes: [],
  description: '',
  badges: [],
  active: true,
  sort_order: '0',
};

const numToStr = (v: number | null | undefined) => (v === null || v === undefined ? '' : String(v));

function rowToForm(row: ProductRow): FormState {
  return {
    slug: row.slug,
    name: row.name,
    category: row.category,
    price: numToStr(row.price),
    compare_at_price: numToStr(row.compare_at_price),
    pix_price: numToStr(row.pix_price),
    installments: numToStr(row.installments),
    alt_installments: numToStr(row.alt_installments),
    alt_installment_amount: numToStr(row.alt_installment_amount),
    images: row.images ?? [],
    image_position: row.image_position ?? '',
    image_fit: row.image_fit ?? '',
    has_colors: row.has_colors,
    has_themes: row.has_themes,
    sizes: row.sizes ?? [],
    description: row.description ?? '',
    badges: row.badges ?? [],
    active: row.active,
    sort_order: String(row.sort_order ?? 0),
  };
}

/** Aceita "149,90" ou "149.90". */
function parseMoney(value: string): number | null {
  const v = value.trim();
  if (!v) return null;
  const n = Number(v.includes(',') ? v.replace(/\./g, '').replace(',', '.') : v);
  return Number.isFinite(n) ? n : NaN;
}

function parseIntOrNull(value: string): number | null {
  const v = value.trim();
  if (!v) return null;
  const n = parseInt(v, 10);
  return Number.isFinite(n) ? n : NaN;
}

function ChipsInput({ values, onChange, placeholder }: { values: string[]; onChange: (v: string[]) => void; placeholder: string }) {
  const [draft, setDraft] = useState('');
  const commit = () => {
    const v = draft.trim();
    if (v && !values.includes(v)) onChange([...values, v]);
    setDraft('');
  };
  return (
    <div className="flex flex-wrap items-center gap-1.5 rounded-md border border-oat-300 bg-white px-2 py-1.5 focus-within:ring-2 focus-within:ring-oat-300">
      {values.map((v) => (
        <span key={v} className="inline-flex items-center gap-1 bg-oat-100 text-oat-800 text-xs px-2 py-1 rounded">
          {v}
          <button type="button" onClick={() => onChange(values.filter((x) => x !== v))} aria-label={`Remover ${v}`}>
            <X size={12} />
          </button>
        </span>
      ))}
      <input
        value={draft}
        onChange={(e) => setDraft(e.target.value)}
        onKeyDown={(e: KeyboardEvent<HTMLInputElement>) => {
          if (e.key === 'Enter' || e.key === ',') {
            e.preventDefault();
            commit();
          } else if (e.key === 'Backspace' && !draft && values.length) {
            onChange(values.slice(0, -1));
          }
        }}
        onBlur={commit}
        placeholder={placeholder}
        className="flex-1 min-w-[120px] text-sm py-1 outline-none bg-transparent"
      />
    </div>
  );
}

export default function ProductEditor() {
  const { id } = useParams<{ id: string }>();
  const [searchParams] = useSearchParams();
  const duplicateFrom = searchParams.get('duplicar');
  const isNew = !id;
  const navigate = useNavigate();

  const [form, setForm] = useState<FormState | null>(isNew && !duplicateFrom ? emptyForm : null);
  const [originalImages, setOriginalImages] = useState<string[]>([]);
  const [categories, setCategories] = useState<CategoryRow[]>([]);
  const [slugTouched, setSlugTouched] = useState(!isNew);
  const [error, setError] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);
  const [savedAt, setSavedAt] = useState<Date | null>(null);

  useEffect(() => {
    supabase
      .from('categories')
      .select('*')
      .order('sort_order')
      .then(({ data }) => setCategories((data ?? []) as CategoryRow[]));
  }, []);

  useEffect(() => {
    const loadId = id ?? duplicateFrom;
    if (!loadId) return;
    supabase
      .from('products')
      .select('*')
      .eq('id', loadId)
      .single()
      .then(({ data, error }) => {
        if (error || !data) {
          setError(error?.message ?? 'Produto não encontrado.');
          return;
        }
        const row = data as ProductRow;
        if (id) {
          setForm(rowToForm(row));
          setOriginalImages(row.images ?? []);
        } else {
          // Duplicando: mesma configuração, mas nome/slug novos e inativo até revisar.
          setForm({ ...rowToForm(row), name: `${row.name} (cópia)`, slug: `${row.slug}-copia`, active: false });
          setSlugTouched(true);
        }
      });
  }, [id, duplicateFrom]);

  if (!form) {
    return error ? <ErrorMessage message={error} /> : <Spinner />;
  }

  const set = <K extends keyof FormState>(key: K, value: FormState[K]) => {
    setForm((prev) => (prev ? { ...prev, [key]: value } : prev));
    setSavedAt(null);
  };

  const handleNameChange = (name: string) => {
    setForm((prev) => (prev ? { ...prev, name, slug: slugTouched ? prev.slug : slugify(name) } : prev));
    setSavedAt(null);
  };

  const handleSave = async (e?: FormEvent) => {
    e?.preventDefault();
    setError(null);

    const price = parseMoney(form.price);
    const money = {
      compare_at_price: parseMoney(form.compare_at_price),
      pix_price: parseMoney(form.pix_price),
      alt_installment_amount: parseMoney(form.alt_installment_amount),
    };
    const ints = {
      installments: parseIntOrNull(form.installments),
      alt_installments: parseIntOrNull(form.alt_installments),
      sort_order: parseIntOrNull(form.sort_order) ?? 0,
    };

    if (!form.name.trim()) return setError('Informe o nome do produto.');
    if (!form.slug.trim()) return setError('Informe o endereço (slug) do produto.');
    if (!form.category) return setError('Escolha uma categoria.');
    if (price === null || Number.isNaN(price) || price <= 0) return setError('Informe um preço válido.');
    if (Object.values(money).some((v) => Number.isNaN(v)) || Object.values(ints).some((v) => Number.isNaN(v))) {
      return setError('Há algum número inválido nos campos de preço ou parcelas.');
    }

    const payload = {
      slug: slugify(form.slug),
      name: form.name.trim(),
      category: form.category,
      price,
      ...money,
      ...ints,
      images: form.images,
      image_position: form.image_position.trim() || null,
      image_fit: form.image_fit || null,
      has_colors: form.has_colors,
      has_themes: form.has_themes,
      sizes: form.sizes,
      description: form.description,
      badges: form.badges,
      active: form.active,
    };

    setSaving(true);
    if (isNew) {
      const { data, error } = await supabase.from('products').insert(payload).select('id').single();
      setSaving(false);
      if (error) return setError(error.code === '23505' ? 'Já existe um produto com esse endereço (slug).' : error.message);
      navigate(`/admin/produtos/${encodeURIComponent(data.id)}`, { replace: true });
      return;
    }

    const { error } = await supabase.from('products').update(payload).eq('id', id);
    setSaving(false);
    if (error) return setError(error.code === '23505' ? 'Já existe um produto com esse endereço (slug).' : error.message);
    await deleteUnusedProductImages(originalImages.filter((img) => !form.images.includes(img)));
    setOriginalImages(form.images);
    setForm((prev) => (prev ? { ...prev, slug: payload.slug } : prev));
    setSavedAt(new Date());
  };

  const handleDelete = async () => {
    if (!id || !confirm(`Excluir "${form.name}" definitivamente? Para só tirar da loja, desative o produto.`)) return;
    const { error } = await supabase.from('products').delete().eq('id', id);
    if (error) return setError(error.message);
    await deleteUnusedProductImages(originalImages);
    navigate('/admin/produtos', { replace: true });
  };

  return (
    <form onSubmit={handleSave}>
      <Link to="/admin/produtos" className="inline-flex items-center gap-1.5 text-sm text-nude-500 hover:text-oat-700 mb-3">
        <ArrowLeft size={15} /> Produtos
      </Link>
      <PageHeader
        title={isNew ? 'Novo produto' : 'Editar produto'}
        actions={
          !isNew && (
            <>
              <a href={`/produto/${form.slug}`} target="_blank" rel="noopener noreferrer">
                <Button variant="secondary">
                  <ExternalLink size={15} /> Ver na loja
                </Button>
              </a>
              <Link to={`/admin/produtos/novo?duplicar=${encodeURIComponent(id!)}`}>
                <Button variant="secondary">
                  <Copy size={15} /> Duplicar
                </Button>
              </Link>
            </>
          )
        }
      />
      <ErrorMessage message={error} />

      <div className="grid lg:grid-cols-[1fr_300px] gap-5 items-start">
        <div className="space-y-5">
          <Card className="p-5 space-y-4">
            <Field label="Nome do produto">
              <Input value={form.name} onChange={(e) => handleNameChange(e.target.value)} required />
            </Field>
            <Field label="Endereço na loja (slug)" hint={`divinababy.com/produto/${form.slug || '...'}`}>
              <Input
                value={form.slug}
                onChange={(e) => {
                  setSlugTouched(true);
                  set('slug', e.target.value);
                }}
                onBlur={() => set('slug', slugify(form.slug))}
              />
            </Field>
            <Field
              label="Descrição"
              hint="Deixe uma linha em branco entre os blocos. Linhas começando com - viram itens de lista. O primeiro bloco é o resumo."
            >
              <Textarea rows={12} value={form.description} onChange={(e) => set('description', e.target.value)} />
            </Field>
          </Card>

          <Card className="p-5">
            <h2 className="text-sm font-semibold text-nude-800 mb-3">Fotos</h2>
            <ImageManager
              images={form.images}
              onChange={(images) => set('images', images)}
              folder="produtos"
              onError={setError}
            />
            <div className="grid sm:grid-cols-2 gap-4 mt-4">
              <Field label="Enquadramento na vitrine">
                <Select value={form.image_fit} onChange={(e) => set('image_fit', e.target.value as FormState['image_fit'])}>
                  <option value="">Preencher (padrão)</option>
                  <option value="contain">Mostrar a foto inteira</option>
                </Select>
              </Field>
              <Field label="Posição da foto" hint="Opcional. Ex.: center top, 50% 30%">
                <Input value={form.image_position} onChange={(e) => set('image_position', e.target.value)} />
              </Field>
            </div>
          </Card>

          <Card className="p-5">
            <h2 className="text-sm font-semibold text-nude-800 mb-3">Preço e pagamento</h2>
            <div className="grid sm:grid-cols-3 gap-4">
              <Field label="Preço (R$)">
                <Input inputMode="decimal" value={form.price} onChange={(e) => set('price', e.target.value)} placeholder="169,80" required />
              </Field>
              <Field label="Preço no Pix (R$)" hint="Vazio = 5% de desconto">
                <Input inputMode="decimal" value={form.pix_price} onChange={(e) => set('pix_price', e.target.value)} />
              </Field>
              <Field label="Preço antigo (R$)" hint="Aparece riscado, com % de desconto">
                <Input inputMode="decimal" value={form.compare_at_price} onChange={(e) => set('compare_at_price', e.target.value)} />
              </Field>
              <Field label="Parcelas sem juros">
                <Input inputMode="numeric" value={form.installments} onChange={(e) => set('installments', e.target.value)} />
              </Field>
              <Field label="Parcelas no link">
                <Input inputMode="numeric" value={form.alt_installments} onChange={(e) => set('alt_installments', e.target.value)} />
              </Field>
              <Field label="Valor da parcela no link (R$)">
                <Input inputMode="decimal" value={form.alt_installment_amount} onChange={(e) => set('alt_installment_amount', e.target.value)} />
              </Field>
            </div>
          </Card>

          <Card className="p-5 space-y-4">
            <h2 className="text-sm font-semibold text-nude-800">Variações</h2>
            <div className="flex flex-wrap gap-6">
              <Toggle checked={form.has_colors} onChange={(v) => set('has_colors', v)} label="Cliente escolhe cores das miçangas" />
              <Toggle checked={form.has_themes} onChange={(v) => set('has_themes', v)} label="Cliente escolhe tema" />
            </div>
            <p className="text-xs text-nude-400">
              A lista de cores e temas é a mesma para todos os produtos e é editada em{' '}
              <Link to="/admin/cores-temas" className="underline">
                Cores e Temas
              </Link>
              .
            </p>
            <Field label="Tamanhos" hint="Digite e aperte Enter. Ex.: 0-6 meses">
              <ChipsInput values={form.sizes} onChange={(v) => set('sizes', v)} placeholder="Adicionar tamanho" />
            </Field>
          </Card>
        </div>

        <div className="space-y-5 lg:sticky lg:top-6">
          <Card className="p-5 space-y-4">
            <Toggle checked={form.active} onChange={(v) => set('active', v)} label={form.active ? 'Visível na loja' : 'Oculto da loja'} />
            <Field label="Categoria">
              <Select value={form.category} onChange={(e) => set('category', e.target.value)} required>
                <option value="">Escolha...</option>
                {categories.map((c) => (
                  <option key={c.name} value={c.name}>
                    {c.name}
                    {c.active ? '' : ' (inativa)'}
                  </option>
                ))}
              </Select>
            </Field>
            <Field label="Selos" hint="Ex.: Feito à mão, Personalizável, Frete grátis">
              <ChipsInput values={form.badges} onChange={(v) => set('badges', v)} placeholder="Adicionar selo" />
            </Field>
            <Field label="Ordem de exibição" hint="Menor aparece primeiro. Os 8 primeiros aparecem em Lançamentos na página inicial.">
              <Input inputMode="numeric" value={form.sort_order} onChange={(e) => set('sort_order', e.target.value)} />
            </Field>
            <Button type="submit" loading={saving} className="w-full">
              {isNew ? 'Criar produto' : 'Salvar alterações'}
            </Button>
            {savedAt && <p className="text-xs text-teal-700 text-center">Salvo às {savedAt.toLocaleTimeString('pt-BR')}</p>}
          </Card>

          {!isNew && (
            <Button variant="danger" onClick={handleDelete} className="w-full">
              <Trash2 size={15} /> Excluir produto
            </Button>
          )}
        </div>
      </div>
    </form>
  );
}
