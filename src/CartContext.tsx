import { createContext, useContext, useEffect, useMemo, useReducer, useState, ReactNode } from 'react';
import { Product } from './types/product';

export interface CartItem {
  productId: string;
  slug: string;
  name: string;
  price: number;
  image: string;
  color?: string;
  size?: string;
  quantity: number;
}

type CartAction =
  | { type: 'ADD_ITEM'; item: Omit<CartItem, 'quantity'>; quantity: number }
  | { type: 'REMOVE_ITEM'; productId: string; color?: string; size?: string }
  | { type: 'UPDATE_QUANTITY'; productId: string; color?: string; size?: string; quantity: number }
  | { type: 'CLEAR_CART' }
  | { type: 'HYDRATE'; items: CartItem[] };

function sameLine(a: { productId: string; color?: string; size?: string }, b: { productId: string; color?: string; size?: string }) {
  return a.productId === b.productId && a.color === b.color && a.size === b.size;
}

function cartReducer(state: CartItem[], action: CartAction): CartItem[] {
  switch (action.type) {
    case 'ADD_ITEM': {
      const existing = state.find((line) => sameLine(line, action.item));
      if (existing) {
        return state.map((line) =>
          sameLine(line, action.item) ? { ...line, quantity: line.quantity + action.quantity } : line
        );
      }
      return [...state, { ...action.item, quantity: action.quantity }];
    }
    case 'REMOVE_ITEM':
      return state.filter((line) => !sameLine(line, action));
    case 'UPDATE_QUANTITY':
      return state.map((line) =>
        sameLine(line, action) ? { ...line, quantity: Math.max(1, action.quantity) } : line
      );
    case 'CLEAR_CART':
      return [];
    case 'HYDRATE':
      return action.items;
    default:
      return state;
  }
}

interface CartContextValue {
  items: CartItem[];
  addItem: (product: Product, options: { color?: string; size?: string; quantity: number }) => void;
  removeItem: (productId: string, color?: string, size?: string) => void;
  updateQuantity: (productId: string, quantity: number, color?: string, size?: string) => void;
  clearCart: () => void;
  subtotal: number;
  itemCount: number;
  isCartOpen: boolean;
  openCart: () => void;
  closeCart: () => void;
}

const CartContext = createContext<CartContextValue | undefined>(undefined);

const STORAGE_KEY = 'divina-baby-cart';

export function CartProvider({ children }: { children: ReactNode }) {
  const [items, dispatch] = useReducer(cartReducer, []);
  const [isCartOpen, setIsCartOpen] = useState(false);

  useEffect(() => {
    const stored = localStorage.getItem(STORAGE_KEY);
    if (stored) {
      try {
        dispatch({ type: 'HYDRATE', items: JSON.parse(stored) });
      } catch {
        // ignore corrupted storage
      }
    }
  }, []);

  useEffect(() => {
    localStorage.setItem(STORAGE_KEY, JSON.stringify(items));
  }, [items]);

  const addItem: CartContextValue['addItem'] = (product, { color, size, quantity }) => {
    dispatch({
      type: 'ADD_ITEM',
      item: {
        productId: product.id,
        slug: product.slug,
        name: product.name,
        price: product.price,
        image: product.images[0],
        color,
        size,
      },
      quantity,
    });
  };

  const removeItem: CartContextValue['removeItem'] = (productId, color, size) => {
    dispatch({ type: 'REMOVE_ITEM', productId, color, size });
  };

  const updateQuantity: CartContextValue['updateQuantity'] = (productId, quantity, color, size) => {
    dispatch({ type: 'UPDATE_QUANTITY', productId, color, size, quantity });
  };

  const clearCart = () => dispatch({ type: 'CLEAR_CART' });

  const subtotal = useMemo(() => items.reduce((sum, line) => sum + line.price * line.quantity, 0), [items]);
  const itemCount = useMemo(() => items.reduce((sum, line) => sum + line.quantity, 0), [items]);

  return (
    <CartContext.Provider
      value={{
        items,
        addItem,
        removeItem,
        updateQuantity,
        clearCart,
        subtotal,
        itemCount,
        isCartOpen,
        openCart: () => setIsCartOpen(true),
        closeCart: () => setIsCartOpen(false),
      }}
    >
      {children}
    </CartContext.Provider>
  );
}

export function useCart(): CartContextValue {
  const ctx = useContext(CartContext);
  if (!ctx) throw new Error('useCart must be used within a CartProvider');
  return ctx;
}
