import type { Product } from './types/product';
import type { CartItem } from './CartContext';
import type { PaymentMethod } from './whatsapp';

/** Desconto padrão no Pix quando o produto não tem preço de Pix definido. */
const DEFAULT_PIX_DISCOUNT = 0.05;

function roundMoney(value: number): number {
  return Math.round(value * 100) / 100;
}

/** Preço unitário no Pix de um produto. */
export function productPixPrice(product: Pick<Product, 'price' | 'pixPrice'>): number {
  return product.pixPrice ?? roundMoney(product.price * (1 - DEFAULT_PIX_DISCOUNT));
}

/** Preço unitário de um item do carrinho na forma de pagamento escolhida (cartão = preço cheio). */
export function unitPrice(line: Pick<CartItem, 'price' | 'pixPrice'>, method: PaymentMethod): number {
  return method === 'pix' ? productPixPrice(line) : line.price;
}

/** Itens com o preço já ajustado para a forma de pagamento. */
export function priceLines(lines: CartItem[], method: PaymentMethod): CartItem[] {
  return lines.map((line) => ({ ...line, price: unitPrice(line, method) }));
}

export function linesSubtotal(lines: CartItem[], method: PaymentMethod): number {
  return roundMoney(lines.reduce((sum, line) => sum + unitPrice(line, method) * line.quantity, 0));
}
