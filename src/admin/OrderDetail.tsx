import { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { ArrowLeft, Copy, MessageCircle, Check } from 'lucide-react';
import { supabase } from '../lib/supabase';
import { OrderRow, OrderStatus, ORDER_STATUSES } from '../lib/orders';
import { buildAddressLines } from '../whatsapp';
import { Button, Card, ErrorMessage, Field, Input, PageHeader, Select, Spinner, StatusBadge, Textarea, Thumb, customerWaLink, formatBRL, formatDate } from './ui';

function firstName(name: string) {
  return name.trim().split(/\s+/)[0] ?? '';
}

/** Mensagem pronta para avisar a cliente sobre o status do pedido. */
function statusMessage(order: OrderRow, status: OrderStatus, tracking: string): string {
  const hello = `Olá, ${firstName(order.customer_name)}! Aqui é da Divina Baby 💕`;
  switch (status) {
    case 'aguardando_pagamento':
      return `${hello}\n\nRecebemos seu pedido nº ${order.number} no valor de ${formatBRL(order.total)}. Assim que o pagamento via Pix for confirmado, começamos a produção!`;
    case 'pago':
      return `${hello}\n\nConfirmamos o pagamento do seu pedido nº ${order.number}. Muito obrigada! Em breve ele entra em produção.`;
    case 'em_producao':
      return `${hello}\n\nSeu pedido nº ${order.number} já está em produção, sendo feito com muito carinho.`;
    case 'enviado':
      return `${hello}\n\nSeu pedido nº ${order.number} foi enviado!${tracking ? `\nCódigo de rastreio: ${tracking}\nAcompanhe em: https://rastreamento.correios.com.br/app/index.php` : ''}`;
    case 'entregue':
      return `${hello}\n\nVimos que seu pedido nº ${order.number} foi entregue. Esperamos que você ame! Se puder, mande uma foto do bebê usando, vamos adorar 🤍`;
    case 'cancelado':
      return `${hello}\n\nSeu pedido nº ${order.number} foi cancelado. Se tiver qualquer dúvida, é só nos chamar por aqui.`;
  }
}

export default function OrderDetail() {
  const { id } = useParams<{ id: string }>();
  const [order, setOrder] = useState<OrderRow | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [status, setStatus] = useState<OrderStatus>('aguardando_pagamento');
  const [tracking, setTracking] = useState('');
  const [notes, setNotes] = useState('');
  const [saving, setSaving] = useState(false);
  const [saved, setSaved] = useState(false);
  const [copied, setCopied] = useState(false);

  useEffect(() => {
    supabase
      .from('orders')
      .select('*')
      .eq('id', id)
      .single()
      .then(({ data, error }) => {
        if (error || !data) return setError(error?.message ?? 'Pedido não encontrado.');
        const row = data as OrderRow;
        setOrder(row);
        setStatus(row.status);
        setTracking(row.tracking_code ?? '');
        setNotes(row.notes ?? '');
      });
  }, [id]);

  if (!order) return error ? <ErrorMessage message={error} /> : <Spinner />;

  const dirty = status !== order.status || tracking !== (order.tracking_code ?? '') || notes !== (order.notes ?? '');

  const save = async () => {
    setSaving(true);
    setError(null);
    const patch = { status, tracking_code: tracking.trim() || null, notes: notes.trim() || null };
    const { error } = await supabase.from('orders').update(patch).eq('id', order.id);
    setSaving(false);
    if (error) return setError(error.message);
    setOrder({ ...order, ...patch });
    setSaved(true);
    setTimeout(() => setSaved(false), 2500);
  };

  const copyAddress = async () => {
    await navigator.clipboard.writeText(buildAddressLines(order.address).slice(1).join('\n'));
    setCopied(true);
    setTimeout(() => setCopied(false), 2000);
  };

  return (
    <div>
      <Link to="/admin/pedidos" className="inline-flex items-center gap-1.5 text-sm text-nude-500 hover:text-oat-700 mb-3">
        <ArrowLeft size={15} /> Pedidos
      </Link>
      <PageHeader
        title={`Pedido #${order.number}`}
        subtitle={`Feito em ${formatDate(order.created_at, true)}`}
        actions={<StatusBadge status={order.status} />}
      />
      <ErrorMessage message={error} />

      <div className="grid lg:grid-cols-[1fr_320px] gap-5 items-start">
        <div className="space-y-5">
          <Card className="p-5">
            <h2 className="text-sm font-semibold text-nude-800 mb-3">Itens</h2>
            <ul className="divide-y divide-oat-100">
              {order.items.map((item, i) => (
                <li key={i} className="flex gap-3 py-3">
                  <Thumb src={item.image} alt={item.name} className="w-16 h-16" />
                  <div className="flex-1 min-w-0 text-sm">
                    <p className="text-nude-800 font-medium">{item.name}</p>
                    {item.personalizedName && (
                      <p className="text-nude-700">
                        Nome: <strong className="text-oat-700">{item.personalizedName}</strong>
                      </p>
                    )}
                    {item.color && <p className="text-nude-500 text-xs">Cores: {item.color}</p>}
                    {item.theme && <p className="text-nude-500 text-xs">Tema: {item.theme}</p>}
                    {item.size && <p className="text-nude-500 text-xs">Tamanho: {item.size}</p>}
                  </div>
                  <div className="text-right text-sm shrink-0">
                    <p className="text-nude-800">{formatBRL(item.price * item.quantity)}</p>
                    <p className="text-xs text-nude-400">
                      {item.quantity} × {formatBRL(item.price)}
                    </p>
                  </div>
                </li>
              ))}
            </ul>
            <dl className="border-t border-oat-200 pt-3 mt-1 space-y-1 text-sm">
              <div className="flex justify-between text-nude-600">
                <dt>Subtotal</dt>
                <dd>{formatBRL(order.subtotal)}</dd>
              </div>
              <div className="flex justify-between text-nude-600">
                <dt>Frete{order.shipping ? ` (${order.shipping.company} — ${order.shipping.name})` : ''}</dt>
                <dd>{formatBRL(order.shipping_cost)}</dd>
              </div>
              <div className="flex justify-between font-semibold text-nude-800 pt-1">
                <dt>Total ({order.payment_method === 'pix' ? 'Pix' : order.payment_method})</dt>
                <dd>{formatBRL(order.total)}</dd>
              </div>
            </dl>
          </Card>

          <Card className="p-5">
            <div className="flex items-center justify-between mb-3">
              <h2 className="text-sm font-semibold text-nude-800">Entrega</h2>
              <Button variant="ghost" className="!py-1 text-xs" onClick={copyAddress}>
                {copied ? <Check size={14} /> : <Copy size={14} />} {copied ? 'Copiado' : 'Copiar endereço'}
              </Button>
            </div>
            <div className="text-sm text-nude-700 space-y-0.5">
              {buildAddressLines(order.address)
                .slice(1)
                .map((line) => (
                  <p key={line}>{line}</p>
                ))}
              {order.shipping?.deliveryTime && (
                <p className="text-xs text-nude-400 pt-1">Prazo estimado: {order.shipping.deliveryTime} dias úteis</p>
              )}
            </div>
          </Card>
        </div>

        <div className="space-y-5 lg:sticky lg:top-6">
          <Card className="p-5 space-y-4">
            <Field label="Status">
              <Select value={status} onChange={(e) => setStatus(e.target.value as OrderStatus)}>
                {ORDER_STATUSES.map((s) => (
                  <option key={s.value} value={s.value}>
                    {s.label}
                  </option>
                ))}
              </Select>
            </Field>
            <Field label="Código de rastreio">
              <Input value={tracking} onChange={(e) => setTracking(e.target.value.toUpperCase())} placeholder="AA123456789BR" />
            </Field>
            <Field label="Anotações internas" hint="Só você vê.">
              <Textarea rows={3} value={notes} onChange={(e) => setNotes(e.target.value)} />
            </Field>
            <Button onClick={save} loading={saving} disabled={!dirty} className="w-full">
              {saved ? 'Salvo!' : 'Salvar'}
            </Button>
          </Card>

          <Card className="p-5 space-y-3">
            <div>
              <p className="text-sm font-semibold text-nude-800">{order.customer_name}</p>
              <p className="text-sm text-nude-500">{order.customer_phone}</p>
            </div>
            <a href={customerWaLink(order.customer_phone, statusMessage(order, status, tracking))} target="_blank" rel="noopener noreferrer">
              <Button className="w-full !bg-teal-600 !border-teal-600 hover:!bg-teal-700">
                <MessageCircle size={16} /> Avisar status no WhatsApp
              </Button>
            </a>
            <a href={customerWaLink(order.customer_phone)} target="_blank" rel="noopener noreferrer">
              <Button variant="secondary" className="w-full mt-2">
                Abrir conversa
              </Button>
            </a>
          </Card>
        </div>
      </div>
    </div>
  );
}
