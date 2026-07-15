import { useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { ArrowLeft, Sparkles, Check, Heart, X } from 'lucide-react';
import { getProductBySlug } from './data/products';
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
  selectedTheme,
  onSelect,
  onPreview,
}: {
  themes: { name: string; image?: string }[];
  selectedTheme: string | undefined;
  onSelect: (name: string) => void;
  onPreview: (item: { name: string; image?: string }) => void;
}) {
  return (
    <div className="grid grid-cols-5 sm:grid-cols-7 gap-2.5">
      {themes.map((theme) => (
        <button
          key={theme.name}
          type="button"
          onClick={() => {
            onSelect(theme.name);
            onPreview(theme);
          }}
          aria-label={theme.name}
          title={theme.name}
          className={`aspect-square rounded-md bg-white shadow-md p-1.5 border-2 transition-all duration-200 overflow-hidden ${
            selectedTheme === theme.name ? 'border-nude-900' : 'border-transparent hover:border-oat-300'
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
      ))}
    </div>
  );
}

function PreviewLightbox({
  item,
  onClose,
}: {
  item: { name: string; image?: string } | null;
  onClose: () => void;
}) {
  if (!item || !item.image) return null;

  return (
    <div
      className="fixed inset-0 z-50 flex items-center justify-center bg-black/70 px-6"
      onClick={onClose}
    >
      <div
        className="relative bg-white rounded-sm p-4 max-w-sm w-full"
        onClick={(e) => e.stopPropagation()}
      >
        <button
          type="button"
          onClick={onClose}
          aria-label="Fechar"
          className="absolute -top-3 -right-3 w-8 h-8 rounded-full bg-white shadow-md flex items-center justify-center text-nude-700 hover:text-nude-900"
        >
          <X size={18} strokeWidth={2} />
        </button>
        <img src={item.image} alt={item.name} className="w-full aspect-square object-cover rounded-sm" />
        <p className="font-sans-elegant text-sm text-nude-800 text-center mt-3" style={{ fontWeight: 500 }}>
          {item.name.replace(' — ', ' ')}
        </p>
      </div>
    </div>
  );
}

function ProductPage() {
  const { slug } = useParams<{ slug: string }>();
  const product = slug ? getProductBySlug(slug) : undefined;
  const { addItem, openCart } = useCart();

  const [selectedColor, setSelectedColor] = useState<string | undefined>(product?.colors?.[0]?.name);
  const [selectedSize, setSelectedSize] = useState<string | undefined>(product?.sizes?.[0]);
  const [selectedTheme, setSelectedTheme] = useState<string | undefined>(product?.themes?.[0]?.name);
  const [quantity, setQuantity] = useState(1);
  const [showThemes, setShowThemes] = useState(false);
  const [showColors, setShowColors] = useState(false);
  const [previewItem, setPreviewItem] = useState<{ name: string; image?: string } | null>(null);

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

  const installmentCount = product.installments ?? 6;
  const installment = product.price / installmentCount;
  const pixPrice = product.pixPrice ?? product.price * 0.95;
  const discountPct = product.compareAtPrice
    ? Math.round(100 - (product.price / product.compareAtPrice) * 100)
    : null;

  const handleAddToCart = () => {
    addItem(product, { color: selectedColor, size: selectedSize, theme: selectedTheme, quantity });
    openCart();
  };

  return (
    <div className="min-h-screen bg-cream-50">
      <Header />

      <section className="py-16 lg:py-24">
        <div className="max-w-6xl mx-auto px-6 lg:px-12 mb-6">
          <Link
            to="/produtos"
            className="inline-flex items-center gap-2 font-sans-elegant text-xs tracking-[0.2em] uppercase text-nude-700 hover:text-oat-500 transition-colors duration-300"
          >
            <ArrowLeft size={16} strokeWidth={1.5} />
            Voltar
          </Link>
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

            {product.name.includes('Personalizado') && product.themes && product.themes.length > 0 && (
              <div className="mb-6">
                <p className="font-sans-elegant text-xs tracking-widest uppercase text-nude-700 mb-3" style={{ fontWeight: 400 }}>
                  Tema: {selectedTheme?.replace(' — ', ' ')}
                </p>
                <button
                  type="button"
                  onClick={() => setShowThemes((v) => !v)}
                  className="btn-outline mb-3"
                >
                  {showThemes ? 'Ocultar temas' : 'Escolher tema'}
                </button>
                {showThemes && (
                  <ThemePicker
                    themes={product.themes}
                    selectedTheme={selectedTheme}
                    onSelect={setSelectedTheme}
                    onPreview={setPreviewItem}
                  />
                )}
              </div>
            )}

            {product.name.includes('Personalizado') && product.colors && product.colors.length > 0 && (
              <div className="mb-6">
                <p className="font-sans-elegant text-xs tracking-widest uppercase text-nude-700 mb-3" style={{ fontWeight: 400 }}>
                  Cor: {selectedColor}
                </p>
                <button
                  type="button"
                  onClick={() => setShowColors((v) => !v)}
                  className="btn-outline mb-3"
                >
                  {showColors ? 'Ocultar cores' : 'Escolher cor'}
                </button>
                {showColors && (
                  <div className="grid grid-cols-5 sm:grid-cols-7 gap-2.5">
                    {product.colors.map((color) => (
                      <button
                        key={color.name}
                        onClick={() => {
                          setSelectedColor(color.name);
                          setPreviewItem(color);
                        }}
                        aria-label={color.name}
                        title={color.name}
                        className={`aspect-square rounded-md bg-white shadow-md p-1.5 border-2 transition-all duration-200 overflow-hidden ${
                          selectedColor === color.name ? 'border-nude-900' : 'border-transparent hover:border-oat-300'
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
                    ))}
                  </div>
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

      <PreviewLightbox item={previewItem} onClose={() => setPreviewItem(null)} />
    </div>
  );
}

export default ProductPage;
