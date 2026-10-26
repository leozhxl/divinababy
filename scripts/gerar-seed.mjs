// Gera supabase/seed.sql a partir do catálogo estático em src/data/products.ts.
// Uso: npm run seed:gerar
// Depois cole o conteúdo de supabase/seed.sql no SQL Editor do Supabase (depois do admin.sql).
// Itens que já existem no banco não são sobrescritos (on conflict do nothing).
import { build } from 'esbuild';
import { writeFileSync } from 'node:fs';
import { fileURLToPath } from 'node:url';

const root = fileURLToPath(new URL('..', import.meta.url));

const result = await build({
  entryPoints: [`${root}src/data/products.ts`],
  bundle: true,
  format: 'esm',
  platform: 'node',
  write: false,
});
const code = result.outputFiles[0].text;
const catalog = await import(`data:text/javascript;base64,${Buffer.from(code).toString('base64')}`);

const { products, categories, categoryImages, BEAD_COLORS, THEMES } = catalog;

function str(value) {
  if (value === undefined || value === null || value === '') return 'null';
  return `'${String(value).replace(/'/g, "''")}'`;
}

function num(value) {
  return typeof value === 'number' && Number.isFinite(value) ? String(value) : 'null';
}

function textArray(values) {
  if (!values || values.length === 0) return "'{}'::text[]";
  return `array[${values.map(str).join(', ')}]::text[]`;
}

const lines = ['-- Gerado por scripts/gerar-seed.mjs — não edite à mão.', 'begin;', ''];

const allCategories = [...categories];
for (const p of products) {
  if (!allCategories.includes(p.category)) allCategories.push(p.category);
}

// Categorias usadas por produtos mas fora da lista do site entram inativas (não aparecem nos filtros).
lines.push('insert into public.categories (name, image, sort_order, active) values');
lines.push(
  allCategories
    .map((c, i) => `  (${str(c)}, ${str(categoryImages[c])}, ${i * 10}, ${categories.includes(c)})`)
    .join(',\n') +
    '\non conflict (name) do nothing;',
  ''
);

lines.push('insert into public.bead_colors (name, hex, image, sort_order) values');
lines.push(
  BEAD_COLORS.map((c, i) => `  (${str(c.name)}, ${str(c.hex)}, ${str(c.image)}, ${i * 10})`).join(',\n') +
    '\non conflict (name) do nothing;',
  ''
);

lines.push('insert into public.themes (name, image, sort_order) values');
lines.push(
  THEMES.map((t, i) => `  (${str(t.name)}, ${str(t.image)}, ${i * 10})`).join(',\n') +
    '\non conflict (name) do nothing;',
  ''
);

const seenSlugs = new Set();
const productRows = [];
for (const [i, p] of products.entries()) {
  let slug = p.slug;
  if (seenSlugs.has(slug)) slug = `${slug}-${p.id}`;
  seenSlugs.add(slug);
  productRows.push(
    `  (${[
      str(p.id),
      str(slug),
      str(p.name),
      str(p.category),
      num(p.price),
      num(p.compareAtPrice),
      num(p.pixPrice),
      num(p.installments),
      num(p.altInstallments),
      num(p.altInstallmentAmount),
      textArray(p.images),
      str(p.imagePosition),
      str(p.imageFit),
      p.colors && p.colors.length > 0 ? 'true' : 'false',
      p.themes && p.themes.length > 0 ? 'true' : 'false',
      textArray(p.sizes),
      str(p.description ?? ''),
      textArray(p.badges),
      String(i * 10),
    ].join(', ')})`
  );
}

lines.push(
  'insert into public.products (id, slug, name, category, price, compare_at_price, pix_price, installments, alt_installments, alt_installment_amount, images, image_position, image_fit, has_colors, has_themes, sizes, description, badges, sort_order) values'
);
lines.push(productRows.join(',\n') + '\non conflict (id) do nothing;', '', 'commit;', '');

writeFileSync(`${root}supabase/seed.sql`, lines.join('\n'));
console.log(
  `supabase/seed.sql gerado: ${allCategories.length} categorias, ${BEAD_COLORS.length} cores, ${THEMES.length} temas, ${products.length} produtos.`
);
