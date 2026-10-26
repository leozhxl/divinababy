-- Painel administrativo (CRM) da Divina Baby.
-- Rode DEPOIS do schema.sql: painel do Supabase > SQL Editor > New query > cole e clique em Run.
-- Pode ser rodado de novo sem problemas (é idempotente).

-- ============================================================
-- Administradores
-- ============================================================
create table if not exists public.admins (
  user_id uuid primary key references auth.users on delete cascade,
  created_at timestamptz not null default now()
);

alter table public.admins enable row level security;

create or replace function public.is_admin()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select exists (select 1 from public.admins where user_id = auth.uid());
$$;

drop policy if exists "Admins can view admins" on public.admins;
create policy "Admins can view admins"
  on public.admins for select
  using (public.is_admin());

-- Admins podem ver todos os perfis de clientes cadastrados.
drop policy if exists "Admins can view all profiles" on public.profiles;
create policy "Admins can view all profiles"
  on public.profiles for select
  using (public.is_admin());

create or replace function public.set_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

-- ============================================================
-- Catálogo: categorias, cores das miçangas, temas e produtos
-- ============================================================
create table if not exists public.categories (
  name text primary key,
  image text,
  sort_order int not null default 0,
  active boolean not null default true
);

create table if not exists public.bead_colors (
  id bigint generated always as identity primary key,
  name text not null unique,
  hex text,
  image text,
  sort_order int not null default 0,
  active boolean not null default true
);

create table if not exists public.themes (
  id bigint generated always as identity primary key,
  name text not null unique,
  image text,
  sort_order int not null default 0,
  active boolean not null default true
);

create table if not exists public.products (
  id text primary key default gen_random_uuid()::text,
  slug text not null unique,
  name text not null,
  category text not null references public.categories (name) on update cascade,
  price numeric(10, 2) not null,
  compare_at_price numeric(10, 2),
  pix_price numeric(10, 2),
  installments int,
  alt_installments int,
  alt_installment_amount numeric(10, 2),
  images text[] not null default '{}',
  image_position text,
  image_fit text check (image_fit in ('cover', 'contain')),
  has_colors boolean not null default false,
  has_themes boolean not null default false,
  sizes text[] not null default '{}',
  description text not null default '',
  badges text[] not null default '{}',
  active boolean not null default true,
  sort_order int not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

drop trigger if exists products_updated_at on public.products;
create trigger products_updated_at
  before update on public.products
  for each row execute procedure public.set_updated_at();

-- Leitura pública (somente itens ativos); escrita somente para admins.
do $$
declare
  t text;
begin
  foreach t in array array['categories', 'bead_colors', 'themes', 'products'] loop
    execute format('alter table public.%I enable row level security', t);
    execute format('drop policy if exists "Public can view active" on public.%I', t);
    execute format(
      'create policy "Public can view active" on public.%I for select using (active or public.is_admin())', t
    );
    execute format('drop policy if exists "Admins can manage" on public.%I', t);
    execute format(
      'create policy "Admins can manage" on public.%I for all using (public.is_admin()) with check (public.is_admin())', t
    );
  end loop;
end $$;

-- ============================================================
-- Pedidos
-- ============================================================
create table if not exists public.orders (
  id uuid primary key default gen_random_uuid(),
  number bigint generated always as identity unique,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  user_id uuid references auth.users on delete set null,
  customer_name text not null,
  customer_phone text not null,
  address jsonb not null,
  shipping jsonb,
  items jsonb not null,
  subtotal numeric(10, 2) not null,
  shipping_cost numeric(10, 2) not null default 0,
  total numeric(10, 2) not null,
  payment_method text not null default 'pix',
  status text not null default 'aguardando_pagamento'
    check (status in ('aguardando_pagamento', 'pago', 'em_producao', 'enviado', 'entregue', 'cancelado')),
  tracking_code text,
  notes text
);

drop trigger if exists orders_updated_at on public.orders;
create trigger orders_updated_at
  before update on public.orders
  for each row execute procedure public.set_updated_at();

alter table public.orders enable row level security;

drop policy if exists "Admins can manage orders" on public.orders;
create policy "Admins can manage orders"
  on public.orders for all
  using (public.is_admin())
  with check (public.is_admin());

drop policy if exists "Users can view own orders" on public.orders;
create policy "Users can view own orders"
  on public.orders for select
  using (auth.uid() = user_id);

-- O checkout cria o pedido por esta função (funciona também sem login)
-- e recebe de volta o número do pedido. O status sempre começa em
-- "aguardando_pagamento"; só um admin consegue alterá-lo.
create or replace function public.create_order(
  p_customer_name text,
  p_customer_phone text,
  p_address jsonb,
  p_shipping jsonb,
  p_items jsonb,
  p_subtotal numeric,
  p_shipping_cost numeric,
  p_total numeric
)
returns bigint
language plpgsql
security definer
set search_path = public
as $$
declare
  v_number bigint;
begin
  if coalesce(trim(p_customer_name), '') = '' or coalesce(trim(p_customer_phone), '') = '' then
    raise exception 'Nome e telefone são obrigatórios';
  end if;
  if jsonb_typeof(p_items) <> 'array' or jsonb_array_length(p_items) = 0 then
    raise exception 'Pedido sem itens';
  end if;

  insert into public.orders (
    user_id, customer_name, customer_phone, address, shipping, items,
    subtotal, shipping_cost, total
  )
  values (
    auth.uid(), p_customer_name, p_customer_phone, p_address, p_shipping, p_items,
    p_subtotal, coalesce(p_shipping_cost, 0), p_total
  )
  returning number into v_number;

  return v_number;
end;
$$;

grant execute on function public.create_order(text, text, jsonb, jsonb, jsonb, numeric, numeric, numeric) to anon, authenticated;

-- ============================================================
-- Fotos (Supabase Storage)
-- ============================================================
insert into storage.buckets (id, name, public)
values ('produtos', 'produtos', true)
on conflict (id) do nothing;

drop policy if exists "Admins can list produtos" on storage.objects;
create policy "Admins can list produtos"
  on storage.objects for select
  using (bucket_id = 'produtos' and public.is_admin());

drop policy if exists "Admins can upload produtos" on storage.objects;
create policy "Admins can upload produtos"
  on storage.objects for insert
  with check (bucket_id = 'produtos' and public.is_admin());

drop policy if exists "Admins can update produtos" on storage.objects;
create policy "Admins can update produtos"
  on storage.objects for update
  using (bucket_id = 'produtos' and public.is_admin());

drop policy if exists "Admins can delete produtos" on storage.objects;
create policy "Admins can delete produtos"
  on storage.objects for delete
  using (bucket_id = 'produtos' and public.is_admin());

-- ============================================================
-- Para tornar uma conta administradora (troque o e-mail):
--
--   insert into public.admins (user_id)
--   select id from auth.users where email = 'tafibecker@gmail.com'
--   on conflict do nothing;
-- ============================================================
