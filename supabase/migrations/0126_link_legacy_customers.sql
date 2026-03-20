-- Extend handle_new_user() to automatically link legacy WooCommerce customers
-- when they create a new Supabase account with the same email.
--
-- On match it will:
--   1. Set legacy_customers.profile_id = new auth user id
--   2. Copy name + phone + country into profiles
--   3. Insert billing and shipping addresses into addresses table

create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
declare
  owner_count    integer;
  legacy         record;
  billing_street text;
  ship_street    text;
begin
  -- Create profile (existing behaviour)
  select count(*) into owner_count from public.profiles where role = 'shop_owner';
  insert into public.profiles (id, role)
    values (new.id, case when owner_count = 0 then 'shop_owner' else 'customer' end)
    on conflict (id) do nothing;

  -- Check for a matching legacy customer by email
  select * into legacy
  from public.legacy_customers
  where lower(email) = lower(new.email)
  limit 1;

  if found then
    -- Link the legacy record to the new profile
    update public.legacy_customers
    set profile_id = new.id
    where id = legacy.id;

    -- Copy name, phone, country into the profile
    update public.profiles
    set
      first_name = coalesce(legacy.first_name, first_name),
      last_name  = coalesce(legacy.last_name,  last_name),
      phone      = coalesce(legacy.billing_phone, phone),
      country    = coalesce(legacy.billing_country, country)
    where id = new.id;

    -- Insert billing address if we have enough data
    if legacy.billing_address_1 is not null or legacy.billing_city is not null then
      billing_street := concat_ws(chr(10), legacy.billing_address_1, legacy.billing_address_2);
      insert into public.addresses (user_id, label, street, city, region, postal_code, country)
      values (
        new.id, 'billing',
        nullif(trim(billing_street), ''),
        legacy.billing_city,
        legacy.billing_state,
        legacy.billing_postcode,
        legacy.billing_country
      );
    end if;

    -- Insert shipping address if different from billing (or if billing was empty)
    if legacy.shipping_address_1 is not null or legacy.shipping_city is not null then
      ship_street := concat_ws(chr(10), legacy.shipping_address_1, legacy.shipping_address_2);
      -- Only insert if it differs from billing
      if ship_street  is distinct from billing_street
      or legacy.shipping_city    is distinct from legacy.billing_city
      or legacy.shipping_postcode is distinct from legacy.billing_postcode then
        insert into public.addresses (user_id, label, street, city, region, postal_code, country)
        values (
          new.id, 'shipping',
          nullif(trim(ship_street), ''),
          legacy.shipping_city,
          legacy.shipping_state,
          legacy.shipping_postcode,
          legacy.shipping_country
        );
      end if;
    end if;
  end if;

  return new;
end;
$$;

-- One-time backfill: link any existing Supabase profiles to legacy customers
-- (for users who signed up before this migration)
update public.legacy_customers lc
set profile_id = au.id
from auth.users au
where lower(lc.email) = lower(au.email)
  and lc.profile_id is null;

-- Also backfill profile name/phone/country for those existing users
update public.profiles p
set
  first_name = coalesce(p.first_name, lc.first_name),
  last_name  = coalesce(p.last_name,  lc.last_name),
  phone      = coalesce(p.phone,      lc.billing_phone),
  country    = coalesce(p.country,    lc.billing_country)
from public.legacy_customers lc
where lc.profile_id = p.id
  and (lc.first_name is not null or lc.last_name is not null);
