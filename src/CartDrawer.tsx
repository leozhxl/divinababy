import { Link } from 'react-router-dom';
import { X, Minus, Plus, Trash2, LogIn } from 'lucide-react';
import { useCart } from './CartContext';
import { useAuth } from './AuthContext';
import { waLink, buildOrderMessage } from './whatsapp';

function formatBRL(value: number): string {
  return value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
}

export default function CartDrawer() {
  const { items, isCartOpen, closeCart, updateQuantity, removeItem, subtotal } = useCart();
  const { user } = useAuth();

  return (
    <>
      <div
        className={`fixed inset-0 bg-nude-900/40 z-[60] transition-opacity duration-300 ${
          isCartOpen ? 'opacity-100 pointer-events-auto' : 'opacity-0 pointer-events-none'
        }`}
        onClick={closeCart}
      />
      <aside
        className={`fixed top-0 right-0 h-full w-full max-w-md bg-oat-100 z-[70] shadow-luxury transition-transform duration-500 flex flex-col ${
          isCartOpen ? 'translate-x-0' : 'translate-x-full'
        }`}
      >
        <div className="flex items-center justify-between px-6 py-5 border-b border-oat-300/40">
          <h2 className="font-serif-elegant text-2xl text-nude-800" style={{ fontWeight: 500 }}>
            Seu Carrinho
          </h2>
          <button onClick={closeCart} aria-label="Fechar carrinho" className="text-nude-700 hover:text-oat-500">
            <X size={22} strokeWidth={1.5} />
          </button>
        </div>

        {items.length === 0 ? (
          <div className="flex-1 flex flex-col items-center justify-center px-6 text-center">
            <p className="font-sans-elegant text-nude-600 mb-6" style={{ fontWeight: 300 }}>
              Seu carrinho está vazio.
            </p>
            <Link to="/produtos" onClick={closeCart} className="btn-outline">
              Ver produtos
            </Link>
          </div>
        ) : (
          <>
            <div className="flex-1 overflow-y-auto px-6 py-4 space-y-5">
              {items.map((line) => (
                <div key={`${line.productId}-${line.color ?? ''}-${line.size ?? ''}`} className="flex gap-4">
                  <div className="w-20 h-20 shrink-0 overflow-hidden rounded-sm bg-oat-200">
                    <img src={line.image} alt={line.name} className="w-full h-full object-cover" />
                  </div>
                  <div className="flex-1 min-w-0">
                    <p className="font-sans-elegant text-sm text-nude-800 truncate" style={{ fontWeight: 400 }}>
                      {line.name}
                    </p>
                    {(line.color || line.size) && (
                      <p className="font-sans-elegant text-xs text-nude-500" style={{ fontWeight: 300 }}>
                        {[line.color, line.size].filter(Boolean).join(' / ')}
                      </p>
                    )}
                    <p className="font-sans-elegant text-sm text-oat-600 mt-1" style={{ fontWeight: 500 }}>
                      {formatBRL(line.price * line.quantity)}
                    </p>
                    <div className="flex items-center gap-3 mt-2">
                      <button
                        onClick={() => updateQuantity(line.productId, line.quantity - 1, line.color, line.size)}
                        className="w-8 h-8 flex items-center justify-center border border-oat-300 text-nude-700 hover:bg-oat-200"
                        aria-label="Diminuir quantidade"
                      >
                        <Minus size={12} />
                      </button>
                      <span className="font-sans-elegant text-sm text-nude-800 w-4 text-center">{line.quantity}</span>
                      <button
                        onClick={() => updateQuantity(line.productId, line.quantity + 1, line.color, line.size)}
                        className="w-8 h-8 flex items-center justify-center border border-oat-300 text-nude-700 hover:bg-oat-200"
                        aria-label="Aumentar quantidade"
                      >
                        <Plus size={12} />
                      </button>
                      <button
                        onClick={() => removeItem(line.productId, line.color, line.size)}
                        className="ml-auto p-2 -m-2 text-nude-500 hover:text-oat-600"
                        aria-label="Remover item"
                      >
                        <Trash2 size={16} strokeWidth={1.5} />
                      </button>
                    </div>
                  </div>
                </div>
              ))}
            </div>

            <div className="px-6 py-5 border-t border-oat-300/40">
              <div className="flex items-center justify-between mb-4">
                <span className="font-sans-elegant text-sm text-nude-700 uppercase tracking-widest" style={{ fontWeight: 300 }}>
                  Subtotal
                </span>
                <span className="font-serif-elegant text-xl text-nude-800" style={{ fontWeight: 500 }}>
                  {formatBRL(subtotal)}
                </span>
              </div>
              {user ? (
                <a
                  href={waLink(buildOrderMessage(items.map((line) => ({ ...line }))))}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="btn-primary block text-center"
                >
                  Finalizar pedido no WhatsApp
                </a>
              ) : (
                <div className="space-y-3">
                  <p className="font-sans-elegant text-xs text-nude-600 text-center" style={{ fontWeight: 300 }}>
                    Faça login ou cadastre-se para finalizar a compra.
                  </p>
                  <Link
                    to="/login"
                    onClick={closeCart}
                    className="btn-primary flex items-center justify-center gap-2"
                  >
                    <LogIn size={16} strokeWidth={1.5} />
                    Entrar para comprar
                  </Link>
                  <Link
                    to="/cadastro"
                    onClick={closeCart}
                    className="btn-outline block text-center"
                  >
                    Criar conta
                  </Link>
                </div>
              )}
            </div>
          </>
        )}
      </aside>
    </>
  );
}
