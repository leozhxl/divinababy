import { useState, FormEvent } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { Search, User, ShoppingBag, LogOut } from 'lucide-react';
import { useCart } from './CartContext';
import { useAuth } from './AuthContext';

function formatBRL(value: number): string {
  return value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
}

const navLinks = [
  { label: 'Início', to: '/' },
  { label: 'Produtos', to: '/produtos' },
  { label: 'Contato', to: '/contato' },
  { label: 'Depoimentos', to: '/depoimentos' },
  { label: 'Trocas, Devoluções e Garantia', to: '/trocas-devolucoes' },
  { label: 'Política de Privacidade', to: '/privacidade' },
  { label: 'Quem Somos', to: '/#sobre' },
];

export default function Header() {
  const { itemCount, subtotal, openCart } = useCart();
  const { user, profile, signOut } = useAuth();
  const [query, setQuery] = useState('');
  const [showAccountMenu, setShowAccountMenu] = useState(false);
  const navigate = useNavigate();

  const firstName = profile?.name?.split(' ')[0] || user?.email?.split('@')[0];

  const handleSignOut = async () => {
    setShowAccountMenu(false);
    await signOut();
    navigate('/');
  };

  const handleSearch = (e: FormEvent) => {
    e.preventDefault();
    navigate(`/produtos${query.trim() ? `?q=${encodeURIComponent(query.trim())}` : ''}`);
  };

  return (
    <div className="sticky top-0 z-50">
      {/* Main row: logo, search, login/cart */}
      <div className="bg-white shadow-soft">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-12 py-3 sm:py-4 flex flex-wrap sm:flex-nowrap items-center gap-3 sm:gap-6">
          <Link to="/" className="flex items-center gap-2 sm:gap-3 shrink-0">
            <img src="/logo.jpeg" alt="Divina Baby" className="w-9 h-9 sm:w-12 sm:h-12 rounded-full object-cover" />
            <span className="font-serif-elegant text-lg sm:text-xl text-nude-800 hidden sm:inline" style={{ fontWeight: 500 }}>
              Divina Baby
            </span>
          </Link>

          <div className="flex items-center gap-3 sm:gap-6 ml-auto sm:ml-0 order-2 sm:order-3 shrink-0">
            {user ? (
              <div
                className="relative"
                onMouseEnter={() => setShowAccountMenu(true)}
                onMouseLeave={() => setShowAccountMenu(false)}
              >
                <button
                  onClick={() => setShowAccountMenu((v) => !v)}
                  aria-expanded={showAccountMenu}
                  aria-label="Minha conta"
                  className="flex items-center gap-2 text-nude-700 hover:text-oat-500 transition-colors duration-300"
                >
                  <span className="w-9 h-9 rounded-full border border-oat-300 flex items-center justify-center shrink-0">
                    <User size={16} strokeWidth={1.5} />
                  </span>
                  <span className="font-sans-elegant text-xs leading-tight text-left hidden md:inline" style={{ fontWeight: 400 }}>
                    Olá,<br />{firstName}
                  </span>
                </button>
                {showAccountMenu && (
                  <div className="absolute top-full right-0 bg-white shadow-luxury rounded-sm py-2 min-w-[180px] z-50">
                    <button
                      onClick={handleSignOut}
                      className="w-full flex items-center gap-2 px-4 py-2 font-sans-elegant text-xs text-nude-700 hover:bg-oat-100 hover:text-oat-600 transition-colors duration-300"
                    >
                      <LogOut size={14} strokeWidth={1.5} />
                      Sair
                    </button>
                  </div>
                )}
              </div>
            ) : (
              <Link
                to="/login"
                aria-label="Login ou cadastro"
                className="flex items-center gap-2 text-nude-700 hover:text-oat-500 transition-colors duration-300"
              >
                <span className="w-9 h-9 rounded-full border border-oat-300 flex items-center justify-center shrink-0">
                  <User size={16} strokeWidth={1.5} />
                </span>
                <span className="font-sans-elegant text-xs leading-tight text-left hidden md:inline" style={{ fontWeight: 400 }}>
                  Login /<br />Cadastre-se
                </span>
              </Link>
            )}

            <button
              onClick={openCart}
              aria-label={`Abrir carrinho, ${itemCount} ${itemCount === 1 ? 'item' : 'itens'}`}
              className="flex items-center gap-2 text-nude-700 hover:text-oat-500 transition-colors duration-300"
            >
              <span className="relative w-9 h-9 rounded-full border border-oat-300 flex items-center justify-center shrink-0">
                <ShoppingBag size={16} strokeWidth={1.5} />
                {itemCount > 0 && (
                  <span className="md:hidden absolute -top-1.5 -right-1.5 w-4 h-4 rounded-full bg-oat-500 text-white text-[10px] flex items-center justify-center">
                    {itemCount}
                  </span>
                )}
              </span>
              <span className="font-sans-elegant text-xs leading-tight text-left hidden md:inline" style={{ fontWeight: 400 }}>
                Carrinho ({itemCount})<br />{formatBRL(subtotal)}
              </span>
            </button>
          </div>

          <form onSubmit={handleSearch} className="flex w-full sm:flex-1 order-3 sm:order-2">
            <input
              type="text"
              value={query}
              onChange={(e) => setQuery(e.target.value)}
              placeholder="O que você está buscando?"
              className="min-w-0 flex-1 bg-cream-100 border border-oat-200 rounded-l-sm px-4 py-2 font-sans-elegant text-sm text-nude-800 focus:outline-none focus:border-oat-400"
            />
            <button
              type="submit"
              aria-label="Buscar"
              className="bg-oat-300 hover:bg-oat-400 transition-colors duration-300 px-4 rounded-r-sm flex items-center justify-center shrink-0"
            >
              <Search size={18} strokeWidth={1.5} className="text-nude-800" />
            </button>
          </form>
        </div>
      </div>

      {/* Category nav bar */}
      <nav className="bg-oat-600">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-12 flex flex-wrap items-center gap-x-4 sm:gap-x-8 gap-y-2 py-3">
          {navLinks.map((link) => (
            <Link
              key={link.label}
              to={link.to}
              className="font-sans-elegant text-xs tracking-widest uppercase text-white/90 hover:text-white transition-colors duration-300"
              style={{ fontWeight: 500 }}
            >
              {link.label}
            </Link>
          ))}
        </div>
      </nav>
    </div>
  );
}
