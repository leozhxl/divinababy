import { waLink } from './whatsapp';

function WhatsAppIcon({ size = 28 }: { size?: number }) {
  return (
    <svg width={size} height={size} viewBox="0 0 24 24" fill="currentColor">
      <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.626.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347z" />
      <path d="M12.001 2.002c-5.514 0-9.998 4.484-9.998 9.998 0 1.762.462 3.483 1.34 4.997L2 22l5.135-1.345a9.965 9.965 0 0 0 4.866 1.24h.004c5.514 0 9.997-4.483 9.997-9.997 0-2.671-1.04-5.182-2.929-7.071a9.93 9.93 0 0 0-7.072-2.825zm0 18.187h-.003a8.19 8.19 0 0 1-4.174-1.144l-.299-.177-3.048.799.813-2.97-.194-.305a8.169 8.169 0 0 1-1.253-4.394c0-4.517 3.676-8.193 8.196-8.193a8.15 8.15 0 0 1 5.796 2.403 8.144 8.144 0 0 1 2.399 5.795c0 4.518-3.676 8.191-8.196 8.191z" />
    </svg>
  );
}

function FloatingWhatsApp({ message = 'Olá! Vim pelo site e gostaria de comprar um produto da Divina Baby 💕' }: { message?: string }) {
  return (
    <a
      href={waLink(message)}
      target="_blank"
      rel="noopener noreferrer"
      aria-label="Comprar pelo WhatsApp"
      className="fixed bottom-6 right-6 z-50 flex items-center justify-center w-14 h-14 rounded-full bg-[#25D366] text-white shadow-luxury hover:scale-110 transition-transform duration-300 animate-float"
    >
      <WhatsAppIcon />
    </a>
  );
}

export default FloatingWhatsApp;
