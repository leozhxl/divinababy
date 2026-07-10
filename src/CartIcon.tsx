import { ShoppingBag } from 'lucide-react';
import { useCart } from './CartContext';

export default function CartIcon({ className }: { className?: string }) {
  const { itemCount, openCart } = useCart();

  return (
    <button onClick={openCart} className={`relative ${className ?? ''}`} aria-label="Abrir carrinho">
      <ShoppingBag size={20} strokeWidth={1.5} />
      {itemCount > 0 && (
        <span className="absolute -top-2 -right-2 flex items-center justify-center w-4 h-4 rounded-full bg-oat-500 text-white text-[10px] font-sans-elegant">
          {itemCount}
        </span>
      )}
    </button>
  );
}
