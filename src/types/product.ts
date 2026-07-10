export interface ProductVariantOption {
  name: string;
  hex?: string;
  image?: string;
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
  themes?: string[];
  description: string;
  badges?: string[];
}
