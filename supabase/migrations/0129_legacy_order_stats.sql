-- Returns aggregated legacy order stats in a single DB call,
-- avoiding the 1000-row Supabase client limit.
create or replace function public.get_legacy_order_stats()
returns table (
  completed_orders  bigint,
  total_revenue     bigint,
  avg_order_value   bigint
)
language sql
security definer
set search_path = public
as $$
  select
    count(*)                                          as completed_orders,
    coalesce(sum(total_cents), 0)::bigint             as total_revenue,
    coalesce(avg(total_cents), 0)::bigint             as avg_order_value
  from public.legacy_orders
  where status = 'wc-completed';
$$;
