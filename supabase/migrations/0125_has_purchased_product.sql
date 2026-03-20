-- Returns true if the current authenticated user has purchased the given product,
-- checking both legacy WooCommerce orders and new Stripe orders.
create or replace function public.has_purchased_product(p_product_id uuid)
returns boolean
language sql
security definer
set search_path = public
as $$
  select exists (
    -- Legacy WooCommerce orders matched by email
    select 1
    from public.legacy_order_items loi
    join public.legacy_orders lo on lo.id = loi.legacy_order_id
    where loi.product_id = p_product_id
      and lo.customer_email = (select email from auth.users where id = auth.uid())
      and lo.status = 'wc-completed'
  )
  or exists (
    -- New Stripe orders matched by user_id
    select 1
    from public.order_items oi
    join public.orders o on o.id = oi.order_id
    where oi.product_id = p_product_id
      and o.user_id = auth.uid()
      and o.status = 'paid'
  );
$$;
