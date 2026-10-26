import { supabase } from '../lib/supabase';

const BUCKET = 'produtos';
const MAX_SIZE = 1600;
const PUBLIC_PREFIX = `/storage/v1/object/public/${BUCKET}/`;

/** Reduz fotos grandes (ex.: do celular/WhatsApp) para no máximo 1600px, em JPEG. */
async function resizeImage(file: File): Promise<Blob> {
  if (!file.type.startsWith('image/') || file.type === 'image/gif' || file.type === 'image/svg+xml') return file;
  const bitmap = await createImageBitmap(file);
  const scale = Math.min(1, MAX_SIZE / Math.max(bitmap.width, bitmap.height));
  const canvas = document.createElement('canvas');
  canvas.width = Math.round(bitmap.width * scale);
  canvas.height = Math.round(bitmap.height * scale);
  const ctx = canvas.getContext('2d');
  if (!ctx) return file;
  ctx.drawImage(bitmap, 0, 0, canvas.width, canvas.height);
  bitmap.close();
  const blob = await new Promise<Blob | null>((resolve) => canvas.toBlob(resolve, 'image/jpeg', 0.85));
  return blob ?? file;
}

/** Envia uma imagem para o Storage e devolve a URL pública. */
export async function uploadImage(file: File, folder: string): Promise<string> {
  const blob = await resizeImage(file);
  const ext = blob.type === 'image/jpeg' ? 'jpg' : (file.name.split('.').pop() ?? 'jpg').toLowerCase();
  const path = `${folder}/${Date.now()}-${Math.random().toString(36).slice(2, 8)}.${ext}`;
  const { error } = await supabase.storage.from(BUCKET).upload(path, blob, {
    contentType: blob.type || file.type,
    cacheControl: '31536000',
  });
  if (error) throw new Error(`Falha ao enviar a foto: ${error.message}`);
  return supabase.storage.from(BUCKET).getPublicUrl(path).data.publicUrl;
}

/** Apaga do Storage as imagens enviadas pelo painel (ignora as que estão na pasta public do site). */
export async function deleteStorageImages(urls: string[]): Promise<void> {
  const paths = urls
    .filter((url) => url.includes(PUBLIC_PREFIX))
    .map((url) => decodeURIComponent(url.split(PUBLIC_PREFIX)[1]));
  if (paths.length === 0) return;
  const { error } = await supabase.storage.from(BUCKET).remove(paths);
  if (error) console.warn('Não foi possível apagar fotos antigas do Storage.', error);
}

/**
 * Apaga fotos de produto que deixaram de ser usadas. Chamar depois de salvar/excluir:
 * fotos ainda usadas por outro produto (ex.: um produto duplicado) são mantidas.
 */
export async function deleteUnusedProductImages(urls: string[]): Promise<void> {
  const candidates = urls.filter((url) => url.includes(PUBLIC_PREFIX));
  if (candidates.length === 0) return;
  const { data, error } = await supabase.from('products').select('images').overlaps('images', candidates);
  if (error) return;
  const stillUsed = new Set((data ?? []).flatMap((row) => row.images as string[]));
  await deleteStorageImages(candidates.filter((url) => !stillUsed.has(url)));
}
