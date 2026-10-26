# Divina Baby

Loja online da Divina Baby (React + Vite + Tailwind, hospedada na Vercel) com painel administrativo em `/admin`.

## Painel administrativo (`/admin`)

- **Dashboard**: faturamento do mês, pedidos, ticket médio, gráfico dos últimos 6 meses, mais vendidos.
- **Pedidos**: todo pedido finalizado no checkout fica salvo, com status (aguardando pagamento → pago → em produção → enviado → entregue / cancelado), código de rastreio, anotações e botão para avisar a cliente no WhatsApp.
- **Produtos**: criar, editar, duplicar, ocultar e excluir; enviar, trocar, reordenar e remover fotos; preços, Pix, parcelas, selos, tamanhos e variações.
- **Categorias**: nome, foto, ordem e visibilidade.
- **Cores e Temas**: paleta das miçangas e temas que as clientes escolhem.
- **Clientes**: histórico de compras de cada cliente (agrupado por telefone) e contas cadastradas no site.

Enquanto o Supabase não estiver configurado, a loja continua funcionando com o catálogo de `src/data/products.ts`.

## Configuração (uma vez só)

1. **Criar o projeto no Supabase**: em [supabase.com](https://supabase.com), crie um projeto gratuito.
2. **Rodar os scripts do banco**: no painel do projeto, abra **SQL Editor → New query** e rode, nesta ordem, colando o conteúdo de cada arquivo:
   1. `supabase/schema.sql`: perfis de clientes.
   2. `supabase/admin.sql`: produtos, categorias, pedidos, fotos e permissões.
   3. `supabase/seed.sql`: importa os produtos, categorias, cores e temas atuais do site.
3. **Configurar as chaves**: em **Project Settings → API**, copie a *Project URL* e a chave *anon public* e preencha:
   - no arquivo `.env.local` (para rodar no computador):
     ```
     VITE_SUPABASE_URL=https://xxxx.supabase.co
     VITE_SUPABASE_ANON_KEY=eyJ...
     ```
   - na **Vercel** → projeto *divinababy* → **Settings → Environment Variables** (as mesmas duas variáveis), e depois faça um novo deploy.
4. **Criar a conta de administradora**: em **Authentication → Users → Add user**, crie o usuário com e-mail e senha (marque *Auto Confirm User*). Depois rode no SQL Editor, trocando o e-mail:
   ```sql
   insert into public.admins (user_id)
   select id from auth.users where email = 'tafibecker@gmail.com'
   on conflict do nothing;
   ```
5. Acesse `https://divinababy.com/admin` e entre com esse e-mail e senha.

## Desenvolvimento

```bash
npm install
npm run dev          # servidor local
npm run build        # build de produção
npm run typecheck
npm run seed:gerar   # regenera supabase/seed.sql a partir de src/data/products.ts
```

Depois que o seed for importado, o catálogo passa a ser editado pelo painel; o arquivo `src/data/products.ts` fica só como reserva.
