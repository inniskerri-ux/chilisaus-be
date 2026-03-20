-- Pre-computed average rating and review count per product
create or replace view public.product_ratings as
select
  product_id,
  round(avg(rating)::numeric, 1) as avg_rating,
  count(*)::integer               as review_count
from public.reviews
where product_id is not null
group by product_id;
