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
  pixPrice?: number;
  installments?: number;
  altInstallments?: number;
  altInstallmentAmount?: number;
  images: string[];
  imagePosition?: string;
  imageFit?: 'cover' | 'contain';
  colors?: ProductVariantOption[];
  sizes?: string[];
  themes?: string[];
  description: string;
  badges?: string[];
}
