-- Migration: Translate products batch 5 (Norwegian)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_no = 'Naturlig supersterk saus med Carolina Reaper og svart hvitløk. Ingredienser ; Balsamicoeddik, melasse, svart hvitløk (8,5%), Carolina Reaper (5,5%), tomatpulver, vann, løk, salt, svart pepper. Stjernen i denne sausen er den svarte hvitløken fermentert i 14 dager, som gir en søt, sirupsaktig tekstur med noter av soya og balsamico. Styrkegrad 15. Egnet for veganere.',
  ingredients_no = 'Balsamicoeddik, melasse, svart hvitløk (8,5%), Carolina Reaper (5,5%), tomatpulver, vann, løk, salt, svart pepper'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_no = 'Caribbean Box - 3 sauser med 3 forskjellige fruktige karibiske chilier. En tropisk reise gjennom varmen i Karibia. Egnet for veganere.',
  details_no = 'Inneholder 3x 100ml flasker med karibiske smaker.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_no = 'Vår nye Limited Edition Range - Bad Decision. En fermentert chilisaus med et ekstremt kick. Noen ganger er en dårlig beslutning den mest deilige. Styrkegrad 11.',
  ingredients_no = 'Fermenterte chilier, eddik, salt'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_no = 'SOM SETT PÅ HOT ONES. En av de tre beste sterke sausene fra USA. En tropisk vri med en prisvinnende smak. Skapt av en prisbelønt BBQ-kok. Styrkegrad 6.',
  ingredients_no = 'Habanero-chilier, tropiske frukter, løk, eddik, krydder'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_no = 'Stolt italiensk - Sterk saus med steinsopp (Porcini). Håndlaget i Parma, Italia. Rik, kompleks smak med kalabriske chilier, balsamicoeddik og italienske urter. Full av umami. Styrkegrad 6. Egnet for veganere.',
  ingredients_no = 'Ristet rød paprika, vann, balsamicoeddik fra Modena (11%), epleeddik, kalabriske chilier, sitronsaft, sukker, cayennepepper, krydder, salt, tørket steinsopp, hvitløk'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_no = 'Stolt italiensk - Trøffel sterk saus. Den utrolige aromaen av italienske trøfler kombinert med kalabriske chilier og balsamicoeddik. En luksuriøs oppgradering til enhver rett. Styrkegrad 5.',
  ingredients_no = 'Ristet rød paprika, vann, balsamicoeddik, trøffelaroma, kalabriske chilier, krydder'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_no = 'Pepper X taco-saus fra USA. Pepper X er anerkjent som verdens sterkeste chili. Denne taco-sausen bringer den ekstreme varmen til dine meksikanske favorittretter. Styrkegrad 15.',
  ingredients_no = 'Pepper X-chilier, eddik, tomater, krydder'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_no = 'Røyksmak Pepperkrydderblanding med Chipotle og hvitløk. Ingredienser ; Salt, svart pepper, hvitløk, hvite pepperkorn, chipotle-flak, sitronskall, rosmarin, basilikum, sitronsyre, timian, sitronverbena, tørkede chilier. En hemmelig ingrediens som løfter ethvert måltid. Røyksmak med en frisk sitronfinish. Egnet for veganere.',
  ingredients_no = 'Salt, svart pepper, hvitløk, hvit pepper, chipotle, sitronskall, rosmarin, basilikum, sitronsyre, timian, sitronverbena, tørkede chilier'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
