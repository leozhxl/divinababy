import { useEffect, useMemo, useState } from 'react';
import { Link } from 'react-router-dom';
import { Search } from 'lucide-react';
import { supabase } from '../lib/supabase';
import { OrderRow, OrderStatus, ORDER_STATUSES } from '../lib/orders';
import { Card, ErrorMessage, Input, PageHeader, Spinner, StatusBadge, formatBRL, formatDate } from './ui';

export default function Orders() {
  const [orders, setOrders] = useState<OrderRow[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [status, setStatus] = useState<OrderStatus | ''>('');
  const [query, setQuery] = useState('');

  useEffect(() => {
    supabase
      .from('orders')
      .select('*')
      .order('created_at', { ascending: false })
      .then(({ data, error }) => {
        if (error) setError(error.message);
        setOrders((data ?? []) as OrderRow[]);
      });
  }, []);

  const countByStatus = useMemo(() => {
    const map: Partial<Record<OrderStatus, number>> = {};
    (orders ?? []).forEach((o) => (map[o.status] = (map[o.status] ?? 0) + 1));
    return map;
  }, [orders]);

  const visible = useMemo(() => {
    const q = query.trim().toLowerCase();
    const qDigits = q.replace(/\D/g, '');
    return (orders ?? []).filter((o) => {
      if (status && o.status !== status) return false;
      if (!q) return true;
      return (
        o.customer_name.toLowerCase().includes(q) ||
        String(o.number) === q.replace('#', '') ||
        (qDigits.length >= 4 && o.customer_phone.replace(/\D/g, '').includes(qDigits)) ||
        (o.tracking_code ?? '').toLowerCase().includes(q)
      );
    });
  }, [orders, status, query]);

  const chip = (value: OrderStatus | '', label: string, count?: number) => (
    <button
      key={value || 'all'}
      onClick={() => setStatus(value)}
      className={`px-3 py-1.5 rounded-full text-xs border whitespace-nowrap ${
        status === value ? 'bg-oat-500 border-oat-500 text-white' : 'bg-white border-oat-300 text-nude-600 hover:border-oat-500'
      }`}
    >
      {label}
      {count !== undefined && <span className="ml-1 opacity-70">{count}</span>}
    </button>
  );

  return (
    <div>
      <PageHeader title="Pedidos" subtitle="Pedidos feitos pelo checkout do site." />
      <ErrorMessage message={error} />

      <div className="flex gap-2 overflow-x-auto pb-2 mb-3">
        {chip('', 'Todos', orders?.length)}
        {ORDER_STATUSES.map((s) => chip(s.value, s.label, countByStatus[s.value] ?? 0))}
      </div>
      <div className="relative mb-4">
        <Search size={16} className="absolute left-3 top-1/2 -translate-y-1/2 text-nude-400" />
        <Input
          placeholder="Buscar por nome, telefone, nº do pedido ou rastreio"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          className="pl-9"
        />
      </div>

      {!orders ? (
        <Spinner />
      ) : (
        <Card className="overflow-hidden">
          {visible.length === 0 ? (
            <p className="p-8 text-center text-sm text-nude-500">Nenhum pedido encontrado.</p>
          ) : (
            <ul className="divide-y divide-oat-100">
              {visible.map((o) => (
                <li key={o.id}>
                  <Link to={`/admin/pedidos/${o.id}`} className="flex items-center gap-4 px-4 py-3 hover:bg-cream-50">
                    <div className="w-16 shrink-0">
                      <p className="text-sm font-semibold text-nude-800">#{o.number}</p>
                      <p className="text-[11px] text-nude-400">{formatDate(o.created_at)}</p>
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="text-sm text-nude-800 truncate">{o.customer_name}</p>
                      <p className="text-xs text-nude-400 truncate">
                        {o.items.reduce((n, i) => n + i.quantity, 0)} item(ns) · {o.address?.city}/{o.address?.state}
                      </p>
                    </div>
                    <div className="text-right shrink-0 space-y-1">
                      <p className="text-sm font-semibold text-nude-800">{formatBRL(o.total)}</p>
                      <StatusBadge status={o.status} />
                    </div>
                  </Link>
                </li>
              ))}
            </ul>
          )}
        </Card>
      )}
    </div>
  );
}
