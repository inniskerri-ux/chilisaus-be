alter table public.products
  add column if not exists is_vegan boolean not null default false;
