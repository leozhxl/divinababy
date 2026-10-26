import { ButtonHTMLAttributes, InputHTMLAttributes, ReactNode, SelectHTMLAttributes, TextareaHTMLAttributes } from 'react';
import { Loader2 } from 'lucide-react';
import { OrderStatus, ORDER_STATUSES } from '../lib/orders';

export function formatBRL(value: number | null | undefined): string {
  return (Number(value) || 0).toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
}

export function formatDate(value: string, withTime = false): string {
  const date = new Date(value);
  return withTime
    ? date.toLocaleString('pt-BR', { day: '2-digit', month: '2-digit', year: 'numeric', hour: '2-digit', minute: '2-digit' })
    : date.toLocaleDateString('pt-BR');
}

export function phoneDigits(phone: string): string {
  const digits = phone.replace(/\D/g, '');
  return digits.startsWith('55') && digits.length > 11 ? digits : `55${digits}`;
}

export function customerWaLink(phone: string, message = ''): string {
  return `https://wa.me/${phoneDigits(phone)}${message ? `?text=${encodeURIComponent(message)}` : ''}`;
}

export function slugify(value: string): string {
  return value
    .toLowerCase()
    .normalize('NFD')
    .replace(/[̀-ͯ]/g, '')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
    .slice(0, 80);
}

export function PageHeader({ title, subtitle, actions }: { title: string; subtitle?: string; actions?: ReactNode }) {
  return (
    <div className="flex flex-col sm:flex-row sm:items-end justify-between gap-4 mb-6">
      <div>
        <h1 className="font-serif-elegant text-3xl text-nude-800" style={{ fontWeight: 500 }}>
          {title}
        </h1>
        {subtitle && <p className="text-sm text-nude-500 mt-1">{subtitle}</p>}
      </div>
      {actions && <div className="flex flex-wrap gap-2">{actions}</div>}
    </div>
  );
}

export function Card({ children, className = '' }: { children: ReactNode; className?: string }) {
  return <div className={`bg-white border border-oat-200 rounded-lg shadow-sm ${className}`}>{children}</div>;
}

type ButtonVariant = 'primary' | 'secondary' | 'danger' | 'ghost';

const buttonStyles: Record<ButtonVariant, string> = {
  primary: 'bg-oat-500 text-white hover:bg-oat-600 border border-oat-500',
  secondary: 'bg-white text-nude-700 border border-oat-300 hover:border-oat-500 hover:text-oat-700',
  danger: 'bg-white text-red-700 border border-red-200 hover:bg-red-50',
  ghost: 'text-nude-600 hover:bg-oat-100 border border-transparent',
};

export function Button({
  variant = 'primary',
  loading = false,
  className = '',
  children,
  disabled,
  ...props
}: ButtonHTMLAttributes<HTMLButtonElement> & { variant?: ButtonVariant; loading?: boolean }) {
  return (
    <button
      type="button"
      disabled={disabled || loading}
      className={`inline-flex items-center justify-center gap-2 px-4 py-2 rounded-md text-sm font-medium transition-colors disabled:opacity-50 disabled:cursor-not-allowed ${buttonStyles[variant]} ${className}`}
      {...props}
    >
      {loading && <Loader2 size={16} className="animate-spin" />}
      {children}
    </button>
  );
}

export function Field({ label, hint, children, className = '' }: { label: string; hint?: string; children: ReactNode; className?: string }) {
  return (
    <label className={`block ${className}`}>
      <span className="block text-xs font-semibold uppercase tracking-wider text-nude-600 mb-1.5">{label}</span>
      {children}
      {hint && <span className="block text-xs text-nude-400 mt-1">{hint}</span>}
    </label>
  );
}

const inputClass =
  'w-full rounded-md border border-oat-300 bg-white px-3 py-2 text-sm text-nude-800 placeholder:text-nude-300 focus:outline-none focus:ring-2 focus:ring-oat-300 focus:border-oat-400';

export function Input(props: InputHTMLAttributes<HTMLInputElement>) {
  return <input {...props} className={`${inputClass} ${props.className ?? ''}`} />;
}

export function Textarea(props: TextareaHTMLAttributes<HTMLTextAreaElement>) {
  return <textarea {...props} className={`${inputClass} ${props.className ?? ''}`} />;
}

export function Select(props: SelectHTMLAttributes<HTMLSelectElement>) {
  return <select {...props} className={`${inputClass} ${props.className ?? ''}`} />;
}

export function Toggle({ checked, onChange, label }: { checked: boolean; onChange: (value: boolean) => void; label?: string }) {
  return (
    <button
      type="button"
      role="switch"
      aria-checked={checked}
      onClick={() => onChange(!checked)}
      className="inline-flex items-center gap-2 text-sm text-nude-700"
    >
      <span className={`relative w-9 h-5 rounded-full transition-colors ${checked ? 'bg-teal-600' : 'bg-oat-300'}`}>
        <span
          className={`absolute top-0.5 left-0.5 w-4 h-4 rounded-full bg-white shadow transition-transform ${checked ? 'translate-x-4' : ''}`}
        />
      </span>
      {label}
    </button>
  );
}

const statusStyles: Record<OrderStatus, string> = {
  aguardando_pagamento: 'bg-amber-50 text-amber-800 border-amber-200',
  pago: 'bg-teal-50 text-teal-800 border-teal-200',
  em_producao: 'bg-sky-50 text-sky-800 border-sky-200',
  enviado: 'bg-indigo-50 text-indigo-800 border-indigo-200',
  entregue: 'bg-green-50 text-green-800 border-green-200',
  cancelado: 'bg-gray-100 text-gray-600 border-gray-200',
};

export function StatusBadge({ status }: { status: OrderStatus }) {
  const label = ORDER_STATUSES.find((s) => s.value === status)?.label ?? status;
  return (
    <span className={`inline-flex items-center px-2 py-0.5 rounded-full border text-xs font-medium whitespace-nowrap ${statusStyles[status]}`}>
      {label}
    </span>
  );
}

export function Spinner({ label = 'Carregando...' }: { label?: string }) {
  return (
    <div className="flex items-center justify-center gap-2 py-16 text-sm text-nude-500">
      <Loader2 size={18} className="animate-spin" />
      {label}
    </div>
  );
}

export function ErrorMessage({ message }: { message: string | null }) {
  if (!message) return null;
  return <div className="rounded-md border border-red-200 bg-red-50 px-4 py-3 text-sm text-red-700 mb-4">{message}</div>;
}

export function Thumb({ src, alt, className = 'w-12 h-12' }: { src?: string | null; alt: string; className?: string }) {
  return (
    <div className={`${className} shrink-0 rounded-md overflow-hidden bg-oat-100 border border-oat-200`}>
      {src && <img src={src} alt={alt} className="w-full h-full object-cover" loading="lazy" />}
    </div>
  );
}
