import { useState } from 'react';
import { Product } from './types/product';
import { Link, useNavigate, useParams } from 'react-router-dom';
import { ArrowLeft, Sparkles, Check, Heart } from 'lucide-react';
import { useCatalog } from './CatalogContext';
import { useCart } from './CartContext';
import FloatingWhatsApp from './FloatingWhatsApp';
import Header from './Header';
import Reveal from './Reveal';

function formatBRL(value: number): string {
  return value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
}

interface DescriptionSection {
  heading: string | null;
  lines: string[];
}

function parseDescription(description: string): { intro: string; sections: DescriptionSection[] } {
  const blocks = description.split('\n\n').map((b) => b.trim()).filter(Boolean);
  if (blocks.length <= 1) {
    return { intro: description, sections: [] };
  }

  const intro = blocks[0];
  const sections: DescriptionSection[] = blocks.slice(1).map((block) => {
    const lines = block.split('\n').map((l) => l.trim()).filter(Boolean);
    const isListLine = (l: string) => l.startsWith('-') || l.startsWith('•') || l.startsWith('🤍');
    if (lines.length > 1 && !isListLine(lines[0])) {
      return { heading: lines[0], lines: lines.slice(1) };
    }
    return { heading: null, lines };
  });

  return { intro, sections };
}

function ProductDescription({ description }: { description: string }) {
  const { intro, sections } = parseDescription(description);
  const [showDetails, setShowDetails] = useState(false);

  if (sections.length === 0) {
    return (
      <p className="font-sans-elegant text-sm text-nude-600 leading-relaxed mb-8 whitespace-pre-line" style={{ fontWeight: 300 }}>
        {intro}
      </p>
    );
  }

  return (
    <div className="mb-8">
      <p className="font-sans-elegant text-base text-nude-700 leading-relaxed mb-6" style={{ fontWeight: 500 }}>
        {intro}
      </p>
      <button
        type="button"
        onClick={() => setShowDetails((v) => !v)}
        className="btn-outline mb-5"
      >
        {showDetails ? 'Ocultar características' : 'Ver características'}
      </button>
      {showDetails && (
      <div className="columns-1 sm:columns-2 gap-5">
        {sections.map((section, i) => (
          <div
            key={i}
            className="break-inside-avoid mb-5 bg-oat-50 border border-oat-200 rounded-sm px-4 py-4"
          >
            {section.heading && (
              <p
                className="font-sans-elegant text-xs tracking-[0.15em] uppercase text-oat-700 mb-2.5 flex items-center gap-1.5"
                style={{ fontWeight: 700 }}
              >
                <Sparkles size={13} strokeWidth={2} className="text-oat-500 shrink-0" />
                {section.heading}
              </p>
            )}
            <ul className="space-y-1.5">
              {section.lines.map((line, j) => {
                const isBullet = line.startsWith('-') || line.startsWith('•');
                const isHeart = line.startsWith('🤍');
                const clean = isHeart
                  ? line.slice('🤍'.length).trim()
                  : line.replace(/^[-•]\s*/, '');
                return (
                  <li
                    key={j}
                    className="font-sans-elegant text-sm text-nude-600 leading-relaxed flex items-start gap-2"
                    style={{ fontWeight: 300 }}
                  >
                    {isBullet && <Check size={14} strokeWidth={2} className="text-oat-500 shrink-0 mt-0.5" />}
                    {isHeart && <Heart size={13} strokeWidth={2} fill="currentColor" className="text-oat-400 shrink-0 mt-0.5" />}
                    <span>{clean}</span>
                  </li>
                );
              })}
            </ul>
          </div>
        ))}
      </div>
      )}
    </div>
  );
}

function ThemePicker({
  themes,
  selectedThemes,
  onToggle,
}: {
  themes: { name: string; image?: string }[];
  selectedThemes: string[];
  onToggle: (name: string) => void;
}) {
  const [hovered, setHovered] = useState<{ name: string; image?: string } | null>(null);

  return (
    <div className="grid grid-cols-5 sm:grid-cols-7 gap-2.5">
      {themes.map((theme) => {
        const isSelected = selectedThemes.includes(theme.name);
        return (
          <div key={theme.name} className="relative">
            <button
              type="button"
              onClick={() => onToggle(theme.name)}
              onMouseEnter={() => setHovered(theme)}
              onMouseLeave={() => setHovered(null)}
              onFocus={() => setHovered(theme)}
              onBlur={() => setHovered(null)}
              aria-label={theme.name}
              aria-pressed={isSelected}
              title={theme.name}
              className={`aspect-square w-full rounded-md bg-white shadow-md p-1.5 border-2 transition-all duration-200 overflow-hidden ${
                isSelected ? 'border-green-600' : 'border-transparent hover:border-oat-300'
              }`}
            >
              {theme.image ? (
                <img src={theme.image} alt={theme.name} className="block w-full h-full rounded-sm object-cover" />
              ) : (
                <span className="flex items-center justify-center w-full h-full rounded-sm bg-cream-100 font-sans-elegant text-[10px] text-nude-700 text-center leading-tight">
                  {theme.name}
                </span>
              )}
            </button>
            {isSelected && (
              <span className="absolute -top-1.5 -right-1.5 w-5 h-5 rounded-full bg-green-600 flex items-center justify-center shadow-md">
                <Check size={12} strokeWidth={3} className="text-white" />
              </span>
            )}
            {hovered?.name === theme.name && <SwatchPreview item={theme} />}
          </div>
        );
      })}
    </div>
  );
}

function SwatchPreview({ item }: { item: { name: string; image?: string } }) {
  if (!item.image) return null;

  return (
    <div className="absolute z-50 bottom-full left-1/2 -translate-x-1/2 mb-2 pointer-events-none">
      <div className="bg-white rounded-sm shadow-xl p-3 w-48">
        <img src={item.image} alt={item.name} className="w-full aspect-square object-cover rounded-sm" />
        <p
          className="font-sans-elegant text-xs text-nude-800 text-center mt-2 leading-tight"
          style={{ fontWeight: 500 }}
        >
          {item.name.replace(' — ', ' ')}
        </p>
      </div>
    </div>
  );
}

function ProductPage() {
  const { slug } = useParams<{ slug: string }>();
  const { getProductBySlug, loading } = useCatalog();
  const product = slug ? getProductBySlug(slug) : undefined;

  if (loading) {
    return (
      <div className="min-h-screen bg-cream-50">
        <Header />
        <p className="py-24 text-center font-sans-elegant text-sm text-nude-500">Carregando produto...</p>
      </div>
    );
  }

  if (!product) {
    return (
      <div className="min-h-screen bg-cream-50 flex flex-col items-center justify-center px-6 text-center">
        <p className="font-serif-elegant text-2xl text-nude-800 mb-6" style={{ fontWeight: 500 }}>
          Produto não encontrado
        </p>
        <Link to="/produtos" className="btn-outline">
          Voltar ao catálogo
        </Link>
      </div>
    );
  }

  return <ProductDetail key={product.id} product={product} />;
}

function ProductDetail({ product }: { product: Product }) {
  const { addItem, openCart } = useCart();
  const navigate = useNavigate();

  const [selectedColors, setSelectedColors] = useState<string[]>(
    product.colors?.[0] ? [product.colors[0].name] : []
  );
  const [selectedSize, setSelectedSize] = useState<string | undefined>(product.sizes?.[0]);
  const [selectedThemes, setSelectedThemes] = useState<string[]>(
    product.themes?.[0] ? [product.themes[0].name] : []
  );
  const [quantity, setQuantity] = useState(1);
  const [showThemes, setShowThemes] = useState(false);
  const [showColors, setShowColors] = useState(false);
  const [hoveredColor, setHoveredColor] = useState<{ name: string; image?: string; hex?: string } | null>(null);
  const [personalizedName, setPersonalizedName] = useState('');
  const [nameError, setNameError] = useState(false);

  const installmentCount = product.installments ?? 6;
  const installment = product.price / installmentCount;
  const pixPrice = product.pixPrice ?? product.price * 0.95;
  const discountPct = product.compareAtPrice
    ? Math.round(100 - (product.price / product.compareAtPrice) * 100)
    : null;
  const isPersonalized = /personalizad/i.test(product.name);

  const toggleColor = (name: string) => {
    setSelectedColors((prev) =>
      prev.includes(name) ? prev.filter((c) => c !== name) : [...prev, name]
    );
  };

  const toggleTheme = (name: string) => {
    setSelectedThemes((prev) =>
      prev.includes(name) ? prev.filter((t) => t !== name) : [...prev, name]
    );
  };

  const handleAddToCart = () => {
    if (isPersonalized && !personalizedName.trim()) {
      setNameError(true);
      return;
    }
    addItem(product, {
      color: selectedColors.length > 0 ? selectedColors.join(' + ') : undefined,
      size: selectedSize,
      theme: selectedThemes.length > 0 ? selectedThemes.join(' + ') : undefined,
      personalizedName: isPersonalized ? personalizedName.trim() : undefined,
      quantity,
    });
    openCart();
  };

  return (
    <div className="min-h-screen bg-cream-50">
      <Header />

      <section className="py-16 lg:py-24">
        <div className="max-w-6xl mx-auto px-6 lg:px-12 mb-6">
          <button
            type="button"
            onClick={() => navigate(-1)}
            className="inline-flex items-center gap-2 font-sans-elegant text-xs tracking-[0.2em] uppercase text-nude-700 hover:text-oat-500 transition-colors duration-300"
          >
            <ArrowLeft size={16} strokeWidth={1.5} />
            Voltar
          </button>
        </div>
        <div className="max-w-6xl mx-auto px-6 lg:px-12 grid lg:grid-cols-2 gap-12 lg:gap-16 items-start">
          <Reveal>
            <div className="relative aspect-[4/5] rounded-sm overflow-hidden bg-cream-100">
              <img
                src={product.images[0]}
                alt={product.name}
                className={`absolute inset-0 w-full h-full ${product.imageFit === 'contain' ? 'object-contain' : 'object-cover'}`}
                style={product.imagePosition ? { objectPosition: product.imagePosition } : undefined}
              />
              {discountPct !== null && (
                <span className="absolute top-4 left-4 bg-oat-600 text-white font-sans-elegant text-xs px-3 py-1" style={{ fontWeight: 500 }}>
                  -{discountPct}%
                </span>
              )}
            </div>

          </Reveal>

          <Reveal>
            <p className="font-sans-elegant text-xs tracking-widest uppercase text-nude-500 mb-3" style={{ fontWeight: 400 }}>
              {product.category}
            </p>
            <h2 className="font-sans-elegant text-2xl lg:text-3xl text-nude-800 mb-4" style={{ fontWeight: 600 }}>
              {product.name}
            </h2>

            <div className="mb-6">
              {product.compareAtPrice && (
                <p className="font-sans-elegant text-base text-nude-400 line-through" style={{ fontWeight: 300 }}>
                  {formatBRL(product.compareAtPrice)}
                </p>
              )}
              <p className="font-sans-elegant text-3xl text-nude-900" style={{ fontWeight: 700 }}>
                {formatBRL(product.price)}
              </p>
              <p className="font-sans-elegant text-sm text-oat-600 mt-1" style={{ fontWeight: 500 }}>
                {formatBRL(pixPrice)} à vista no Pix
              </p>
              <p className="font-sans-elegant text-sm text-nude-500" style={{ fontWeight: 300 }}>
                ou {installmentCount}x de {formatBRL(installment)} sem juros
              </p>
              {product.altInstallments && product.altInstallmentAmount && (
                <p className="font-sans-elegant text-sm text-nude-500" style={{ fontWeight: 300 }}>
                  ou {product.altInstallments}x de {formatBRL(product.altInstallmentAmount)} no link de pagamento
                </p>
              )}
            </div>

            {product.badges && product.badges.length > 0 && (
              <div className="flex flex-wrap gap-2 mb-6">
                {product.badges.map((badge) => (
                  <span
                    key={badge}
                    className="font-sans-elegant text-xs tracking-widest uppercase text-oat-600 border border-oat-300 px-3 py-1"
                    style={{ fontWeight: 400 }}
                  >
                    {badge}
                  </span>
                ))}
              </div>
            )}

            <ProductDescription description={product.description} />

            {product.themes && product.themes.length > 0 && (
              <div className="mb-6">
                <p className="font-sans-elegant text-xs tracking-widest uppercase text-nude-700 mb-3" style={{ fontWeight: 400 }}>
                  Tema{selectedThemes.length > 1 ? 's' : ''}: {selectedThemes.map((t) => t.replace(' — ', ' ')).join(' + ') || '—'}
                </p>
                <button
                  type="button"
                  onClick={() => setShowThemes((v) => !v)}
                  className="btn-outline mb-3"
                >
                  {showThemes ? 'Ocultar temas' : 'Escolher temas'}
                </button>
                {showThemes && (
                  <>
                    <p className="font-sans-elegant text-xs text-nude-500 mb-2" style={{ fontWeight: 300 }}>
                      Você pode selecionar mais de um tema.
                    </p>
                    <ThemePicker
                      themes={product.themes}
                      selectedThemes={selectedThemes}
                      onToggle={toggleTheme}
                    />
                  </>
                )}
              </div>
            )}

            {product.colors && product.colors.length > 0 && !product.sizes && (
              <div className="mb-6">
                <p className="font-sans-elegant text-xs tracking-widest uppercase text-nude-700 mb-3" style={{ fontWeight: 400 }}>
                  Cor{selectedColors.length > 1 ? 'es' : ''}: {selectedColors.join(' + ') || '—'}
                </p>
                <button
                  type="button"
                  onClick={() => setShowColors((v) => !v)}
                  className="btn-outline mb-3"
                >
                  {showColors ? 'Ocultar cores' : 'Escolher cores'}
                </button>
                {showColors && (
                  <>
                    <p className="font-sans-elegant text-xs text-nude-500 mb-2" style={{ fontWeight: 300 }}>
                      Você pode selecionar mais de uma cor.
                    </p>
                    <div className="grid grid-cols-5 sm:grid-cols-7 gap-2.5">
                      {product.colors.map((color) => {
                        const isSelected = selectedColors.includes(color.name);
                        return (
                          <div key={color.name} className="relative">
                            <button
                              type="button"
                              onClick={() => toggleColor(color.name)}
                              onMouseEnter={() => setHoveredColor(color)}
                              onMouseLeave={() => setHoveredColor(null)}
                              onFocus={() => setHoveredColor(color)}
                              onBlur={() => setHoveredColor(null)}
                              aria-label={color.name}
                              aria-pressed={isSelected}
                              title={color.name}
                              className={`aspect-square w-full rounded-md bg-white shadow-md p-1.5 border-2 transition-all duration-200 overflow-hidden ${
                                isSelected ? 'border-green-600' : 'border-transparent hover:border-oat-300'
                              }`}
                            >
                              {color.image ? (
                                <img
                                  src={color.image}
                                  alt={color.name}
                                  className="block w-full h-full rounded-sm object-cover"
                                />
                              ) : (
                                <span
                                  className="block w-full h-full rounded-sm"
                                  style={{ backgroundColor: color.hex }}
                                />
                              )}
                            </button>
                            {isSelected && (
                              <span className="absolute -top-1.5 -right-1.5 w-5 h-5 rounded-full bg-green-600 flex items-center justify-center shadow-md">
                                <Check size={12} strokeWidth={3} className="text-white" />
                              </span>
                            )}
                            {hoveredColor?.name === color.name && <SwatchPreview item={color} />}
                          </div>
                        );
                      })}
                    </div>
                  </>
                )}
              </div>
            )}

            {product.sizes && product.sizes.length > 0 && (
              <div className="mb-6">
                <p className="font-sans-elegant text-xs tracking-widest uppercase text-nude-700 mb-3" style={{ fontWeight: 400 }}>
                  Tamanho
                </p>
                <div className="flex gap-3">
                  {product.sizes.map((size) => (
                    <button
                      key={size}
                      onClick={() => setSelectedSize(size)}
                      className={`px-4 py-2 border font-sans-elegant text-sm transition-colors duration-300 ${
                        selectedSize === size
                          ? 'border-oat-500 bg-oat-400 text-white'
                          : 'border-oat-300 text-nude-700 hover:border-oat-500'
                      }`}
                    >
                      {size}
                    </button>
                  ))}
                </div>
              </div>
            )}

            {isPersonalized && (
              <div className="mb-6">
                <p className="font-sans-elegant text-xs tracking-widest uppercase text-nude-700 mb-3" style={{ fontWeight: 400 }}>
                  Nome para personalização
                </p>
                <input
                  type="text"
                  value={personalizedName}
                  onChange={(e) => {
                    setPersonalizedName(e.target.value);
                    if (nameError) setNameError(false);
                  }}
                  placeholder="Digite o nome do bebê"
                  maxLength={20}
                  className={`w-full sm:max-w-xs px-4 py-2.5 border font-sans-elegant text-sm text-nude-800 bg-white transition-colors duration-300 focus:outline-none ${
                    nameError ? 'border-red-400' : 'border-oat-300 focus:border-oat-500'
                  }`}
                />
                {nameError && (
                  <p className="font-sans-elegant text-xs text-red-500 mt-1.5" style={{ fontWeight: 400 }}>
                    Digite o nome para personalizar este produto.
                  </p>
                )}
              </div>
            )}

            <div className="mb-8">
              <p className="font-sans-elegant text-xs tracking-widest uppercase text-nude-700 mb-3" style={{ fontWeight: 400 }}>
                Quantidade
              </p>
              <div className="flex items-center gap-4">
                <button
                  onClick={() => setQuantity((q) => Math.max(1, q - 1))}
                  className="w-9 h-9 flex items-center justify-center border border-oat-300 text-nude-700 hover:bg-oat-200"
                  aria-label="Diminuir quantidade"
                >
                  −
                </button>
                <span className="font-sans-elegant text-lg text-nude-800 w-6 text-center">{quantity}</span>
                <button
                  onClick={() => setQuantity((q) => q + 1)}
                  className="w-9 h-9 flex items-center justify-center border border-oat-300 text-nude-700 hover:bg-oat-200"
                  aria-label="Aumentar quantidade"
                >
                  +
                </button>
              </div>
            </div>

            <button onClick={handleAddToCart} className="btn-primary w-full lg:w-auto">
              Adicionar ao carrinho
            </button>
          </Reveal>
        </div>
      </section>

      <FloatingWhatsApp
        message={`Olá! Tenho interesse no produto "${product.name}" da Divina Baby 💕`}
      />
    </div>
  );
}

export default ProductPage;
