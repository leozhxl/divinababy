import { useEffect, useState } from 'react';
import { ChevronLeft, ChevronRight } from 'lucide-react';

export default function HeroCarousel({ images, alt }: { images: string[]; alt: string }) {
  const [index, setIndex] = useState(0);

  useEffect(() => {
    if (images.length <= 1) return;
    const timer = setInterval(() => {
      setIndex((i) => (i + 1) % images.length);
    }, 4500);
    return () => clearInterval(timer);
  }, [images.length]);

  const goTo = (i: number) => setIndex((i + images.length) % images.length);

  return (
    <div className="absolute inset-4 rounded-sm overflow-hidden group">
      {images.map((src, i) => (
        <img
          key={src}
          src={src}
          alt={alt}
          className={`absolute inset-0 w-full h-full object-cover transition-[opacity,transform] ease-out ${
            i === index
              ? 'opacity-100 scale-110 duration-[4500ms]'
              : 'opacity-0 scale-100 duration-700'
          }`}
        />
      ))}

      {/* Soft vignette for depth */}
      <div className="absolute inset-0 pointer-events-none bg-gradient-to-t from-black/15 via-transparent to-black/5" />

      {images.length > 1 && (
        <>
          <button
            type="button"
            onClick={() => goTo(index - 1)}
            aria-label="Foto anterior"
            className="absolute left-2 top-1/2 -translate-y-1/2 w-7 h-7 flex items-center justify-center rounded-full bg-white/70 text-nude-800 opacity-0 group-hover:opacity-100 hover:bg-white/90 hover:scale-110 transition-all duration-300"
          >
            <ChevronLeft size={16} strokeWidth={1.5} />
          </button>
          <button
            type="button"
            onClick={() => goTo(index + 1)}
            aria-label="Próxima foto"
            className="absolute right-2 top-1/2 -translate-y-1/2 w-7 h-7 flex items-center justify-center rounded-full bg-white/70 text-nude-800 opacity-0 group-hover:opacity-100 hover:bg-white/90 hover:scale-110 transition-all duration-300"
          >
            <ChevronRight size={16} strokeWidth={1.5} />
          </button>

          <div className="absolute bottom-3 left-1/2 -translate-x-1/2 flex gap-1.5">
            {images.map((src, i) => (
              <button
                key={src}
                type="button"
                onClick={() => goTo(i)}
                aria-label={`Ir para foto ${i + 1}`}
                className={`h-1.5 rounded-full bg-white transition-all duration-300 ${
                  i === index ? 'w-5 opacity-100' : 'w-1.5 opacity-50 hover:opacity-80'
                }`}
              />
            ))}
          </div>
        </>
      )}
    </div>
  );
}
