-- "Jampots" had country = 'United KIngdom' (typo, capital I mid-word),
-- which showed up as a separate, duplicate country filter option in the shop
-- alongside the correctly-spelled 'United Kingdom' used by every other UK brand.

update public.brands set country = 'United Kingdom' where slug = 'jampots';
