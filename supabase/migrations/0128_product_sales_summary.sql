-- Aggregates legacy WooCommerce order data per product for admin dashboard
create or replace view public.product_sales_summary as
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
