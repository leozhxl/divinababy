import { ReactNode, useMemo, useState } from 'react';
import { useSearchParams } from 'react-router-dom';
import { waLink } from './whatsapp';
import { products, categories } from './data/products';
import FloatingWhatsApp from './FloatingWhatsApp';
import Header from './Header';
import ProductCard from './ProductCard';
import Reveal from './Reveal';

function toggleInSet(set: string[], value: string): string[] {
  return set.includes(value) ? set.filter((v) => v !== value) : [...set, value];
}

function Produtos() {
  const [searchParams] = useSearchParams();
  const categoriaParam = searchParams.get('categoria');
  const queryParam = searchParams.get('q')?.toLowerCase() ?? '';

  const [selectedCategories, setSelectedCategories] = useState<string[]>(
    categoriaParam && categories.includes(categoriaParam) ? [categoriaParam] : []
  );
  const [selectedColors, setSelectedColors] = useState<string[]>([]);
  const [selectedSizes, setSelectedSizes] = useState<string[]>([]);

  const colorOptions = useMemo(() => {
    const map = new Map<string, { name: string; hex?: string; count: number }>();
    products.forEach((p) =>
      p.colors?.forEach((c) => {
        const entry = map.get(c.name);
        if (entry) entry.count += 1;
        else map.set(c.name, { name: c.name, hex: c.hex, count: 1 });
      })
    );
    return Array.from(map.values());
  }, []);

  const sizeOptions = useMemo(() => {
    const map = new Map<string, number>();
    products.forEach((p) => p.sizes?.forEach((s) => map.set(s, (map.get(s) ?? 0) + 1)));
    return Array.from(map.entries()).map(([name, count]) => ({ name, count }));
  }, []);

  const categoryOptions = useMemo(
    () =>
      categories.map((category) => ({
        name: category,
        count: products.filter((p) => p.category === category).length,
      })),
    []
  );

  const visibleProducts = products
    .filter((p) => (selectedCategories.length ? selectedCategories.includes(p.category) : true))
    .filter((p) => (selectedColors.length ? p.colors?.some((c) => selectedColors.includes(c.name)) : true))
    .filter((p) => (selectedSizes.length ? p.sizes?.some((s) => selectedSizes.includes(s)) : true))
    .filter((p) => (queryParam ? p.name.toLowerCase().includes(queryParam) : true));

  const hasActiveFilters = selectedCategories.length || selectedColors.length || selectedSizes.length;

  const clearFilters = () => {
    setSelectedCategories([]);
    setSelectedColors([]);
    setSelectedSizes([]);
  };

  return (
    <div className="min-h-screen bg-cream-50">
      <Header />

      <section className="py-16 lg:py-24">
        <div className="max-w-7xl mx-auto px-6 lg:px-12">
          <div className="text-center mb-10">
            <p className="section-subtitle mb-4">Catálogo Completo</p>
            <h2 className="section-title mb-6">Todas as Coleções</h2>
            <div className="w-16 h-px bg-oat-400 mx-auto" />
          </div>

          {queryParam && (
            <p className="text-center font-sans-elegant text-sm text-nude-600 mb-8">
              Resultados para "{queryParam}"
            </p>
          )}

          <div className="lg:grid lg:grid-cols-[220px_1fr] lg:gap-10 lg:items-start">
            {/* Sidebar filters */}
            <aside className="mb-10 lg:mb-0">
              <p className="font-sans-elegant text-xs text-nude-400 mb-3">
                Início &gt; Produtos
              </p>
              <div className="flex items-center justify-between mb-2">
                <h3 className="font-sans-elegant text-sm text-nude-800" style={{ fontWeight: 600 }}>
                  Filtrar por
                </h3>
                {hasActiveFilters ? (
                  <button
                    onClick={clearFilters}
                    className="font-sans-elegant text-[11px] text-oat-500 hover:text-oat-600 underline underline-offset-2"
                  >
                    Limpar
                  </button>
                ) : null}
              </div>

              <FilterSection title="Categorias">
                {categoryOptions.map((opt) => (
                  <FilterCheckbox
                    key={opt.name}
                    label={opt.name}
                    count={opt.count}
                    checked={selectedCategories.includes(opt.name)}
                    onChange={() => setSelectedCategories((prev) => toggleInSet(prev, opt.name))}
                  />
                ))}
              </FilterSection>

              {colorOptions.length > 0 && (
                <FilterSection title="Cor">
                  {colorOptions.map((opt) => (
                    <FilterCheckbox
                      key={opt.name}
                      label={opt.name}
                      count={opt.count}
                      checked={selectedColors.includes(opt.name)}
                      onChange={() => setSelectedColors((prev) => toggleInSet(prev, opt.name))}
                      swatch={opt.hex}
                    />
                  ))}
                </FilterSection>
              )}

              {sizeOptions.length > 0 && (
                <FilterSection title="Tamanho">
                  {sizeOptions.map((opt) => (
                    <FilterCheckbox
                      key={opt.name}
                      label={opt.name}
                      count={opt.count}
                      checked={selectedSizes.includes(opt.name)}
                      onChange={() => setSelectedSizes((prev) => toggleInSet(prev, opt.name))}
                    />
                  ))}
                </FilterSection>
              )}
            </aside>

            {/* Product grid */}
            <div>
              {visibleProducts.length === 0 ? (
                <p className="text-center font-sans-elegant text-sm text-nude-500">
                  Nenhum produto encontrado.
                </p>
              ) : (
                <div className="grid sm:grid-cols-2 xl:grid-cols-3 gap-x-6 gap-y-10">
                  {visibleProducts.map((product) => (
                    <ProductCard key={product.id} product={product} />
                  ))}
                </div>
              )}
            </div>
          </div>
        </div>
      </section>

      {/* CTA - Modelos Personalizados */}
      <section className="py-16 lg:py-20 bg-gradient-luxury">
        <Reveal className="max-w-2xl mx-auto px-6 lg:px-12 text-center">
          <p className="font-serif-elegant text-2xl md:text-3xl text-nude-800 mb-4" style={{ fontWeight: 500 }}>
            Não encontrou o que procurava?
          </p>
          <p className="font-sans-elegant text-sm md:text-base text-nude-600 mb-8" style={{ fontWeight: 300 }}>
            Temos muito mais opções guardadas com carinho para você
          </p>
          <a
            href={waLink('Olá! Vim pelo site da Divina Baby e quero ver outros modelos personalizados 💕')}
            target="_blank"
            rel="noopener noreferrer"
            className="btn-primary inline-block"
          >
            Venha ver outros modelos personalizados no WhatsApp
          </a>
        </Reveal>
      </section>

      <FloatingWhatsApp />
    </div>
  );
}

function FilterSection({
  title,
  children,
}: {
  title: string;
  children: ReactNode[];
}) {
  const [expanded, setExpanded] = useState(false);
  const items = Array.isArray(children) ? children : [children];
  const visible = expanded ? items : items.slice(0, 4);
  const hasMore = items.length > 4;

  return (
    <div className="py-4 border-b border-oat-100 last:border-b-0">
      <h4
        className="font-sans-elegant text-[11px] tracking-widest uppercase text-nude-500 mb-3"
        style={{ fontWeight: 600 }}
      >
        {title}
      </h4>
      <div className="space-y-2.5">{visible}</div>
      {hasMore && (
        <button
          onClick={() => setExpanded((v) => !v)}
          className="mt-2 font-sans-elegant text-xs text-oat-500 hover:text-oat-600 underline underline-offset-2"
        >
          {expanded ? 'Ver menos' : 'Ver mais'}
        </button>
      )}
    </div>
  );
}

function FilterCheckbox({
  label,
  count,
  checked,
  onChange,
  swatch,
}: {
  label: string;
  count: number;
  checked: boolean;
  onChange: () => void;
  swatch?: string;
}) {
  return (
    <label className="flex items-center gap-2.5 cursor-pointer group">
      <span className="relative shrink-0 w-4 h-4">
        <input
          type="checkbox"
          checked={checked}
          onChange={onChange}
          className="peer appearance-none w-4 h-4 rounded-full border border-oat-300 checked:bg-oat-500 checked:border-oat-500 transition-colors duration-200 cursor-pointer"
        />
        <svg
          viewBox="0 0 12 12"
          className="pointer-events-none absolute inset-0 w-4 h-4 p-[3px] text-white opacity-0 peer-checked:opacity-100 transition-opacity duration-200"
          fill="none"
        >
          <path d="M2 6l2.5 2.5L10 3" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" strokeLinejoin="round" />
        </svg>
      </span>
      {swatch && (
        <span
          className="w-3 h-3 rounded-full border border-oat-200 shrink-0"
          style={{ backgroundColor: swatch }}
        />
      )}
      <span
        className="font-sans-elegant text-sm text-nude-600 group-hover:text-oat-600 transition-colors duration-300"
        style={{ fontWeight: 300 }}
      >
        {label} ({count})
      </span>
    </label>
  );
}

export default Produtos;
