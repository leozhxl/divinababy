import { FormEvent, useEffect, useState } from 'react';
import { NavLink, Navigate, Route, Routes, Link } from 'react-router-dom';
import { LayoutDashboard, ShoppingBag, Package, FolderTree, Palette, Users, LogOut, ExternalLink } from 'lucide-react';
import { useAuth } from '../AuthContext';
import { supabase, isSupabaseConfigured } from '../lib/supabase';
import { Button, Card, ErrorMessage, Field, Input, Spinner } from './ui';
import Dashboard from './Dashboard';
import ProductsList from './ProductsList';
import ProductEditor from './ProductEditor';
import Categories from './Categories';
import Options from './Options';
import Orders from './Orders';
import OrderDetail from './OrderDetail';
import Customers from './Customers';

const navItems = [
  { to: '/admin', label: 'Dashboard', icon: LayoutDashboard, end: true },
  { to: '/admin/pedidos', label: 'Pedidos', icon: ShoppingBag },
  { to: '/admin/produtos', label: 'Produtos', icon: Package },
  { to: '/admin/categorias', label: 'Categorias', icon: FolderTree },
  { to: '/admin/cores-temas', label: 'Cores e Temas', icon: Palette },
  { to: '/admin/clientes', label: 'Clientes', icon: Users },
];

function AdminLogin() {
  const { signIn } = useAuth();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (e: FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError(null);
    const { error } = await signIn(email, password);
    if (error) setError('E-mail ou senha incorretos.');
    setLoading(false);
  };

  return (
    <div className="min-h-screen bg-cream-50 flex items-center justify-center px-4">
      <Card className="w-full max-w-sm p-8">
        <div className="text-center mb-6">
          <img src="/logo.jpeg" alt="Divina Baby" className="w-14 h-14 rounded-full mx-auto mb-3 object-cover" />
          <h1 className="font-serif-elegant text-2xl text-nude-800">Painel Divina Baby</h1>
        </div>
        <form onSubmit={handleSubmit} className="space-y-4">
          <ErrorMessage message={error} />
          <Field label="E-mail">
            <Input type="email" value={email} onChange={(e) => setEmail(e.target.value)} required autoComplete="email" />
          </Field>
          <Field label="Senha">
            <Input type="password" value={password} onChange={(e) => setPassword(e.target.value)} required autoComplete="current-password" />
          </Field>
          <Button type="submit" loading={loading} className="w-full">
            Entrar
          </Button>
        </form>
      </Card>
    </div>
  );
}

function Message({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <div className="min-h-screen bg-cream-50 flex items-center justify-center px-4">
      <Card className="w-full max-w-lg p-8 text-sm text-nude-700 space-y-3">
        <h1 className="font-serif-elegant text-2xl text-nude-800">{title}</h1>
        {children}
      </Card>
    </div>
  );
}

export default function AdminApp() {
  const { user, loading, signOut } = useAuth();
  const [isAdmin, setIsAdmin] = useState<boolean | null>(null);

  useEffect(() => {
    document.title = 'Painel | Divina Baby';
    const meta = document.createElement('meta');
    meta.name = 'robots';
    meta.content = 'noindex, nofollow';
    document.head.appendChild(meta);
    return () => meta.remove();
  }, []);

  useEffect(() => {
    if (!user) {
      setIsAdmin(null);
      return;
    }
    supabase.rpc('is_admin').then(({ data, error }) => setIsAdmin(!error && data === true));
  }, [user]);

  if (!isSupabaseConfigured) {
    return (
      <Message title="Supabase não configurado">
        <p>
          Preencha <code>VITE_SUPABASE_URL</code> e <code>VITE_SUPABASE_ANON_KEY</code> no arquivo <code>.env.local</code> (e nas
          variáveis de ambiente da Vercel) e rode os scripts da pasta <code>supabase/</code>. O passo a passo está no README.
        </p>
      </Message>
    );
  }

  if (loading || (user && isAdmin === null)) return <Spinner />;
  if (!user) return <AdminLogin />;

  if (!isAdmin) {
    return (
      <Message title="Acesso restrito">
        <p>
          A conta <strong>{user.email}</strong> não é administradora. Para liberar, rode no SQL Editor do Supabase:
        </p>
        <pre className="bg-oat-50 border border-oat-200 rounded p-3 text-xs whitespace-pre-wrap">
          {`insert into public.admins (user_id)\nselect id from auth.users where email = '${user.email}'\non conflict do nothing;`}
        </pre>
        <Button variant="secondary" onClick={signOut}>
          Sair
        </Button>
      </Message>
    );
  }

  return (
    <div className="min-h-screen bg-cream-50 lg:flex">
      <aside className="lg:w-60 lg:min-h-screen bg-white border-b lg:border-b-0 lg:border-r border-oat-200 lg:sticky lg:top-0 lg:h-screen flex flex-col">
        <div className="flex items-center gap-3 px-5 py-4">
          <img src="/logo.jpeg" alt="" className="w-9 h-9 rounded-full object-cover" />
          <div className="min-w-0">
            <p className="font-serif-elegant text-lg text-nude-800 leading-tight">Divina Baby</p>
            <p className="text-[11px] text-nude-400 truncate">{user.email}</p>
          </div>
        </div>
        <nav className="flex lg:flex-col gap-1 px-3 pb-3 lg:pb-0 overflow-x-auto">
          {navItems.map(({ to, label, icon: Icon, end }) => (
            <NavLink
              key={to}
              to={to}
              end={end}
              className={({ isActive }) =>
                `flex items-center gap-2.5 px-3 py-2 rounded-md text-sm whitespace-nowrap transition-colors ${
                  isActive ? 'bg-oat-100 text-oat-800 font-semibold' : 'text-nude-600 hover:bg-oat-50'
                }`
              }
            >
              <Icon size={17} strokeWidth={1.75} />
              {label}
            </NavLink>
          ))}
        </nav>
        <div className="hidden lg:flex flex-col gap-1 mt-auto p-3 border-t border-oat-100">
          <Link to="/" target="_blank" className="flex items-center gap-2.5 px-3 py-2 rounded-md text-sm text-nude-600 hover:bg-oat-50">
            <ExternalLink size={17} strokeWidth={1.75} />
            Ver loja
          </Link>
          <button onClick={signOut} className="flex items-center gap-2.5 px-3 py-2 rounded-md text-sm text-nude-600 hover:bg-oat-50">
            <LogOut size={17} strokeWidth={1.75} />
            Sair
          </button>
        </div>
      </aside>

      <main className="flex-1 min-w-0 px-4 sm:px-6 lg:px-10 py-6 lg:py-8 max-w-6xl">
        <Routes>
          <Route index element={<Dashboard />} />
          <Route path="pedidos" element={<Orders />} />
          <Route path="pedidos/:id" element={<OrderDetail />} />
          <Route path="produtos" element={<ProductsList />} />
          <Route path="produtos/novo" element={<ProductEditor />} />
          <Route path="produtos/:id" element={<ProductEditor />} />
          <Route path="categorias" element={<Categories />} />
          <Route path="cores-temas" element={<Options />} />
          <Route path="clientes" element={<Customers />} />
          <Route path="*" element={<Navigate to="/admin" replace />} />
        </Routes>
        <div className="lg:hidden mt-10 flex gap-4 text-sm text-nude-500">
          <Link to="/" target="_blank">Ver loja</Link>
          <button onClick={signOut}>Sair</button>
        </div>
      </main>
    </div>
  );
}
