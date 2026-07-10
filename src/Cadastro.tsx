import { useState, FormEvent } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import Header from './Header';
import { useAuth } from './AuthContext';

function Cadastro() {
  const { signUp } = useAuth();
  const navigate = useNavigate();
  const [name, setName] = useState('');
  const [phone, setPhone] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);
  const [done, setDone] = useState(false);

  const handleSubmit = async (e: FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError(null);
    const { error } = await signUp(email, password, name, phone);
    setLoading(false);
    if (error) {
      setError(
        error.includes('already registered') ? 'Este e-mail já está cadastrado.' : error
      );
      return;
    }
    setDone(true);
  };

  if (done) {
    return (
      <div className="min-h-screen bg-cream-50">
        <Header />
        <section className="py-24 text-center px-6">
          <p className="font-serif-elegant text-2xl text-nude-800 mb-4" style={{ fontWeight: 500 }}>
            Cadastro realizado!
          </p>
          <p className="font-sans-elegant text-sm text-nude-600 mb-8">
            Verifique seu e-mail para confirmar a conta e depois faça login.
          </p>
          <button onClick={() => navigate('/login')} className="btn-primary inline-block">
            Ir para login
          </button>
        </section>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-cream-50">
      <Header />

      <section className="py-16 lg:py-24">
        <div className="max-w-md mx-auto px-6">
          <h1 className="section-title text-center mb-10">Criar Conta</h1>

          <form onSubmit={handleSubmit} className="space-y-5">
            <div>
              <label className="block font-sans-elegant text-xs uppercase tracking-widest text-nude-700 mb-2">
                Nome
              </label>
              <input
                type="text"
                required
                value={name}
                onChange={(e) => setName(e.target.value)}
                className="w-full bg-white border border-oat-200 rounded-sm px-4 py-3 font-sans-elegant text-sm text-nude-800 focus:outline-none focus:border-oat-400"
              />
            </div>

            <div>
              <label className="block font-sans-elegant text-xs uppercase tracking-widest text-nude-700 mb-2">
                Telefone / WhatsApp
              </label>
              <input
                type="tel"
                value={phone}
                onChange={(e) => setPhone(e.target.value)}
                placeholder="(48) 99999-9999"
                className="w-full bg-white border border-oat-200 rounded-sm px-4 py-3 font-sans-elegant text-sm text-nude-800 focus:outline-none focus:border-oat-400"
              />
            </div>

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
                minLength={6}
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                className="w-full bg-white border border-oat-200 rounded-sm px-4 py-3 font-sans-elegant text-sm text-nude-800 focus:outline-none focus:border-oat-400"
              />
            </div>

            {error && (
              <p className="font-sans-elegant text-sm text-red-600">{error}</p>
            )}

            <button type="submit" disabled={loading} className="btn-primary w-full disabled:opacity-60">
              {loading ? 'Criando conta...' : 'Criar conta'}
            </button>
          </form>

          <p className="text-center font-sans-elegant text-sm text-nude-600 mt-8">
            Já tem conta?{' '}
            <Link to="/login" className="text-oat-600 hover:text-oat-700 underline">
              Entrar
            </Link>
          </p>
        </div>
      </section>
    </div>
  );
}

export default Cadastro;
