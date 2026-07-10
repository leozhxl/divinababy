import { useState, FormEvent } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import Header from './Header';
import { useAuth } from './AuthContext';

function Login() {
  const { signIn } = useAuth();
  const navigate = useNavigate();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (e: FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError(null);
    const { error } = await signIn(email, password);
    setLoading(false);
    if (error) {
      setError(error === 'Invalid login credentials' ? 'E-mail ou senha incorretos.' : error);
      return;
    }
    navigate('/');
  };

  return (
    <div className="min-h-screen bg-cream-50">
      <Header />

      <section className="py-16 lg:py-24">
        <div className="max-w-md mx-auto px-6">
          <h1 className="section-title text-center mb-10">Entrar</h1>

          <form onSubmit={handleSubmit} className="space-y-5">
            <div>
              <label className="block font-sans-elegant text-xs uppercase tracking-widest text-nude-700 mb-2">
                E-mail
              </label>
              <input
                type="email"
                required
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                className="w-full bg-white border border-oat-200 rounded-sm px-4 py-3 font-sans-elegant text-sm text-nude-800 focus:outline-none focus:border-oat-400"
              />
            </div>

            <div>
              <label className="block font-sans-elegant text-xs uppercase tracking-widest text-nude-700 mb-2">
                Senha
              </label>
              <input
                type="password"
                required
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                className="w-full bg-white border border-oat-200 rounded-sm px-4 py-3 font-sans-elegant text-sm text-nude-800 focus:outline-none focus:border-oat-400"
              />
            </div>

            {error && (
              <p className="font-sans-elegant text-sm text-red-600">{error}</p>
            )}

            <button type="submit" disabled={loading} className="btn-primary w-full disabled:opacity-60">
              {loading ? 'Entrando...' : 'Entrar'}
            </button>
          </form>

          <p className="text-center font-sans-elegant text-sm text-nude-600 mt-8">
            Ainda não tem conta?{' '}
            <Link to="/cadastro" className="text-oat-600 hover:text-oat-700 underline">
              Cadastre-se
            </Link>
          </p>
        </div>
      </section>
    </div>
  );
}

export default Login;
