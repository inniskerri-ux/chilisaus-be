-- Legacy customers imported from WooCommerce
-- profile_id links to a Supabase account if/when the customer signs up

create table if not exists public.legacy_customers (
  id                  uuid primary key default gen_random_uuid(),
  wc_customer_id      integer unique not null,
  email               text unique not null,
  first_name          text,
  last_name           text,
  billing_company     text,
  billing_phone       text,
  billing_address_1   text,
  billing_address_2   text,
  billing_city        text,
  billing_postcode    text,
  billing_state       text,
  billing_country     text,
  shipping_first_name text,
  shipping_last_name  text,
  shipping_company    text,
  shipping_address_1  text,
  shipping_address_2  text,
  shipping_city       text,
  shipping_postcode   text,
  shipping_state      text,
  shipping_country    text,
  total_spent         numeric(10,2) not null default 0,
  order_count         integer not null default 0,
  wc_registered_at    timestamptz,
  wc_last_active      date,
  -- set when a legacy customer creates a new Supabase account
  profile_id          uuid references public.profiles(id) on delete set null,
  created_at          timestamptz not null default now()
);

create index if not exists idx_legacy_customers_email    on public.legacy_customers(email);
create index if not exists idx_legacy_customers_profile  on public.legacy_customers(profile_id);

alter table public.legacy_customers enable row level security;

drop policy if exists "Legacy customers shop owner" on public.legacy_customers;
create policy "Legacy customers shop owner"
  on public.legacy_customers for all
  using (public.is_shop_owner())
  with check (public.is_shop_owner());
