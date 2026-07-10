export const WHATSAPP_NUMBER = '5548988364557';

export function waLink(message: string): string {
  return `https://wa.me/${WHATSAPP_NUMBER}?text=${encodeURIComponent(message)}`;
}

export interface CartLine {
  name: string;
  color?: string;
  size?: string;
  quantity: number;
  price: number;
}

function formatBRL(value: number): string {
  return value.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
}

export function buildOrderMessage(lines: CartLine[]): string {
  const itemLines = lines.map((line) => {
    const variant = [line.color, line.size].filter(Boolean).join(' / ');
    const variantText = variant ? ` (${variant})` : '';
    return `• ${line.name}${variantText} — Qtd: ${line.quantity} — ${formatBRL(line.price * line.quantity)}`;
  });

  const subtotal = lines.reduce((sum, line) => sum + line.price * line.quantity, 0);

  return [
    'Olá! Gostaria de finalizar o seguinte pedido na Divina Baby:',
    '',
    ...itemLines,
    '',
    `Total: ${formatBRL(subtotal)}`,
  ].join('\n');
}
