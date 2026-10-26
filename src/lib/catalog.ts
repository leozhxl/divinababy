import { Product, ProductVariantOption } from '../types/product';

export interface ProductRow {
  id: string;
  slug: string;
  name: string;
  category: string;
  price: number;
  compare_at_price: number | null;
  pix_price: number | null;
  installments: number | null;
  alt_installments: number | null;
  alt_installment_amount: number | null;
  images: string[];
  image_position: string | null;
  image_fit: 'cover' | 'contain' | null;
  has_colors: boolean;
  has_themes: boolean;
  sizes: string[];
  description: string;
  badges: string[];
  active: boolean;
  sort_order: number;
  created_at?: string;
  updated_at?: string;
}

export interface CategoryRow {
  name: string;
  image: string | null;
  sort_order: number;
  active: boolean;
}

export interface OptionRow {
  id: number;
  name: string;
  hex?: string | null;
  image: string | null;
  sort_order: number;
  active: boolean;
}

function toOption(row: OptionRow): ProductVariantOption {
  return { name: row.name, hex: row.hex ?? undefined, image: row.image ?? undefined };
}

// Postgres numeric chega como string pelo PostgREST em alguns casos.
function toNumber(value: number | string | null | undefined): number | undefined {
  if (value === null || value === undefined || value === '') return undefined;
  const n = Number(value);
  return Number.isFinite(n) ? n : undefined;
}

export function rowToProduct(row: ProductRow, colors: OptionRow[], themes: OptionRow[]): Product {
  return {
    id: row.id,
    slug: row.slug,
    name: row.name,
    category: row.category,
    price: toNumber(row.price) ?? 0,
    compareAtPrice: toNumber(row.compare_at_price),
    pixPrice: toNumber(row.pix_price),
    installments: row.installments ?? undefined,
    altInstallments: row.alt_installments ?? undefined,
    altInstallmentAmount: toNumber(row.alt_installment_amount),
    images: row.images ?? [],
    imagePosition: row.image_position ?? undefined,
    imageFit: row.image_fit ?? undefined,
    colors: row.has_colors ? colors.map(toOption) : undefined,
    themes: row.has_themes ? themes.map(toOption) : undefined,
    sizes: row.sizes && row.sizes.length > 0 ? row.sizes : undefined,
    description: row.description ?? '',
    badges: row.badges && row.badges.length > 0 ? row.badges : undefined,
  };
}
