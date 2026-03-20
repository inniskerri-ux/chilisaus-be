-- Legacy orders + order items imported from WooCommerce
-- legacy_order_items will be populated once we receive the WC order items export

create table if not exists public.legacy_orders (
  id                   uuid primary key default gen_random_uuid(),
  wc_order_id          integer unique not null,
  legacy_customer_id   uuid references public.legacy_customers(id) on delete set null,
  customer_email       text,
  status               text not null,              -- wc-completed, wc-cancelled, wc-refunded, etc.
  total_cents          integer not null default 0,
  shipping_cents       integer not null default 0,
  discount_cents       integer not null default 0,
  currency             text not null default 'EUR',
  payment_method       text,
  customer_note        text,
  billing_first_name   text,
  billing_last_name    text,
  billing_company      text,
  billing_phone        text,
  billing_address_1    text,
  billing_address_2    text,
  billing_city         text,
  billing_postcode     text,
  billing_country      text,
  shipping_first_name  text,
  shipping_last_name   text,
  shipping_company     text,
  shipping_address_1   text,
  shipping_address_2   text,
  shipping_city        text,
  shipping_postcode    text,
  shipping_country     text,
  ordered_at           date,
  completed_at         date,
  created_at           timestamptz not null default now()
);

-- Populated once the WC order items export is available
create table if not exists public.legacy_order_items (
  id                uuid primary key default gen_random_uuid(),
  legacy_order_id   uuid not null references public.legacy_orders(id) on delete cascade,
  wc_product_id     integer,
  product_id        uuid references public.products(id) on delete set null,  -- filled after product mapping
  product_name      text not null,
  quantity          integer not null default 1,
  price_cents       integer not null default 0,
  created_at        timestamptz not null default now()
);

create index if not exists idx_legacy_orders_customer      on public.legacy_orders(legacy_customer_id);
create index if not exists idx_legacy_orders_email         on public.legacy_orders(customer_email);
create index if not exists idx_legacy_orders_status        on public.legacy_orders(status);
create index if not exists idx_legacy_orders_ordered_at    on public.legacy_orders(ordered_at);
create index if not exists idx_legacy_order_items_order    on public.legacy_order_items(legacy_order_id);
create index if not exists idx_legacy_order_items_product  on public.legacy_order_items(product_id);

alter table public.legacy_orders      enable row level security;
alter table public.legacy_order_items enable row level security;

drop policy if exists "Legacy orders shop owner" on public.legacy_orders;
create policy "Legacy orders shop owner"
  on public.legacy_orders for all
  using (public.is_shop_owner())
  with check (public.is_shop_owner());

drop policy if exists "Legacy order items shop owner" on public.legacy_order_items;
create policy "Legacy order items shop owner"
  on public.legacy_order_items for all
  using (public.is_shop_owner())
  with check (public.is_shop_owner());
