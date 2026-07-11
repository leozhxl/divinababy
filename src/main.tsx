import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import App from './App.tsx';
import Produtos from './Produtos.tsx';
import ProductPage from './ProductPage.tsx';
import TrocasDevolucoes from './TrocasDevolucoes.tsx';
import Privacidade from './Privacidade.tsx';
import Contato from './Contato.tsx';
import Depoimentos from './Depoimentos.tsx';
import Login from './Login.tsx';
import Cadastro from './Cadastro.tsx';
import { CartProvider } from './CartContext.tsx';
import { AuthProvider } from './AuthContext.tsx';
import CartDrawer from './CartDrawer.tsx';
import './index.css';

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <AuthProvider>
      <CartProvider>
        <BrowserRouter>
          <Routes>
            <Route path="/" element={<App />} />
            <Route path="/produtos" element={<Produtos />} />
            <Route path="/produto/:slug" element={<ProductPage />} />
            <Route path="/trocas-devolucoes" element={<TrocasDevolucoes />} />
            <Route path="/privacidade" element={<Privacidade />} />
            <Route path="/contato" element={<Contato />} />
            <Route path="/depoimentos" element={<Depoimentos />} />
            <Route path="/login" element={<Login />} />
            <Route path="/cadastro" element={<Cadastro />} />
          </Routes>
          <CartDrawer />
        </BrowserRouter>
      </CartProvider>
    </AuthProvider>
  </StrictMode>
);
