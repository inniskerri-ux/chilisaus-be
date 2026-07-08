alter table public.products
  add column if not exists is_sugar_free boolean not null default false;
