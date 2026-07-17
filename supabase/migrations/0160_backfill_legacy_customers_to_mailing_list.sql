-- Backfill mailing_list with email addresses from legacy_customers/legacy_orders
-- (old WooCommerce store) that never appeared in the Mailchimp export.
--
-- These people never opted into marketing emails (they're not in Mailchimp,
-- and checked out as guests on the old store), so they're inserted as
-- status = 'unsubscribed' rather than 'subscribed'. This keeps them tracked
-- as known customers and syncs them to Resend as a contact record, but they
-- will not receive campaigns unless they explicitly (re)subscribe.

with legacy_emails as (
  select distinct lower(email) as email
  from public.legacy_customers
  where email is not null and email <> ''

  union

  select distinct lower(customer_email) as email
  from public.legacy_orders
  where customer_email is not null and customer_email <> ''
),
customer_names as (
  select distinct on (lower(email))
    lower(email) as email, first_name, last_name
  from public.legacy_customers
  where email is not null and email <> ''
  order by lower(email), id
),
order_names as (
  select distinct on (lower(customer_email))
    lower(customer_email) as email, billing_first_name as first_name, billing_last_name as last_name
  from public.legacy_orders
  where customer_email is not null and customer_email <> ''
  order by lower(customer_email), ordered_at desc nulls last
)
insert into public.mailing_list (email, first_name, last_name, status, source)
select
  le.email,
  coalesce(cn.first_name, on_.first_name),
  coalesce(cn.last_name, on_.last_name),
  'unsubscribed',
  'legacy'
from legacy_emails le
left join customer_names cn on cn.email = le.email
left join order_names on_ on on_.email = le.email
where not exists (
  select 1 from public.mailing_list ml where lower(ml.email) = le.email
)
on conflict (email) do nothing;
