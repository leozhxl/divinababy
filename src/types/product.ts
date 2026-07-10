export interface ProductVariantOption {
  name: string;
  hex?: string;
}

export interface Product {
  id: string;
  slug: string;
  name: string;
  category: string;
  price: number;
  compareAtPrice?: number;
  images: string[];
  colors?: ProductVariantOption[];
  sizes?: string[];
  description: string;
  badges?: string[];
}
