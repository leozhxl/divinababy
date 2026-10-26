import { Fragment, useEffect, useMemo, useState } from 'react';
import { Link } from 'react-router-dom';
import { ChevronDown, MessageCircle, Search } from 'lucide-react';
import { supabase } from '../lib/supabase';
import { OrderRow, PAID_STATUSES } from '../lib/orders';
import { Card, ErrorMessage, Input, PageHeader, Select, Spinner, StatusBadge, customerWaLink, formatBRL, formatDate } from './ui';

interface ProfileRow {
  id: string;
  name: string;
  phone: string | null;
  created_at: string;
}

interface Customer {
  key: string;
  name: string;
  phone: string;
  location: string;
  orders: OrderRow[];
  totalSpent: number;
  lastOrderAt: string | null;
  registeredAt: string | null;
}

/** Chave do cliente: os últimos 11 dígitos do telefone (DDD + número). */
const phoneKey = (phone: string) => phone.replace(/\D/g, '').slice(-11);

export default function Customers() {
  const [customers, setCustomers] = useState<Customer[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [query, setQuery] = useState('');
  const [sort, setSort] = useState<'recentes' | 'valor' | 'pedidos'>('recentes');
  const [expanded, setExpanded] = useState<string | null>(null);

  useEffect(() => {
    Promise.all([
      supabase.from('orders').select('*').order('created_at', { ascending: false }),
      supabase.from('profiles').select('id, name, phone, created_at'),
    ]).then(([ordersRes, profilesRes]) => {
      if (ordersRes.error) setError(ordersRes.error.message);
      const map = new Map<string, Customer>();

      ((ordersRes.data ?? []) as OrderRow[]).forEach((o) => {
        const key = phoneKey(o.customer_phone) || o.id;
        let c = map.get(key);
        if (!c) {
          // Pedidos vêm do mais recente para o mais antigo: o primeiro define nome e cidade atuais.
          c = {
            key,
            name: o.customer_name,
            phone: o.customer_phone,
            location: o.address ? `${o.address.city}/${o.address.state}` : '',
            orders: [],
            totalSpent: 0,
            lastOrderAt: o.created_at,
            registeredAt: null,
          };
          map.set(key, c);
        }
        c.orders.push(o);
        if (PAID_STATUSES.includes(o.status)) c.totalSpent += Number(o.total);
      });

      ((profilesRes.data ?? []) as ProfileRow[]).forEach((p) => {
        const key = p.phone ? phoneKey(p.phone) : `perfil-${p.id}`;
        const existing = map.get(key);
        if (existing) {
          existing.registeredAt = p.created_at;
        } else {
          map.set(key, {
            key,
            name: p.name || '(sem nome)',
            phone: p.phone ?? '',
            location: '',
            orders: [],
            totalSpent: 0,
            lastOrderAt: null,
            registeredAt: p.created_at,
          });
        }
      });

      setCustomers(Array.from(map.values()));
    });
  }, []);

  const visible = useMemo(() => {
    const q = query.trim().toLowerCase();
    const qDigits = q.replace(/\D/g, '');
    const list = (customers ?? []).filter(
      (c) =>
        !q ||
        c.name.toLowerCase().includes(q) ||
        c.location.toLowerCase().includes(q) ||
        (qDigits.length >= 4 && c.phone.replace(/\D/g, '').includes(qDigits))
    );
    return list.sort((a, b) => {
      if (sort === 'valor') return b.totalSpent - a.totalSpent;
      if (sort === 'pedidos') return b.orders.length - a.orders.length;
      return (b.lastOrderAt ?? b.registeredAt ?? '').localeCompare(a.lastOrderAt ?? a.registeredAt ?? '');
    });
  }, [customers, query, sort]);

  return (
    <div>
      <PageHeader
        title="Clientes"
        subtitle={
          customers
            ? `${customers.length} clientes · ${customers.filter((c) => c.orders.length > 1).length} compraram mais de uma vez`
            : undefined
        }
      />
      <ErrorMessage message={error} />

      <div className="grid sm:grid-cols-[1fr_200px] gap-2 mb-4">
        <div className="relative">
          <Search size={16} className="absolute left-3 top-1/2 -translate-y-1/2 text-nude-400" />
          <Input placeholder="Buscar por nome, telefone ou cidade" value={query} onChange={(e) => setQuery(e.target.value)} className="pl-9" />
        </div>
        <Select value={sort} onChange={(e) => setSort(e.target.value as typeof sort)}>
          <option value="recentes">Mais recentes</option>
          <option value="valor">Quem mais gastou</option>
          <option value="pedidos">Mais pedidos</option>
        </Select>
      </div>

      {!customers ? (
        <Spinner />
      ) : (
        <Card className="overflow-hidden">
          {visible.length === 0 ? (
            <p className="p-8 text-center text-sm text-nude-500">Nenhum cliente encontrado.</p>
          ) : (
            <ul className="divide-y divide-oat-100">
              {visible.map((c) => (
                <Fragment key={c.key}>
                  <li className="flex items-center gap-3 px-4 py-3">
                    <button
                      onClick={() => setExpanded(expanded === c.key ? null : c.key)}
                      className="flex items-center gap-3 flex-1 min-w-0 text-left"
                      disabled={c.orders.length === 0}
                    >
                      <ChevronDown
                        size={16}
                        className={`shrink-0 text-nude-400 transition-transform ${expanded === c.key ? 'rotate-180' : ''} ${
                          c.orders.length === 0 ? 'invisible' : ''
                        }`}
                      />
                      <div className="min-w-0">
                        <p className="text-sm font-medium text-nude-800 truncate">
                          {c.name}
                          {c.registeredAt && (
                            <span className="ml-2 text-[10px] uppercase tracking-wider text-teal-700 bg-teal-50 border border-teal-200 rounded px-1.5 py-0.5">
                              Conta no site
                            </span>
                          )}
                        </p>
                        <p className="text-xs text-nude-400 truncate">
                          {[c.phone, c.location].filter(Boolean).join(' · ')}
                        </p>
                      </div>
                    </button>
                    <div className="text-right shrink-0">
                      <p className="text-sm font-semibold text-nude-800">{formatBRL(c.totalSpent)}</p>
                      <p className="text-xs text-nude-400">
                        {c.orders.length} pedido(s){c.lastOrderAt ? ` · último ${formatDate(c.lastOrderAt)}` : ''}
                      </p>
                    </div>
                    {c.phone && (
                      <a
                        href={customerWaLink(c.phone)}
                        target="_blank"
                        rel="noopener noreferrer"
                        title="Abrir WhatsApp"
                        className="p-2 rounded-md text-teal-700 hover:bg-teal-50 shrink-0"
                      >
                        <MessageCircle size={18} />
                      </a>
                    )}
                  </li>
                  {expanded === c.key && (
                    <li className="bg-cream-50 px-4 py-2">
                      <ul className="pl-7 space-y-1">
                        {c.orders.map((o) => (
                          <li key={o.id}>
                            <Link to={`/admin/pedidos/${o.id}`} className="flex items-center gap-3 py-1.5 text-sm hover:text-oat-700">
                              <span className="w-14 font-medium">#{o.number}</span>
                              <span className="w-24 text-nude-500">{formatDate(o.created_at)}</span>
                              <span className="flex-1">{formatBRL(o.total)}</span>
                              <StatusBadge status={o.status} />
                            </Link>
                          </li>
                        ))}
                      </ul>
                    </li>
                  )}
                </Fragment>
              ))}
            </ul>
          )}
        </Card>
      )}
    </div>
  );
}
