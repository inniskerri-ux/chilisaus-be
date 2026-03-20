-- Update get_legacy_order_stats to support optional year filtering
create or replace function public.get_legacy_order_stats(p_year integer default null)
returns table (
  completed_orders  bigint,
  total_revenue     bigint,
  avg_order_value   bigint,
  unique_customers  bigint
)
language sql
security definer
set search_path = public
as $$
  select
    count(*)                                as completed_orders,
    coalesce(sum(total_cents), 0)::bigint   as total_revenue,
    coalesce(avg(total_cents), 0)::bigint   as avg_order_value,
    count(distinct customer_email)          as unique_customers
  from public.legacy_orders
  where status = 'wc-completed'
    and (p_year is null or extract(year from ordered_at)::integer = p_year);
$$;

-- Also expose the distinct years that have completed orders (for the year selector)
create or replace function public.get_legacy_order_years()
returns table (year integer)
language sql
security definer
set search_path = public
as $$
  select distinct extract(year from ordered_at)::integer as year
  from public.legacy_orders
  where status = 'wc-completed'
    and ordered_at is not null
  order by year;
$$;
