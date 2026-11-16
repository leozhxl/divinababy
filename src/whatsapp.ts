export const WHATSAPP_NUMBER = '5548998364557';

export function waLink(message: string): string {
  return `https://wa.me/${WHATSAPP_NUMBER}?text=${encodeURIComponent(message)}`;
}

export interface CartLine {
  name: string;
  color?: string;
  size?: string;
  theme?: string;
  personalizedName?: string;
  quantity: number;
  price: number;
}

export interface ShippingAddress {
  fullName: string;
  phone: string;
  cep: string;
  street: string;
  number: string;
  complement?: string;
  neighborhood: string;
  city: string;
  state: string;
}

export interface ShippingOption {
  id: number;
  name: string;
  company: string;
  price: number;
  deliveryTime: number | null;
}

function formatBRL(value: number): string {
  return value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
}

export function buildAddressLines(address: ShippingAddress): string[] {
  return [
    'Endereço de entrega:',
    `${address.fullName} — ${address.phone}`,
    `${address.street}, ${address.number}${address.complement ? ` — ${address.complement}` : ''}`,
    `${address.neighborhood} — ${address.city}/${address.state}`,
    `CEP: ${address.cep}`,
  ];
}

export function buildOrderMessage(lines: CartLine[], address?: ShippingAddress, shipping?: ShippingOption): string {
  const itemLines = lines.map((line) => {
    const variant = [line.color, line.theme, line.size].filter(Boolean).join(' / ');
    const variantText = variant ? ` (${variant})` : '';
    const nameText = line.personalizedName ? ` — Nome: ${line.personalizedName}` : '';
    return `• ${line.name}${variantText}${nameText} — Qtd: ${line.quantity} — ${formatBRL(line.price * line.quantity)}`;
  });

  const subtotal = lines.reduce((sum, line) => sum + line.price * line.quantity, 0);
  const total = subtotal + (shipping?.price ?? 0);

  return [
    'Olá! Gostaria de finalizar o seguinte pedido na Divina Baby:',
    '',
    ...itemLines,
    '',
    `Subtotal: ${formatBRL(subtotal)}`,
    ...(shipping ? [`Frete (${shipping.company} — ${shipping.name}): ${formatBRL(shipping.price)}`] : []),
    `Total: ${formatBRL(total)}`,
    ...(address ? ['', ...buildAddressLines(address)] : []),
  ].join('\n');
}

export type PaymentMethod = 'pix' | 'cartao';

const PAYMENT_CLOSING: Record<PaymentMethod, string> = {
  pix: 'Já fiz o pagamento via Pix, segue o comprovante:',
  cartao: 'Quero pagar no cartão de crédito, pode me enviar o link de pagamento?',
};

/** Mensagem completa enviada no WhatsApp ao finalizar a compra (Pix ou cartão). */
export function buildCheckoutMessage(
  lines: CartLine[],
  address: ShippingAddress,
  shipping: ShippingOption | undefined,
  orderNumber: number | null,
  method: PaymentMethod
): string {
  return [
    buildOrderMessage(lines, address, shipping),
    ...(orderNumber ? ['', `Pedido nº ${orderNumber}`] : []),
    '',
    PAYMENT_CLOSING[method],
  ].join('\n');
}
