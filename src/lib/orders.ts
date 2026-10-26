import { supabase, isSupabaseConfigured } from './supabase';
import { CartItem } from '../CartContext';
import { ShippingAddress, ShippingOption } from '../whatsapp';

export type OrderStatus = 'aguardando_pagamento' | 'pago' | 'em_producao' | 'enviado' | 'entregue' | 'cancelado';

export const ORDER_STATUSES: { value: OrderStatus; label: string }[] = [
  { value: 'aguardando_pagamento', label: 'Aguardando pagamento' },
  { value: 'pago', label: 'Pago' },
  { value: 'em_producao', label: 'Em produção' },
  { value: 'enviado', label: 'Enviado' },
  { value: 'entregue', label: 'Entregue' },
  { value: 'cancelado', label: 'Cancelado' },
];

/** Status que contam como venda realizada (faturamento). */
export const PAID_STATUSES: OrderStatus[] = ['pago', 'em_producao', 'enviado', 'entregue'];

export interface OrderRow {
  id: string;
  number: number;
  created_at: string;
  updated_at: string;
  user_id: string | null;
  customer_name: string;
  customer_phone: string;
  address: ShippingAddress;
  shipping: ShippingOption | null;
  items: CartItem[];
  subtotal: number;
  shipping_cost: number;
  total: number;
  payment_method: string;
  status: OrderStatus;
  tracking_code: string | null;
  notes: string | null;
}

/** Salva o pedido no banco e devolve o número dele (ou null se o Supabase não estiver configurado ou falhar). */
export async function createOrder(params: {
  items: CartItem[];
  subtotal: number;
  address: ShippingAddress;
  shipping?: ShippingOption;
}): Promise<number | null> {
  if (!isSupabaseConfigured) return null;
  const shippingCost = params.shipping?.price ?? 0;
  const { data, error } = await supabase.rpc('create_order', {
    p_customer_name: params.address.fullName,
    p_customer_phone: params.address.phone,
    p_address: params.address,
    p_shipping: params.shipping ?? null,
    p_items: params.items,
    p_subtotal: params.subtotal,
    p_shipping_cost: shippingCost,
    p_total: params.subtotal + shippingCost,
  });
  if (error) {
    console.error('Não foi possível salvar o pedido.', error);
    return null;
  }
  return data as number;
}
