-- Fix security advisor warnings: recreate views with security_invoker
-- so they respect the querying user's RLS policies, not the view creator's.

create or replace view public.product_ratings
  with (security_invoker = true)
as
select
  product_id,
  round(avg(rating)::numeric, 1) as avg_rating,
  count(*)::integer               as review_count
from public.reviews
where product_id is not null
group by product_id;

create or replace view public.product_sales_summary
  with (security_invoker = true)
as
select
  p.id,
  p.name,
  p.slug,
  p.image_url,
  p.price_cents,
  p.wc_total_sales,
  coalesce(sum(loi.quantity), 0)::integer                          as legacy_units_sold,
  coalesce(sum(loi.price_cents * loi.quantity), 0)::integer        as legacy_revenue_cents,
  coalesce(pr.avg_rating, 0)::numeric                              as avg_rating,
  coalesce(pr.review_count, 0)::integer                            as review_count
from public.products p
left join public.legacy_order_items loi on loi.product_id = p.id
left join public.legacy_orders lo       on lo.id = loi.legacy_order_id and lo.status = 'wc-completed'
left join public.product_ratings pr     on pr.product_id = p.id
group by p.id, p.name, p.slug, p.image_url, p.price_cents, p.wc_total_sales, pr.avg_rating, pr.review_count;
