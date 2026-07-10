import { Link } from 'react-router-dom';
import { Product } from './types/product';
import Reveal from './Reveal';

function formatBRL(value: number): string {
  return value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
}

export default function ProductCard({ product }: { product: Product }) {
  const installment = product.price / 6;
  const pixPrice = product.price * 0.95;
  const discountPct = product.compareAtPrice
    ? Math.round(100 - (product.price / product.compareAtPrice) * 100)
    : null;
  const hasFreeShipping = product.badges?.includes('Frete grátis');

  return (
    <Reveal className="group">
      <Link to={`/produto/${product.slug}`}>
        <div className="relative aspect-square rounded-sm overflow-hidden bg-cream-100 mb-4">
          <img
            src={product.images[0]}
            alt={product.name}
            className="absolute inset-0 w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
          />
          {discountPct !== null && (
            <span className="absolute top-3 left-3 bg-oat-600 text-white font-sans-elegant text-xs px-2 py-1" style={{ fontWeight: 500 }}>
              -{discountPct}%
            </span>
          )}
          {hasFreeShipping && (
            <span className="absolute top-3 right-3 bg-white/90 text-nude-700 font-sans-elegant text-[10px] tracking-widest uppercase px-2 py-1" style={{ fontWeight: 500 }}>
              Grátis
            </span>
          )}
        </div>

        <p className="font-sans-elegant text-[11px] tracking-widest uppercase text-nude-500 mb-1" style={{ fontWeight: 400 }}>
          {product.category}
        </p>

        <h3 className="font-sans-elegant text-sm text-nude-800 mb-2" style={{ fontWeight: 500 }}>
          {product.name}
        </h3>

        <div>
          {product.compareAtPrice && (
            <p className="font-sans-elegant text-xs text-nude-400 line-through" style={{ fontWeight: 300 }}>
              {formatBRL(product.compareAtPrice)}
            </p>
          )}
          <p className="font-sans-elegant text-lg text-nude-900" style={{ fontWeight: 600 }}>
            {formatBRL(product.price)}
          </p>
          <p className="font-sans-elegant text-xs text-oat-600" style={{ fontWeight: 400 }}>
            {formatBRL(pixPrice)} no Pix
          </p>
          <p className="font-sans-elegant text-xs text-nude-500" style={{ fontWeight: 300 }}>
            ou 6x de {formatBRL(installment)} sem juros
          </p>
        </div>
      </Link>
    </Reveal>
  );
}
