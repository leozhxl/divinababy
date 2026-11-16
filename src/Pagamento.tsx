import { useRef, useState } from 'react';
import { useLocation, Link, Navigate } from 'react-router-dom';
import { QRCodeSVG } from 'qrcode.react';
import { Copy, Check, MessageCircle, ShoppingBag, QrCode, ShieldCheck, MapPin, Loader2, CreditCard } from 'lucide-react';
import Header from './Header';
import FloatingWhatsApp from './FloatingWhatsApp';
import { waLink, buildCheckoutMessage, PaymentMethod, ShippingAddress, ShippingOption } from './whatsapp';
import { buildPixPayload } from './pix';
import { CartItem } from './CartContext';
import { createOrder } from './lib/orders';
import { priceLines, linesSubtotal } from './pricing';

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
  const [method, setMethod] = useState<PaymentMethod>('pix');
  const [orderNumber, setOrderNumber] = useState<number | null>(null);
  const [savingOrder, setSavingOrder] = useState(false);
  const [orderSaved, setOrderSaved] = useState(false);
  const orderRequested = useRef(false);

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

  const { shipping } = state;
  const address = state.address;
  // Preços conforme a forma de pagamento: Pix usa o preço com desconto, cartão o preço cheio.
  const items = priceLines(state.items, method);
  const subtotal = linesSubtotal(state.items, method);
  const shippingCost = shipping?.price ?? 0;
  const cardTotal = linesSubtotal(state.items, 'cartao') + shippingCost;
  const pixTotal = linesSubtotal(state.items, 'pix') + shippingCost;
  const pixSavings = cardTotal - pixTotal;
  const total = subtotal + shippingCost;
  const pixPayload = buildPixPayload(total);

  const saveOrder = async (paymentMethod: PaymentMethod) => {
    if (orderRequested.current) return;
    orderRequested.current = true;
    setSavingOrder(true);
    const number = await createOrder({ items, subtotal, address, shipping, paymentMethod });
    setOrderNumber(number);
    setSavingOrder(false);
    setOrderSaved(true);
  };

  const handleConfirm = async (checked: boolean) => {
    setConfirmed(checked);
    if (checked) await saveOrder('pix');
  };

  const handleCardContinue = async () => {
    setConfirmed(true);
    await saveOrder('cartao');
  };

  // Depois que o pedido é registrado, a forma de pagamento fica travada.
  const methodLocked = savingOrder || orderSaved;
  const orderMessage = buildCheckoutMessage(items, address, shipping, orderNumber, method);

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
            <h1 className="section-title mb-2">{method === 'pix' ? 'Pague com Pix' : 'Pague com cartão'}</h1>
            <p className="font-sans-elegant text-sm text-nude-600 mb-8" style={{ fontWeight: 300 }}>
              {method === 'pix'
                ? 'Escaneie o QR Code ou copie o código abaixo no app do seu banco.'
                : 'Enviamos o link de pagamento do cartão de crédito pelo WhatsApp.'}
            </p>
          </div>

          {/* Payment method */}
          <div className="grid grid-cols-2 gap-3 mb-10" role="radiogroup" aria-label="Forma de pagamento">
            {([
              { value: 'pix', label: 'Pix', icon: QrCode, amount: pixTotal },
              { value: 'cartao', label: 'Cartão de crédito', icon: CreditCard, amount: cardTotal },
            ] as const).map(({ value, label, icon: Icon, amount }) => {
              const selected = method === value;
              return (
                <button
                  key={value}
                  type="button"
                  role="radio"
                  aria-checked={selected}
                  disabled={methodLocked && !selected}
                  onClick={() => setMethod(value)}
                  className={`flex flex-col items-center justify-center gap-1 p-4 rounded-sm border-2 font-sans-elegant text-sm transition-colors duration-300 ${
                    selected
                      ? 'border-teal-600 bg-teal-50/60 text-nude-800'
                      : 'border-oat-300 bg-white text-nude-600 hover:border-oat-400 disabled:opacity-50 disabled:cursor-not-allowed disabled:hover:border-oat-300'
                  }`}
                  style={{ fontWeight: selected ? 600 : 400 }}
                >
                  <span className="flex items-center gap-2">
                    <Icon size={18} strokeWidth={1.5} className={selected ? 'text-teal-600' : 'text-oat-500'} />
                    {label}
                  </span>
                  <span className="text-base text-nude-800" style={{ fontWeight: 600 }}>
                    {formatBRL(amount)}
                  </span>
                  {value === 'pix' && pixSavings > 0 && (
                    <span className="text-xs text-teal-700" style={{ fontWeight: 500 }}>
                      Economize {formatBRL(pixSavings)}
                    </span>
                  )}
                </button>
              );
            })}
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
                  key={`${line.productId}-${line.color ?? ''}-${line.size ?? ''}-${line.theme ?? ''}-${line.personalizedName ?? ''}`}
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
                    {line.personalizedName && (
                      <p className="font-sans-elegant text-xs text-nude-500" style={{ fontWeight: 300 }}>
                        Nome: {line.personalizedName}
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

          {method === 'cartao' ? (
            <div className="text-center">
              <div className="bg-white border border-oat-300/50 rounded-sm p-6 mb-8 shadow-soft">
                <CreditCard size={28} strokeWidth={1.5} className="text-oat-500 mx-auto mb-3" />
                <p className="font-serif-elegant text-2xl text-nude-800 mb-3" style={{ fontWeight: 500 }}>
                  {formatBRL(total)}
                </p>
                <p className="font-sans-elegant text-sm text-nude-600" style={{ fontWeight: 300 }}>
                  Ao continuar, seu pedido é registrado e você nos chama no WhatsApp. Lá enviamos o link seguro para
                  pagar no cartão de crédito.
                </p>
              </div>

              {savingOrder ? (
                <button
                  type="button"
                  disabled
                  className="inline-flex items-center gap-2 bg-teal-600/80 text-white font-sans-elegant text-sm uppercase tracking-widest px-8 py-3.5 rounded-sm cursor-wait"
                  style={{ fontWeight: 600 }}
                >
                  <Loader2 size={18} strokeWidth={1.5} className="animate-spin" />
                  Registrando pedido...
                </button>
              ) : orderSaved ? (
                <>
                  <p className="font-sans-elegant text-sm text-nude-700 mb-4" style={{ fontWeight: 400 }}>
                    {orderNumber ? `Pedido nº ${orderNumber} registrado! ` : 'Pedido registrado! '}
                    Agora é só enviar a mensagem para receber o link.
                  </p>
                  <a
                    href={waLink(orderMessage)}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="inline-flex items-center gap-2 bg-teal-600 hover:bg-teal-700 text-white font-sans-elegant text-sm uppercase tracking-widest px-8 py-3.5 rounded-sm shadow-soft transition-colors duration-300"
                    style={{ fontWeight: 600 }}
                  >
                    <MessageCircle size={18} strokeWidth={1.5} />
                    Pedir link no WhatsApp
                  </a>
                </>
              ) : (
                <button
                  type="button"
                  onClick={handleCardContinue}
                  className="inline-flex items-center gap-2 bg-teal-600 hover:bg-teal-700 text-white font-sans-elegant text-sm uppercase tracking-widest px-8 py-3.5 rounded-sm shadow-soft transition-colors duration-300"
                  style={{ fontWeight: 600 }}
                >
                  <CreditCard size={18} strokeWidth={1.5} />
                  Pagar com cartão
                </button>
              )}
            </div>
          ) : (
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
                  onChange={(e) => handleConfirm(e.target.checked)}
                  className="mt-1 w-4 h-4 accent-teal-600 shrink-0"
                />
                <span className="font-sans-elegant text-sm text-nude-700" style={{ fontWeight: 400 }}>
                  Já realizei o pagamento via Pix e vou enviar o comprovante agora pelo WhatsApp.
                </span>
              </label>

              {confirmed && savingOrder ? (
                <button
                  type="button"
                  disabled
                  className="inline-flex items-center gap-2 bg-teal-600/80 text-white font-sans-elegant text-sm uppercase tracking-widest px-8 py-3.5 rounded-sm cursor-wait"
                  style={{ fontWeight: 600 }}
                >
                  <Loader2 size={18} strokeWidth={1.5} className="animate-spin" />
                  Registrando pedido...
                </button>
              ) : confirmed ? (
                <a
                  href={waLink(orderMessage)}
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
          )}
        </div>
      </section>
    </div>
  );
}

export default Pagamento;
