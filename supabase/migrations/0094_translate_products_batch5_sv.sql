-- Migration: Translate products batch 5 (Swedish)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_sv = 'Naturlig superstark sås med Carolina Reaper och svart vitlök. Ingredienser ; Balsamvinäger, melass, svart vitlök (8,5%), Carolina Reaper (5,5%), tomatpulver, vatten, lök, salt, svartpeppar. Stjärnan i denna sås är den svarta vitlöken fermenterad i 14 dagar, vilket ger en söt, sirapsliknande textur med toner av soja och balsamico. Hetta 15. Lämplig för veganer.',
  ingredients_sv = 'Balsamvinäger, melass, svart vitlök (8,5%), Carolina Reaper (5,5%), tomatpulver, vatten, lök, salt, svartpeppar'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_sv = 'Caribbean Box - 3 såser med 3 olika fruktiga karibiska chilifrukter. En tropisk resa genom Karibiens hetta. Lämplig för veganer.',
  details_sv = 'Innehåller 3x 100ml flaskor med karibiska smaker.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_sv = 'Vår nya Limited Edition Range - Bad Decision. En fermenterad chilisås med en extrem kick. Ibland är ett dåligt beslut det mest utsökta. Hetta 11.',
  ingredients_sv = 'Fermenterad chili, vinäger, salt'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_sv = 'SOM SETTS PÅ HOT ONES. En av de tre bästa starka såserna från USA. En tropisk twist med en prisbelönt smak. Skapad av en prisbelönt BBQ-kock. Hetta 6.',
  ingredients_sv = 'Habanero-chili, tropiska frukter, lök, vinäger, kryddor'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_sv = 'Stolt italiensk - Starksås med Karl-Johansvamp (Porcini). Handgjord i Parma, Italien. Rik, komplex smak med kalabrisk chili, balsamvinäger och italienska örter. Full av umami. Hetta 6. Lämplig för veganer.',
  ingredients_sv = 'Rostad röd paprika, vatten, balsamvinäger från Modena (11%), äppelcidervinäger, kalabrisk chili, citronjuice, socker, cayennepeppar, kryddor, salt, torkad Karl-Johansvamp, vitlök'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_sv = 'Stolt italiensk - Tryffel-starksås. Den otroliga aromen av italiensk tryffel kombinerat med kalabrisk chili och balsamvinäger. En lyxig uppgradering av varje rätt. Hetta 5.',
  ingredients_sv = 'Rostad röd paprika, vatten, balsamvinäger, tryffelarom, kalabrisk chili, kryddor'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_sv = 'Pepper X tacosås från USA. Pepper X är erkänd som världens starkaste chili. Denna tacosås tar den extrema hettan till dina mexikanska favoriträtter. Hetta 15.',
  ingredients_sv = 'Pepper X-chili, vinäger, tomater, kryddor'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_sv = 'Smoky Pepper Kryddmix med Chipotle och vitlök. Ingredienser ; Salt, svartpeppar, vitlök, vitpepparkorn, chipotle-flingor, citronskal, rosmarin, basilika, citronsyra, timjan, citronverbena, torkad chili. En hemlig ingrediens som lyfter varje måltid. Rökig med en fräsch citronfinish. Lämplig för veganer.',
  ingredients_sv = 'Salt, svartpeppar, vitlök, vitpeppar, chipotle, citronskal, rosmarin, basilika, citronsyra, timjan, citronverbena, torkad chili'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
