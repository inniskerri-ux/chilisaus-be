-- Flag newsletter signups that already received a discount in the legacy WooCommerce store
-- so they are excluded from receiving the WELCOME10 voucher on confirmation.

alter table public.newsletter_signups
  add column if not exists legacy_discount_used boolean not null default false;

-- Pre-seed the 34 legacy customers who used the kdmxeqb7 coupon code.
-- If they later sign up for the newsletter, they will be confirmed normally
-- but won't receive the WELCOME10 voucher.
insert into public.newsletter_signups (email, token, legacy_discount_used)
values
  ('akademogorod@gmail.com',       gen_random_uuid()::text, true),
  ('anil_dpm69@hotmail.com',       gen_random_uuid()::text, true),
  ('bart.vancorenland@gmail.com',  gen_random_uuid()::text, true),
  ('brunocappaert@live.be',        gen_random_uuid()::text, true),
  ('chili@wmhdesign.de',           gen_random_uuid()::text, true),
  ('chilisausbelgium@gmail.com',   gen_random_uuid()::text, true),
  ('cvanderhave@actiris.be',       gen_random_uuid()::text, true),
  ('denisvanbelle@gmail.com',      gen_random_uuid()::text, true),
  ('devilfp+chilisaus@gmail.com',  gen_random_uuid()::text, true),
  ('dirjax+chilisaus@gmail.com',   gen_random_uuid()::text, true),
  ('dj_wacko666@hotmail.com',      gen_random_uuid()::text, true),
  ('ewarlot@gmail.com',            gen_random_uuid()::text, true),
  ('floetsch@hotmail.de',          gen_random_uuid()::text, true),
  ('gareth.timm26@gmail.com',      gen_random_uuid()::text, true),
  ('gdelissen@gmail.com',          gen_random_uuid()::text, true),
  ('godofarms@gmail.com',          gen_random_uuid()::text, true),
  ('it_is_denis@hotmail.com',      gen_random_uuid()::text, true),
  ('jo.smolders1@pandora.be',      gen_random_uuid()::text, true),
  ('johan@netcad.be',              gen_random_uuid()::text, true),
  ('kasper.denouden@gmail.com',    gen_random_uuid()::text, true),
  ('kevin.dekeyser87@gmail.com',   gen_random_uuid()::text, true),
  ('lauke.dekok@hotmail.com',      gen_random_uuid()::text, true),
  ('marcinho@gmx.de',              gen_random_uuid()::text, true),
  ('melvin.migom@gmail.com',       gen_random_uuid()::text, true),
  ('micktaal@hotmail.com',         gen_random_uuid()::text, true),
  ('nicky.sierens@hotmail.com',    gen_random_uuid()::text, true),
  ('pascal.de.rouck@telenet.be',   gen_random_uuid()::text, true),
  ('prahst@web.de',                gen_random_uuid()::text, true),
  ('steve_goethals@hotmail.com',   gen_random_uuid()::text, true),
  ('stinus.renders@hotmail.com',   gen_random_uuid()::text, true),
  ('toby.legrand@gmail.com',       gen_random_uuid()::text, true),
  ('v.likhnikevich@gmail.com',     gen_random_uuid()::text, true),
  ('vincent.iliano@gmail.com',     gen_random_uuid()::text, true),
  ('xavierd@ouranos.be',           gen_random_uuid()::text, true)
on conflict (email) do update
  set legacy_discount_used = true;
