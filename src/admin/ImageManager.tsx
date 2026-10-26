import { DragEvent, useRef, useState } from 'react';
import { ArrowLeft, ArrowRight, ImagePlus, Loader2, RefreshCw, Star, Trash2 } from 'lucide-react';
import { uploadImage } from './storage';

interface ImageManagerProps {
  images: string[];
  onChange: (images: string[]) => void;
  folder: string;
  onError: (message: string) => void;
}

export default function ImageManager({ images, onChange, folder, onError }: ImageManagerProps) {
  const [uploading, setUploading] = useState(0);
  const [dragOver, setDragOver] = useState(false);
  const [replacingIndex, setReplacingIndex] = useState<number | null>(null);
  const addInput = useRef<HTMLInputElement>(null);
  const replaceInput = useRef<HTMLInputElement>(null);
  // Uploads são assíncronos: usa sempre a lista mais recente ao concluir.
  const latestImages = useRef(images);
  latestImages.current = images;

  const addFiles = async (files: FileList | File[]) => {
    const list = Array.from(files).filter((f) => f.type.startsWith('image/'));
    if (list.length === 0) return;
    setUploading((n) => n + list.length);
    const uploaded: string[] = [];
    for (const file of list) {
      try {
        uploaded.push(await uploadImage(file, folder));
      } catch (err) {
        onError((err as Error).message);
      } finally {
        setUploading((n) => n - 1);
      }
    }
    if (uploaded.length) onChange([...latestImages.current, ...uploaded]);
  };

  const replaceAt = async (index: number, file: File) => {
    setUploading((n) => n + 1);
    try {
      const url = await uploadImage(file, folder);
      onChange(latestImages.current.map((img, i) => (i === index ? url : img)));
    } catch (err) {
      onError((err as Error).message);
    } finally {
      setUploading((n) => n - 1);
      setReplacingIndex(null);
    }
  };

  const move = (from: number, to: number) => {
    if (to < 0 || to >= images.length) return;
    const next = [...images];
    const [item] = next.splice(from, 1);
    next.splice(to, 0, item);
    onChange(next);
  };

  const handleDrop = (e: DragEvent) => {
    e.preventDefault();
    setDragOver(false);
    if (e.dataTransfer.files.length) addFiles(e.dataTransfer.files);
  };

  const iconButton = 'p-1.5 rounded bg-white/90 text-nude-700 hover:bg-white shadow-sm disabled:opacity-30';

  return (
    <div>
      <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3">
        {images.map((src, i) => (
          <div key={`${src}-${i}`} className="relative group aspect-square rounded-md overflow-hidden border border-oat-200 bg-oat-50">
            <img src={src} alt={`Foto ${i + 1}`} className="w-full h-full object-cover" />
            {i === 0 && (
              <span className="absolute top-1.5 left-1.5 bg-oat-600 text-white text-[10px] font-semibold uppercase tracking-wider px-1.5 py-0.5 rounded">
                Principal
              </span>
            )}
            <div className="absolute inset-x-0 bottom-0 flex justify-center gap-1 p-1.5 bg-gradient-to-t from-black/40 to-transparent opacity-100 sm:opacity-0 sm:group-hover:opacity-100 transition-opacity">
              <button type="button" title="Mover para a esquerda" className={iconButton} disabled={i === 0} onClick={() => move(i, i - 1)}>
                <ArrowLeft size={14} />
              </button>
              {i !== 0 && (
                <button type="button" title="Tornar principal" className={iconButton} onClick={() => move(i, 0)}>
                  <Star size={14} />
                </button>
              )}
              <button
                type="button"
                title="Trocar foto"
                className={iconButton}
                onClick={() => {
                  setReplacingIndex(i);
                  replaceInput.current?.click();
                }}
              >
                {replacingIndex === i ? <Loader2 size={14} className="animate-spin" /> : <RefreshCw size={14} />}
              </button>
              <button
                type="button"
                title="Remover foto"
                className={`${iconButton} text-red-600`}
                onClick={() => onChange(images.filter((_, j) => j !== i))}
              >
                <Trash2 size={14} />
              </button>
              <button
                type="button"
                title="Mover para a direita"
                className={iconButton}
                disabled={i === images.length - 1}
                onClick={() => move(i, i + 1)}
              >
                <ArrowRight size={14} />
              </button>
            </div>
          </div>
        ))}

        <button
          type="button"
          onClick={() => addInput.current?.click()}
          onDragOver={(e) => {
            e.preventDefault();
            setDragOver(true);
          }}
          onDragLeave={() => setDragOver(false)}
          onDrop={handleDrop}
          className={`aspect-square rounded-md border-2 border-dashed flex flex-col items-center justify-center gap-1.5 text-xs text-nude-500 transition-colors ${
            dragOver ? 'border-oat-500 bg-oat-50' : 'border-oat-300 hover:border-oat-500 hover:bg-oat-50'
          }`}
        >
          {uploading > 0 ? (
            <>
              <Loader2 size={22} className="animate-spin text-oat-500" />
              Enviando {uploading}...
            </>
          ) : (
            <>
              <ImagePlus size={22} className="text-oat-500" />
              Adicionar fotos
              <span className="text-[10px] text-nude-400">ou arraste aqui</span>
            </>
          )}
        </button>
      </div>

      <input
        ref={addInput}
        type="file"
        accept="image/*"
        multiple
        className="hidden"
        onChange={(e) => {
          if (e.target.files) addFiles(e.target.files);
          e.target.value = '';
        }}
      />
      <input
        ref={replaceInput}
        type="file"
        accept="image/*"
        className="hidden"
        onChange={(e) => {
          const file = e.target.files?.[0];
          if (file && replacingIndex !== null) replaceAt(replacingIndex, file);
          else setReplacingIndex(null);
          e.target.value = '';
        }}
      />
      <p className="text-xs text-nude-400 mt-2">
        A primeira foto é a que aparece na vitrine. Fotos grandes são reduzidas automaticamente.
      </p>
    </div>
  );
}

/** Campo de uma única imagem (categorias, cores e temas). */
export function SingleImageField({
  value,
  onChange,
  folder,
  onError,
  size = 'w-16 h-16',
}: {
  value: string | null;
  onChange: (url: string) => void;
  folder: string;
  onError: (message: string) => void;
  size?: string;
}) {
  const [uploading, setUploading] = useState(false);
  const input = useRef<HTMLInputElement>(null);

  return (
    <>
      <button
        type="button"
        title={value ? 'Trocar imagem' : 'Adicionar imagem'}
        onClick={() => input.current?.click()}
        className={`${size} shrink-0 rounded-md overflow-hidden border border-oat-200 bg-oat-50 flex items-center justify-center hover:ring-2 hover:ring-oat-300`}
      >
        {uploading ? (
          <Loader2 size={18} className="animate-spin text-oat-500" />
        ) : value ? (
          <img src={value} alt="" className="w-full h-full object-cover" />
        ) : (
          <ImagePlus size={18} className="text-oat-400" />
        )}
      </button>
      <input
        ref={input}
        type="file"
        accept="image/*"
        className="hidden"
        onChange={async (e) => {
          const file = e.target.files?.[0];
          e.target.value = '';
          if (!file) return;
          setUploading(true);
          try {
            onChange(await uploadImage(file, folder));
          } catch (err) {
            onError((err as Error).message);
          } finally {
            setUploading(false);
          }
        }}
      />
    </>
  );
}
