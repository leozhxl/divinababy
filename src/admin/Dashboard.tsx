import { useEffect, useMemo, useState } from 'react';
import { Link } from 'react-router-dom';
import { AlertCircle } from 'lucide-react';
import { supabase } from '../lib/supabase';
import { OrderRow, PAID_STATUSES } from '../lib/orders';
import { Card, ErrorMessage, PageHeader, Spinner, StatusBadge, formatBRL, formatDate } from './ui';

const MONTHS = ['jan', 'fev', 'mar', 'abr', 'mai', 'jun', 'jul', 'ago', 'set', 'out', 'nov', 'dez'];

function monthKey(date: Date) {
  return `${date.getFullYear()}-${date.getMonth()}`;
}

function StatTile({ label, value, detail }: { label: string; value: string; detail?: string }) {
  return (
    <Card className="p-4">
      <p className="text-xs uppercase tracking-wider text-nude-500 font-semibold">{label}</p>
      <p className="font-serif-elegant text-3xl text-nude-800 mt-1">{value}</p>
      {detail && <p className="text-xs text-nude-400 mt-1">{detail}</p>}
    </Card>
  );
}

function RevenueChart({ data }: { data: { label: string; value: number; current: boolean }[] }) {
  const [hovered, setHovered] = useState<number | null>(null);
  const max = Math.max(...data.map((d) => d.value), 1);
  return (
    <div>
      <div className="relative h-40 flex items-end gap-3 border-b border-oat-200" role="img" aria-label="Faturamento por mês">
        {data.map((d, i) => (
          <div
            key={d.label}
            className="relative flex-1 h-full flex items-end justify-center cursor-default"
            onMouseEnter={() => setHovered(i)}
            onMouseLeave={() => setHovered(null)}
          >
            <div
              className={`w-full max-w-[36px] rounded-t transition-colors ${hovered === i ? 'bg-oat-600' : 'bg-oat-400'}`}
              style={{ height: `${Math.max((d.value / max) * 100, d.value > 0 ? 2 : 0)}%` }}
            />
            {hovered === i && (
              <div className="absolute bottom-full mb-1 left-1/2 -translate-x-1/2 whitespace-nowrap rounded bg-nude-800 text-white text-xs px-2 py-1 shadow z-10">
                {d.label}: {formatBRL(d.value)}
              </div>
            )}
          </div>
        ))}
      </div>
      <div className="flex gap-3 mt-1.5">
        {data.map((d) => (
          <p key={d.label} className={`flex-1 text-center text-xs ${d.current ? 'text-nude-800 font-semibold' : 'text-nude-500'}`}>
            {d.label}
          </p>
        ))}
      </div>
    </div>
  );
}

export default function Dashboard() {
  const [orders, setOrders] = useState<OrderRow[] | null>(null);
  const [activeProducts, setActiveProducts] = useState<number | null>(null);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const since = new Date();
    since.setMonth(since.getMonth() - 5, 1);
    since.setHours(0, 0, 0, 0);
    Promise.all([
      supabase.from('orders').select('*').gte('created_at', since.toISOString()).order('created_at', { ascending: false }),
      supabase.from('products').select('id', { count: 'exact', head: true }).eq('active', true),
    ]).then(([ordersRes, productsRes]) => {
      if (ordersRes.error) setError(ordersRes.error.message);
      setOrders((ordersRes.data ?? []) as OrderRow[]);
      setActiveProducts(productsRes.count ?? 0);
    });
  }, []);

  const stats = useMemo(() => {
    if (!orders) return null;
    const now = new Date();
    const thisMonth = monthKey(now);
    const paid = orders.filter((o) => PAID_STATUSES.includes(o.status));
    const paidThisMonth = paid.filter((o) => monthKey(new Date(o.created_at)) === thisMonth);
    const revenueThisMonth = paidThisMonth.reduce((s, o) => s + Number(o.total), 0);

    const months = Array.from({ length: 6 }, (_, i) => {
      const d = new Date(now.getFullYear(), now.getMonth() - 5 + i, 1);
      return { key: monthKey(d), label: MONTHS[d.getMonth()], value: 0, current: i === 5 };
    });
    paid.forEach((o) => {
      const m = months.find((x) => x.key === monthKey(new Date(o.created_at)));
      if (m) m.value += Number(o.total);
    });

    const productTotals = new Map<string, { name: string; image: string; quantity: number; revenue: number }>();
    paid.forEach((o) =>
      o.items.forEach((item) => {
        const entry = productTotals.get(item.productId) ?? { name: item.name, image: item.image, quantity: 0, revenue: 0 };
        entry.quantity += item.quantity;
        entry.revenue += item.price * item.quantity;
        productTotals.set(item.productId, entry);
      })
    );

    return {
      revenueThisMonth,
      ordersThisMonth: paidThisMonth.length,
      averageTicket: paidThisMonth.length ? revenueThisMonth / paidThisMonth.length : 0,
      awaitingPayment: orders.filter((o) => o.status === 'aguardando_pagamento'),
      toShip: orders.filter((o) => o.status === 'pago' || o.status === 'em_producao').length,
      months,
      topProducts: Array.from(productTotals.values())
        .sort((a, b) => b.quantity - a.quantity)
        .slice(0, 5),
    };
  }, [orders]);

  if (!stats) return error ? <ErrorMessage message={error} /> : <Spinner />;

  return (
    <div>
      <PageHeader title="Dashboard" subtitle="Vendas confirmadas (pagas, em produção, enviadas e entregues)." />
      <ErrorMessage message={error} />

      {stats.awaitingPayment.length > 0 && (
        <Link
          to="/admin/pedidos"
          className="flex items-center gap-2 rounded-md border border-amber-200 bg-amber-50 px-4 py-3 text-sm text-amber-800 mb-5 hover:bg-amber-100"
        >
          <AlertCircle size={16} />
          {stats.awaitingPayment.length} pedido(s) aguardando confirmação do Pix. Confira os comprovantes no WhatsApp.
        </Link>
      )}

      <div className="grid grid-cols-2 lg:grid-cols-4 gap-3 mb-5">
        <StatTile label="Faturamento do mês" value={formatBRL(stats.revenueThisMonth)} />
        <StatTile label="Pedidos do mês" value={String(stats.ordersThisMonth)} />
        <StatTile label="Ticket médio" value={formatBRL(stats.averageTicket)} />
        <StatTile label="Para produzir/enviar" value={String(stats.toShip)} detail={`${activeProducts ?? 0} produtos ativos na loja`} />
      </div>

      <div className="grid lg:grid-cols-2 gap-5">
        <Card className="p-5">
          <h2 className="text-sm font-semibold text-nude-800 mb-4">Faturamento nos últimos 6 meses</h2>
          <RevenueChart data={stats.months} />
        </Card>

        <Card className="p-5">
          <h2 className="text-sm font-semibold text-nude-800 mb-3">Mais vendidos (6 meses)</h2>
          {stats.topProducts.length === 0 ? (
            <p className="text-sm text-nude-400 py-6 text-center">Ainda sem vendas confirmadas.</p>
          ) : (
            <ol className="space-y-2.5">
              {stats.topProducts.map((p, i) => (
                <li key={p.name + i} className="flex items-center gap-3 text-sm">
                  <span className="w-4 text-nude-400">{i + 1}</span>
                  <img src={p.image} alt="" className="w-9 h-9 rounded object-cover bg-oat-100" />
                  <span className="flex-1 min-w-0 truncate text-nude-700">{p.name}</span>
                  <span className="text-nude-500 shrink-0">{p.quantity} un.</span>
                </li>
              ))}
            </ol>
          )}
        </Card>
      </div>

      <Card className="p-5 mt-5">
        <div className="flex items-center justify-between mb-3">
          <h2 className="text-sm font-semibold text-nude-800">Últimos pedidos</h2>
          <Link to="/admin/pedidos" className="text-xs text-oat-700 hover:underline">
            Ver todos
          </Link>
        </div>
        {orders && orders.length === 0 ? (
          <p className="text-sm text-nude-400 py-6 text-center">Nenhum pedido ainda.</p>
        ) : (
          <ul className="divide-y divide-oat-100">
            {orders?.slice(0, 6).map((o) => (
              <li key={o.id}>
                <Link to={`/admin/pedidos/${o.id}`} className="flex items-center gap-3 py-2.5 text-sm hover:text-oat-700">
                  <span className="w-14 font-medium">#{o.number}</span>
                  <span className="flex-1 min-w-0 truncate">{o.customer_name}</span>
                  <span className="hidden sm:block text-nude-400 w-24">{formatDate(o.created_at)}</span>
                  <span className="w-24 text-right">{formatBRL(o.total)}</span>
                  <StatusBadge status={o.status} />
                </Link>
              </li>
            ))}
          </ul>
        )}
      </Card>
    </div>
  );
}
