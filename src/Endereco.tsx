import { useState, FormEvent } from 'react';
import { useLocation, useNavigate, Link } from 'react-router-dom';
import { MapPin, ArrowRight, Check, Loader2, Truck } from 'lucide-react';
import Header from './Header';
import FloatingWhatsApp from './FloatingWhatsApp';
import { CartItem } from './CartContext';
import { ShippingAddress, ShippingOption } from './whatsapp';

function formatBRL(value: number): string {
  return value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
}

interface EnderecoState {
  items: CartItem[];
  subtotal: number;
}

const steps = ['Carrinho', 'Endereço', 'Pagamento', 'Confirmação'];

function Steps({ current }: { current: number }) {
  return (
    <div className="flex items-center justify-center gap-1.5 sm:gap-2 mb-10 flex-wrap">
      {steps.map((step, i) => (
        <div key={step} className="flex items-center gap-1.5 sm:gap-2">
          <div className="flex items-center gap-2">
            <span
              className={`w-7 h-7 rounded-full flex items-center justify-center font-sans-elegant text-xs shrink-0 transition-colors duration-300 ${
                i < current
                  ? 'bg-teal-600 text-white'
                  : i === current
                    ? 'bg-oat-500 text-white'
                    : 'bg-oat-200 text-nude-500'
              }`}
              style={{ fontWeight: 600 }}
            >
              {i < current ? <Check size={14} /> : i + 1}
            </span>
            <span
              className={`font-sans-elegant text-xs uppercase tracking-widest hidden sm:inline ${
                i <= current ? 'text-nude-800' : 'text-nude-500'
              }`}
              style={{ fontWeight: i === current ? 600 : 400 }}
            >
              {step}
            </span>
          </div>
          {i < steps.length - 1 && <div className={`w-4 sm:w-8 h-px ${i < current ? 'bg-teal-600' : 'bg-oat-300'}`} />}
        </div>
      ))}
    </div>
  );
}

const inputClass =
  'w-full bg-white border border-oat-300 rounded-sm px-4 py-2.5 font-sans-elegant text-sm text-nude-800 focus:outline-none focus:border-oat-500 transition-colors duration-300';
const labelClass = 'block font-sans-elegant text-xs uppercase tracking-widest text-nude-600 mb-1.5';

function Endereco() {
  const location = useLocation();
  const navigate = useNavigate();
  const state = location.state as EnderecoState | null;

  const [fullName, setFullName] = useState('');
  const [phone, setPhone] = useState('');
  const [cep, setCep] = useState('');
  const [street, setStreet] = useState('');
  const [number, setNumber] = useState('');
  const [complement, setComplement] = useState('');
  const [neighborhood, setNeighborhood] = useState('');
  const [city, setCity] = useState('');
  const [uf, setUf] = useState('');

  const [shippingOptions, setShippingOptions] = useState<ShippingOption[]>([]);
  const [selectedShippingId, setSelectedShippingId] = useState<number | null>(null);
  const [shippingLoading, setShippingLoading] = useState(false);
  const [shippingError, setShippingError] = useState('');

  if (!state || state.items.length === 0) {
    return (
      <div className="min-h-screen bg-cream-50">
        <Header />
        <section className="py-24 text-center px-6">
          <p className="font-sans-elegant text-nude-600 mb-6" style={{ fontWeight: 300 }}>
            Nenhum pedido em andamento.
          </p>
          <Link to="/produtos" className="btn-outline">
            Ver produtos
          </Link>
        </section>
        <FloatingWhatsApp />
      </div>
    );
  }

  const { items, subtotal } = state;
  const totalQuantity = items.reduce((sum, item) => sum + item.quantity, 0);
  const selectedShipping = shippingOptions.find((option) => option.id === selectedShippingId);

  const handleCalculateShipping = async () => {
    const digits = cep.replace(/\D/g, '');
    if (digits.length !== 8) {
      setShippingError('Informe um CEP válido.');
      return;
    }

    setShippingLoading(true);
    setShippingError('');
    setShippingOptions([]);
    setSelectedShippingId(null);

    try {
      const viaCepPromise = fetch(`https://viacep.com.br/ws/${digits}/json/`).then((r) => r.json());
      const quotePromise = fetch('/api/shipping-quote', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ cep: digits, quantity: totalQuantity }),
      }).then((r) => r.json());

      const [viaCep, quote] = await Promise.all([viaCepPromise, quotePromise]);

      if (!viaCep.erro) {
        setStreet(viaCep.logradouro ?? '');
        setNeighborhood(viaCep.bairro ?? '');
        setCity(viaCep.localidade ?? '');
        setUf(viaCep.uf ?? '');
      }

      if (quote.error || !quote.options?.length) {
        setShippingError(quote.error ?? 'Nenhuma opção de frete encontrada para esse CEP.');
      } else {
        setShippingOptions(quote.options);
        setSelectedShippingId(quote.options[0].id);
      }
    } catch {
      setShippingError('Não foi possível calcular o frete agora. Tente novamente.');
    } finally {
      setShippingLoading(false);
    }
  };

  const handleSubmit = (e: FormEvent) => {
    e.preventDefault();
    const address: ShippingAddress = {
      fullName: fullName.trim(),
      phone: phone.trim(),
      cep: cep.trim(),
      street: street.trim(),
      number: number.trim(),
      complement: complement.trim() || undefined,
      neighborhood: neighborhood.trim(),
      city: city.trim(),
      state: uf.trim(),
    };
    navigate('/pagamento', { state: { items, subtotal, address, shipping: selectedShipping } });
  };

  return (
    <div className="min-h-screen bg-cream-50">
      <Header />

      <section className="py-16 lg:py-24">
        <div className="max-w-2xl mx-auto px-6 lg:px-12">
          <Steps current={1} />

          <div className="text-center mb-10">
            <p className="section-subtitle mb-4">Finalizar Compra</p>
            <h1 className="section-title mb-2">Endereço de Entrega</h1>
            <p className="font-sans-elegant text-sm text-nude-600" style={{ fontWeight: 300 }}>
              Preencha seus dados para enviarmos seu pedido certinho.
            </p>
          </div>

          <div className="bg-white border border-oat-300/50 rounded-sm p-5 mb-8 shadow-soft flex items-center justify-between">
            <span className="font-sans-elegant text-sm text-nude-700" style={{ fontWeight: 400 }}>
              {items.length} {items.length === 1 ? 'item' : 'itens'} no pedido
            </span>
            <span className="font-serif-elegant text-lg text-nude-800" style={{ fontWeight: 500 }}>
              {formatBRL(subtotal)}
            </span>
          </div>

          <form onSubmit={handleSubmit} className="bg-white border border-oat-300/50 rounded-sm p-6 lg:p-8 shadow-soft space-y-5">
            <div className="flex items-center gap-2 mb-2">
              <MapPin size={16} strokeWidth={1.5} className="text-oat-500" />
              <p className="font-sans-elegant text-xs uppercase tracking-widest text-nude-700" style={{ fontWeight: 600 }}>
                Dados de entrega
              </p>
            </div>

            <div className="grid sm:grid-cols-2 gap-4">
              <div className="sm:col-span-2">
                <label className={labelClass}>Nome completo</label>
                <input required value={fullName} onChange={(e) => setFullName(e.target.value)} className={inputClass} placeholder="Seu nome completo" />
              </div>
              <div>
                <label className={labelClass}>Telefone / WhatsApp</label>
                <input required value={phone} onChange={(e) => setPhone(e.target.value)} className={inputClass} placeholder="(48) 99999-9999" />
              </div>
              <div>
                <label className={labelClass}>CEP</label>
                <div className="flex gap-2">
                  <input
                    required
                    value={cep}
                    onChange={(e) => setCep(e.target.value)}
                    className={inputClass}
                    placeholder="00000-000"
                  />
                  <button
                    type="button"
                    onClick={handleCalculateShipping}
                    disabled={shippingLoading}
                    className="shrink-0 inline-flex items-center gap-1.5 bg-oat-200 hover:bg-oat-300 disabled:opacity-60 text-nude-800 font-sans-elegant text-xs uppercase tracking-widest px-4 rounded-sm transition-colors duration-300"
                    style={{ fontWeight: 600 }}
                  >
                    {shippingLoading ? <Loader2 size={14} className="animate-spin" /> : <Truck size={14} strokeWidth={2} />}
                    Calcular
                  </button>
                </div>
              </div>
              <div className="sm:col-span-2">
                <label className={labelClass}>Rua</label>
                <input required value={street} onChange={(e) => setStreet(e.target.value)} className={inputClass} placeholder="Nome da rua" />
              </div>
              <div>
                <label className={labelClass}>Número</label>
                <input required value={number} onChange={(e) => setNumber(e.target.value)} className={inputClass} placeholder="123" />
              </div>
              <div>
                <label className={labelClass}>Complemento (opcional)</label>
                <input value={complement} onChange={(e) => setComplement(e.target.value)} className={inputClass} placeholder="Apto, bloco..." />
              </div>
              <div>
                <label className={labelClass}>Bairro</label>
                <input required value={neighborhood} onChange={(e) => setNeighborhood(e.target.value)} className={inputClass} placeholder="Seu bairro" />
              </div>
              <div>
                <label className={labelClass}>Cidade</label>
                <input required value={city} onChange={(e) => setCity(e.target.value)} className={inputClass} placeholder="Sua cidade" />
              </div>
              <div>
                <label className={labelClass}>Estado</label>
                <input required value={uf} onChange={(e) => setUf(e.target.value)} className={inputClass} placeholder="SC" maxLength={2} />
              </div>
            </div>

            {shippingError && (
              <p className="font-sans-elegant text-xs text-red-600" style={{ fontWeight: 400 }}>
                {shippingError}
              </p>
            )}

            {shippingOptions.length > 0 && (
              <div>
                <div className="flex items-center gap-2 mb-2">
                  <Truck size={16} strokeWidth={1.5} className="text-oat-500" />
                  <p className="font-sans-elegant text-xs uppercase tracking-widest text-nude-700" style={{ fontWeight: 600 }}>
                    Opções de frete
                  </p>
                </div>
                <div className="space-y-2">
                  {shippingOptions.map((option) => (
                    <label
                      key={option.id}
                      className={`flex items-center justify-between gap-3 p-3 rounded-sm border cursor-pointer transition-colors duration-300 ${
                        selectedShippingId === option.id ? 'border-oat-500 bg-oat-50' : 'border-oat-300 bg-white hover:border-oat-400'
                      }`}
                    >
                      <div className="flex items-center gap-3">
                        <input
                          type="radio"
                          name="shipping"
                          checked={selectedShippingId === option.id}
                          onChange={() => setSelectedShippingId(option.id)}
                          className="accent-oat-500"
                        />
                        <div>
                          <p className="font-sans-elegant text-sm text-nude-800" style={{ fontWeight: 500 }}>
                            {option.company} — {option.name}
                          </p>
                          {option.deliveryTime && (
                            <p className="font-sans-elegant text-xs text-nude-500" style={{ fontWeight: 300 }}>
                              Prazo: até {option.deliveryTime} {option.deliveryTime === 1 ? 'dia útil' : 'dias úteis'}
                            </p>
                          )}
                        </div>
                      </div>
                      <span className="font-sans-elegant text-sm text-nude-800 shrink-0" style={{ fontWeight: 600 }}>
                        {formatBRL(option.price)}
                      </span>
                    </label>
                  ))}
                </div>
              </div>
            )}

            <button
              type="submit"
              disabled={shippingOptions.length > 0 && !selectedShipping}
              className="w-full inline-flex items-center justify-center gap-2 bg-oat-500 hover:bg-oat-600 disabled:opacity-60 text-white font-sans-elegant text-sm uppercase tracking-widest px-8 py-3.5 rounded-sm shadow-soft transition-colors duration-300 mt-2"
              style={{ fontWeight: 600 }}
            >
              Continuar para pagamento
              <ArrowRight size={16} strokeWidth={2} />
            </button>
          </form>
        </div>
      </section>
    </div>
  );
}

export default Endereco;
