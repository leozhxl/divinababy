import { useState } from 'react';
import { useLocation, Link, Navigate } from 'react-router-dom';
import { QRCodeSVG } from 'qrcode.react';
import { Copy, Check, MessageCircle, ShoppingBag, QrCode, ShieldCheck, MapPin } from 'lucide-react';
import Header from './Header';
import FloatingWhatsApp from './FloatingWhatsApp';
import { waLink, buildOrderMessage, ShippingAddress, ShippingOption } from './whatsapp';
import { buildPixPayload } from './pix';
import { CartItem } from './CartContext';

function formatBRL(value: number): string {
  return value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
}

interface PagamentoState {
  items: CartItem[];
  subtotal: number;
  address?: ShippingAddress;
  shipping?: ShippingOption;
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

function Pagamento() {
  const location = useLocation();
  const state = location.state as PagamentoState | null;
  const [copied, setCopied] = useState(false);
  const [confirmed, setConfirmed] = useState(false);

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

  if (!state.address) {
    return <Navigate to="/endereco" state={{ items: state.items, subtotal: state.subtotal }} replace />;
  }

  const { items, subtotal, shipping } = state;
  const address = state.address;
  const total = subtotal + (shipping?.price ?? 0);
  const pixPayload = buildPixPayload(total);

  const handleCopy = async () => {
    await navigator.clipboard.writeText(pixPayload);
    setCopied(true);
    setTimeout(() => setCopied(false), 2500);
  };

  return (
    <div className="min-h-screen bg-cream-50">
      <Header />

      <section className="py-16 lg:py-24">
        <div className="max-w-2xl mx-auto px-6 lg:px-12">
          <Steps current={confirmed ? 3 : 2} />

          <div className="text-center">
            <p className="section-subtitle mb-4">Finalizar Compra</p>
            <h1 className="section-title mb-2">Pague com Pix</h1>
            <p className="font-sans-elegant text-sm text-nude-600 mb-10" style={{ fontWeight: 300 }}>
              Escaneie o QR Code ou copie o código abaixo no app do seu banco.
            </p>
          </div>

          {/* Order summary */}
          <div className="bg-white border border-oat-300/50 rounded-sm p-5 mb-10 shadow-soft">
            <div className="flex items-center gap-2 mb-4">
              <ShoppingBag size={16} strokeWidth={1.5} className="text-oat-500" />
              <p className="font-sans-elegant text-xs uppercase tracking-widest text-nude-700" style={{ fontWeight: 600 }}>
                Resumo do pedido
              </p>
            </div>
            <div className="space-y-3">
              {items.map((line) => (
                <div
                  key={`${line.productId}-${line.color ?? ''}-${line.size ?? ''}-${line.theme ?? ''}`}
                  className="flex items-center gap-3"
                >
                  <div className="w-14 h-14 shrink-0 overflow-hidden rounded-sm bg-oat-100">
                    <img src={line.image} alt={line.name} className="w-full h-full object-cover" />
                  </div>
                  <div className="flex-1 min-w-0 text-left">
                    <p className="font-sans-elegant text-sm text-nude-800 truncate" style={{ fontWeight: 400 }}>
                      {line.name}
                    </p>
                    {(line.color || line.size || line.theme) && (
                      <p className="font-sans-elegant text-xs text-nude-500" style={{ fontWeight: 300 }}>
                        {[line.color, line.theme, line.size].filter(Boolean).join(' / ')} · Qtd: {line.quantity}
                      </p>
                    )}
                  </div>
                  <p className="font-sans-elegant text-sm text-nude-800 shrink-0" style={{ fontWeight: 500 }}>
                    {formatBRL(line.price * line.quantity)}
                  </p>
                </div>
              ))}
            </div>
            <div className="flex items-center justify-between mt-4 pt-4 border-t border-oat-300/40">
              <span className="font-sans-elegant text-sm text-nude-600" style={{ fontWeight: 400 }}>
                Subtotal
              </span>
              <span className="font-sans-elegant text-sm text-nude-800" style={{ fontWeight: 500 }}>
                {formatBRL(subtotal)}
              </span>
            </div>
            {shipping && (
              <div className="flex items-center justify-between mt-1.5">
                <span className="font-sans-elegant text-sm text-nude-600" style={{ fontWeight: 400 }}>
                  Frete ({shipping.company} — {shipping.name})
                </span>
                <span className="font-sans-elegant text-sm text-nude-800" style={{ fontWeight: 500 }}>
                  {formatBRL(shipping.price)}
                </span>
              </div>
            )}
            <div className="flex items-center justify-between mt-3 pt-3 border-t border-oat-300/40">
              <span className="font-sans-elegant text-sm text-nude-700 uppercase tracking-widest" style={{ fontWeight: 500 }}>
                Total
              </span>
              <span className="font-serif-elegant text-xl text-nude-800" style={{ fontWeight: 500 }}>
                {formatBRL(total)}
              </span>
            </div>
          </div>

          {/* Address summary */}
          <div className="bg-white border border-oat-300/50 rounded-sm p-5 mb-10 shadow-soft text-left">
            <div className="flex items-center gap-2 mb-3">
              <MapPin size={16} strokeWidth={1.5} className="text-oat-500" />
              <p className="font-sans-elegant text-xs uppercase tracking-widest text-nude-700" style={{ fontWeight: 600 }}>
                Endereço de entrega
              </p>
            </div>
            <p className="font-sans-elegant text-sm text-nude-800" style={{ fontWeight: 400 }}>
              {address.fullName} — {address.phone}
            </p>
            <p className="font-sans-elegant text-sm text-nude-600" style={{ fontWeight: 300 }}>
              {address.street}, {address.number}
              {address.complement ? ` — ${address.complement}` : ''}
            </p>
            <p className="font-sans-elegant text-sm text-nude-600" style={{ fontWeight: 300 }}>
              {address.neighborhood} — {address.city}/{address.state} · CEP {address.cep}
            </p>
          </div>

          <div className="text-center">
            <div className="relative bg-white border border-oat-300/50 rounded-sm p-8 shadow-soft inline-block mb-6">
              <div className="absolute -top-3 left-1/2 -translate-x-1/2 flex items-center gap-1.5 bg-teal-600 text-white text-[10px] font-sans-elegant uppercase tracking-widest px-3 py-1 rounded-full shadow-soft" style={{ fontWeight: 600 }}>
                <QrCode size={12} strokeWidth={2} />
                Pix
              </div>
              <QRCodeSVG value={pixPayload} size={220} />
            </div>

            <p className="font-serif-elegant text-2xl text-nude-800 mb-8" style={{ fontWeight: 500 }}>
              {formatBRL(total)}
            </p>

            <div className="bg-oat-100 border border-oat-300/50 rounded-sm p-4 mb-8 text-left">
              <div className="flex items-center justify-between gap-3 mb-2">
                <p className="font-sans-elegant text-xs uppercase tracking-widest text-nude-700" style={{ fontWeight: 600 }}>
                  Pix Copia e Cola
                </p>
                <button
                  type="button"
                  onClick={handleCopy}
                  className={`inline-flex items-center gap-1.5 font-sans-elegant text-xs uppercase tracking-widest px-3 py-1.5 rounded-sm transition-colors duration-300 shrink-0 ${
                    copied ? 'bg-teal-600 text-white' : 'bg-white border border-oat-300 text-nude-700 hover:border-oat-400'
                  }`}
                  style={{ fontWeight: 600 }}
                >
                  {copied ? <Check size={13} strokeWidth={2} /> : <Copy size={13} strokeWidth={2} />}
                  {copied ? 'Copiado' : 'Copiar'}
                </button>
              </div>
              <p
                onClick={(e) => {
                  const selection = window.getSelection();
                  const range = document.createRange();
                  range.selectNodeContents(e.currentTarget);
                  selection?.removeAllRanges();
                  selection?.addRange(range);
                }}
                className="font-mono text-[11px] leading-relaxed text-nude-500 break-all cursor-text select-all"
              >
                {pixPayload}
              </p>
            </div>

            <div className="border-t border-oat-300/40 pt-8">
              <div className="flex items-center justify-center gap-2 mb-2">
                <ShieldCheck size={16} strokeWidth={1.5} className="text-teal-600" />
                <p className="font-sans-elegant text-sm text-nude-700" style={{ fontWeight: 600 }}>
                  Envio do comprovante obrigatório
                </p>
              </div>
              <p className="font-sans-elegant text-sm text-nude-600 mb-5" style={{ fontWeight: 300 }}>
                Seu pedido só é confirmado depois que você envia o comprovante do Pix pelo WhatsApp.
              </p>

              <label
                className={`flex items-start gap-3 mb-6 cursor-pointer max-w-sm mx-auto text-left p-4 rounded-sm border-2 transition-colors duration-300 ${
                  confirmed ? 'border-teal-600 bg-teal-50/60' : 'border-oat-300 bg-white hover:border-oat-400'
                }`}
              >
                <input
                  type="checkbox"
                  checked={confirmed}
                  onChange={(e) => setConfirmed(e.target.checked)}
                  className="mt-1 w-4 h-4 accent-teal-600 shrink-0"
                />
                <span className="font-sans-elegant text-sm text-nude-700" style={{ fontWeight: 400 }}>
                  Já realizei o pagamento via Pix e vou enviar o comprovante agora pelo WhatsApp.
                </span>
              </label>

              {confirmed ? (
                <a
                  href={waLink(`${buildOrderMessage(items, address, shipping)}\n\nJá fiz o pagamento via Pix, segue o comprovante:`)}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="inline-flex items-center gap-2 bg-teal-600 hover:bg-teal-700 text-white font-sans-elegant text-sm uppercase tracking-widest px-8 py-3.5 rounded-sm shadow-soft transition-colors duration-300"
                  style={{ fontWeight: 600 }}
                >
                  <MessageCircle size={18} strokeWidth={1.5} />
                  Enviar comprovante no WhatsApp
                </a>
              ) : (
                <button
                  type="button"
                  disabled
                  className="inline-flex items-center gap-2 bg-oat-300 text-white/80 font-sans-elegant text-sm uppercase tracking-widest px-8 py-3.5 rounded-sm cursor-not-allowed"
                  style={{ fontWeight: 600 }}
                >
                  <MessageCircle size={18} strokeWidth={1.5} />
                  Enviar comprovante no WhatsApp
                </button>
              )}
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}

export default Pagamento;
