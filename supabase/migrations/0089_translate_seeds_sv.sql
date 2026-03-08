-- Migration: Translate base seeds (Swedish)

-- Categories
UPDATE public.categories SET name_sv = 'Klassisk starksås', description_sv = 'Vardagliga chilisåser för varje måltid.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_sv = 'Fermenterad', description_sv = 'Komplex syrlighet från långsam fermentering.' WHERE slug = 'fermented';
UPDATE public.categories SET name_sv = 'Rökt', description_sv = 'Rykande såser med eldrostade chilifrukter.' WHERE slug = 'smoky';
UPDATE public.categories SET name_sv = 'Fruktig', description_sv = 'Friska, saftiga blandningar med tropiska frukter.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_sv = 'Chiliutmaningar & starka snacks', description_sv = 'Testa dina gränser med våra starkaste snacks.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_sv = 'Chiliextrakt', description_sv = 'Rena capsaicinextrakt för extrem hetta.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_sv = 'Chiliolja', description_sv = 'Infuserade oljor för matlagning eller smaksättning.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_sv = 'Torkad chili', description_sv = 'Frukter, flingor och pulver för ditt kök.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_sv = 'Presentförpackningar', description_sv = 'Den perfekta presenten till chiliälskaren.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_sv = 'Stark honung', description_sv = 'Honung med chili för en söt-stark touch.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_sv = 'Salter & kryddor', description_sv = 'Lyft dina rätter med våra kryddblandningar.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_sv = 'Jalapeño', description_sv = 'Balanserad hetta från den gröna chilifrukten.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_sv = 'Habanero', description_sv = 'Brinnande citrusarom och hetta.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_sv = 'Ghost Pepper', description_sv = 'Naga Jolokia-intensitet för spänningssökare.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_sv = 'Carolina Reaper', description_sv = 'Världsrekord-hetta med fruktiga toner.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_sv = 'Scotch Bonnet', description_sv = 'Karibisk chili med fruktig och intensiv smak.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_sv = 'Trinidad Scorpion', description_sv = 'Ett kraftfullt och ihållande bett.' WHERE slug = 'trinidad-scorpion';
