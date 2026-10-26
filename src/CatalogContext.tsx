import { createContext, useContext, useEffect, useState, ReactNode } from 'react';
import { Product } from './types/product';
import { supabase, isSupabaseConfigured } from './lib/supabase';
import { rowToProduct, ProductRow, CategoryRow, OptionRow } from './lib/catalog';
import {
  products as staticProducts,
  categories as staticCategories,
  categoryImages as staticCategoryImages,
} from './data/products';

interface Catalog {
  products: Product[];
  categories: string[];
  categoryImages: Record<string, string>;
}

interface CatalogContextValue extends Catalog {
  loading: boolean;
  getProductBySlug: (slug: string) => Product | undefined;
}

const staticCatalog: Catalog = {
  products: staticProducts,
  categories: staticCategories,
  categoryImages: staticCategoryImages,
};

const CatalogContext = createContext<CatalogContextValue | undefined>(undefined);

async function fetchCatalog(): Promise<Catalog | null> {
  const [productsRes, categoriesRes, colorsRes, themesRes] = await Promise.all([
    supabase.from('products').select('*').eq('active', true).order('sort_order').order('name'),
    supabase.from('categories').select('*').eq('active', true).order('sort_order'),
    supabase.from('bead_colors').select('*').eq('active', true).order('sort_order'),
    supabase.from('themes').select('*').eq('active', true).order('sort_order'),
  ]);

  const error = productsRes.error ?? categoriesRes.error ?? colorsRes.error ?? themesRes.error;
  if (error) throw error;

  const productRows = (productsRes.data ?? []) as ProductRow[];
  // Banco ainda vazio (seed não rodado): mantém o catálogo estático.
  if (productRows.length === 0) return null;

  const categoryRows = (categoriesRes.data ?? []) as CategoryRow[];
  const colors = (colorsRes.data ?? []) as OptionRow[];
  const themes = (themesRes.data ?? []) as OptionRow[];

  return {
    products: productRows.map((row) => rowToProduct(row, colors, themes)),
    categories: categoryRows.map((c) => c.name),
    categoryImages: Object.fromEntries(categoryRows.filter((c) => c.image).map((c) => [c.name, c.image as string])),
  };
}

export function CatalogProvider({ children }: { children: ReactNode }) {
  const [catalog, setCatalog] = useState<Catalog>(isSupabaseConfigured ? { products: [], categories: [], categoryImages: {} } : staticCatalog);
  const [loading, setLoading] = useState(isSupabaseConfigured);

  useEffect(() => {
    if (!isSupabaseConfigured) return;
    let cancelled = false;
    fetchCatalog()
      .then((data) => {
        if (!cancelled) setCatalog(data ?? staticCatalog);
      })
      .catch((err) => {
        console.error('Falha ao carregar o catálogo do Supabase, usando catálogo estático.', err);
        if (!cancelled) setCatalog(staticCatalog);
      })
      .finally(() => {
        if (!cancelled) setLoading(false);
      });
    return () => {
      cancelled = true;
    };
  }, []);

  const getProductBySlug = (slug: string) => catalog.products.find((p) => p.slug === slug);

  return (
    <CatalogContext.Provider value={{ ...catalog, loading, getProductBySlug }}>{children}</CatalogContext.Provider>
  );
}

export function useCatalog(): CatalogContextValue {
  const ctx = useContext(CatalogContext);
  if (!ctx) throw new Error('useCatalog must be used within a CatalogProvider');
  return ctx;
}
