-- Security hardening from a Supabase advisor scan (2026-07-17), part 2.
-- Every SECURITY DEFINER function is directly callable via
-- /rest/v1/rpc/<name> by whichever roles hold EXECUTE — by default that's
-- anon + authenticated (Postgres grants EXECUTE to PUBLIC unless revoked).
-- Several of these had no internal authorization check.

-- 1. reduce_stock(name, qty) decrements a product's stock with zero purchase
--    verification. Pre-fix, any anonymous visitor could call it directly and
--    zero out inventory storewide. Only ever called by the Stripe webhook via
--    the service-role client (src/app/api/webhooks/stripe/route.ts:242).
--
--    increment_voucher_redemption(promo_code_id) increments a voucher's
--    redemption counter with no purchase check — could be used to exhaust a
--    limited-use discount code. Only ever called by the same webhook (line 141).
--
--    Also fixes a pre-existing, independent correctness bug in reduce_stock:
--    the bare `stock` reference inside `greatest(stock - p_quantity, 0)`
--    collided with the RETURNS TABLE's `stock` OUT parameter, so plpgsql
--    raised "column reference \"stock\" is ambiguous" on every call. The
--    Stripe webhook only logs that error and continues (doesn't throw), so
--    every completed order has been silently failing to decrement stock.
--    Fixed by fully qualifying the read as `products.stock`.
--
--    Lock both to service_role only. IMPORTANT: revoking EXECUTE from just
--    anon/authenticated is not sufficient — Postgres grants EXECUTE to the
--    PUBLIC pseudo-role by default at function creation, and anon/authenticated
--    are implicitly members of PUBLIC, so that grant must be revoked explicitly
--    too or the anon/authenticated-specific revoke is a no-op.
create or replace function public.reduce_stock(p_name text, p_quantity integer)
returns table(id uuid, stock integer, low_stock_threshold integer)
language plpgsql
security definer
set search_path to 'public'
as $$
begin
  return query
  update public.products
  set stock = greatest(products.stock - p_quantity, 0)
  where name = p_name
  returning products.id, products.stock, products.low_stock_threshold;
end;
$$;

create or replace function public.increment_voucher_redemption(p_promo_code_id text)
returns void
language plpgsql
security definer
set search_path to 'public'
as $$
begin
  update public.vouchers
  set redemptions_count = redemptions_count + 1
  where stripe_promo_code_id = p_promo_code_id;
end;
$$;

revoke execute on function public.reduce_stock(text, integer) from public;
revoke execute on function public.increment_voucher_redemption(text) from public;
grant execute on function public.reduce_stock(text, integer) to service_role;
grant execute on function public.increment_voucher_redemption(text) to service_role;

-- 2. handle_new_user()/set_product_owner() are trigger-only functions.
--    Postgres already refuses to execute trigger functions outside trigger
--    context (and trigger firing itself doesn't go through the EXECUTE ACL
--    check at all, so this revoke can't break the signup/product-insert
--    triggers) — this is hygiene, removing an unnecessary/confusing public
--    RPC surface. Same PUBLIC-vs-named-role caveat as above applies.
revoke execute on function public.handle_new_user() from public;
revoke execute on function public.set_product_owner() from public;

-- 3. Legacy analytics RPCs had no authorization check at all — any
--    unauthenticated visitor could call /rest/v1/rpc/get_legacy_revenue_by_month
--    etc. directly and pull real store revenue/order/product-sales data. The
--    admin analytics dashboard is the only intended caller (logged-in shop
--    owner's session). Guard each with is_shop_owner() so non-owners get an
--    empty result instead of real data, rather than revoking outright (the
--    admin dashboard calls these as `authenticated`, same role regular
--    customers use, so the distinction has to be made inside the function).
create or replace function public.get_legacy_order_stats()
returns table(completed_orders bigint, total_revenue bigint, avg_order_value bigint)
language sql
security definer
set search_path to 'public'
as $$
  select
    count(*)                                          as completed_orders,
    coalesce(sum(total_cents), 0)::bigint             as total_revenue,
    coalesce(avg(total_cents), 0)::bigint             as avg_order_value
  from public.legacy_orders
  where status = 'wc-completed'
    and public.is_shop_owner();
$$;

create or replace function public.get_legacy_order_stats(p_year integer default null::integer)
returns table(completed_orders bigint, total_revenue bigint, avg_order_value bigint, unique_customers bigint)
language sql
security definer
set search_path to 'public'
as $$
  select
    count(*)                                as completed_orders,
    coalesce(sum(total_cents), 0)::bigint   as total_revenue,
    coalesce(avg(total_cents), 0)::bigint   as avg_order_value,
    count(distinct customer_email)          as unique_customers
  from public.legacy_orders
  where status = 'wc-completed'
    and (p_year is null or extract(year from ordered_at)::integer = p_year)
    and public.is_shop_owner();
$$;

create or replace function public.get_legacy_order_years()
returns table(year integer)
language sql
security definer
set search_path to 'public'
as $$
  select distinct extract(year from ordered_at)::integer as year
  from public.legacy_orders
  where status = 'wc-completed'
    and ordered_at is not null
    and public.is_shop_owner()
  order by year;
$$;

create or replace function public.get_legacy_product_sales(p_start date, p_end date)
returns table(product_id uuid, product_name text, units bigint, revenue bigint)
language sql
security definer
set search_path to 'public'
as $$
  select
    loi.product_id,
    coalesce(p.name, loi.product_name) as product_name,
    sum(loi.quantity)::bigint           as units,
    sum(loi.price_cents * loi.quantity)::bigint as revenue
  from public.legacy_order_items loi
  join public.legacy_orders lo on lo.id = loi.legacy_order_id
  left join public.products p  on p.id  = loi.product_id
  where lo.status     = 'wc-completed'
    and lo.ordered_at between p_start and p_end
    and public.is_shop_owner()
  group by loi.product_id, coalesce(p.name, loi.product_name)
  order by revenue desc;
$$;

create or replace function public.get_legacy_revenue_by_month(p_start date, p_end date)
returns table(month date, revenue bigint, orders bigint)
language sql
security definer
set search_path to 'public'
as $$
  select
    date_trunc('month', ordered_at)::date as month,
    coalesce(sum(total_cents), 0)::bigint  as revenue,
    count(*)::bigint                       as orders
  from public.legacy_orders
  where status     = 'wc-completed'
    and ordered_at between p_start and p_end
    and public.is_shop_owner()
  group by date_trunc('month', ordered_at)
  order by month;
$$;

-- 4. search_path hardening for the remaining functions the advisor flagged
--    (trigger functions, no privilege escalation angle, but costs nothing).
create or replace function public.set_mailing_list_updated_at()
returns trigger
language plpgsql
set search_path to 'public'
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

create or replace function public.touch_updated_at()
returns trigger
language plpgsql
set search_path to 'public'
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

create or replace function public.update_updated_at_column()
returns trigger
language plpgsql
set search_path to 'public'
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

-- 5. GraphQL API is unused by the app (no graphql client/query anywhere in
--    src/) and is a live, unauthenticated query surface alongside the REST
--    API with no code path exercising it. NOTE: `graphql_public`'s grants
--    are owned by Supabase's managed `supabase_admin` role — `revoke usage
--    on schema graphql_public from anon, authenticated` was attempted here
--    but silently has no effect under the `postgres` migration role (no
--    error, no change to pg_namespace.nspacl). Disabling it requires the
--    Supabase Dashboard: Database > Extensions > disable pg_graphql (or
--    Project Settings > API > Data API > GraphQL toggle, if present).

-- 6. `events` is a dead/superseded table (the app uses `shop_events`
--    everywhere — see src/app/[locale]/events/page.tsx and
--    admin/events/EventsClient.tsx). It had RLS enabled with no policy,
--    which already denies anon/authenticated by default; this just makes
--    that explicit. webhook_logs is written only by the Stripe webhook via
--    the service-role client and was never meant to be publicly readable.
create policy "No public access to events"
  on public.events for all
  using (false) with check (false);

create policy "No public access to webhook_logs"
  on public.webhook_logs for all
  using (false) with check (false);
