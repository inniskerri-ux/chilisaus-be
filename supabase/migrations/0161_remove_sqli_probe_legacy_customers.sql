-- Removes 16 fake legacy_customers rows created by an automated SQLi scan
-- against the old WooCommerce registration/checkout form on 2025-10-12
-- (wc_customer_id 825-840, all "testing@example.com..." + SQLi payload,
-- no linked orders or profile_id). These were pulled in unfiltered by the
-- WooCommerce customer import and also got carried into mailing_list by
-- migration 0160; clean up both.

delete from public.mailing_list
where source = 'legacy'
  and email !~* '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

delete from public.legacy_customers
where wc_customer_id between 825 and 840
  and email !~* '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
