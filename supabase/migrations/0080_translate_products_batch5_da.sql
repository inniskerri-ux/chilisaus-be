-- Migration: Translate products batch 5 (Danish)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_da = 'Naturlig super stærk sauce med Carolina Reaper og sort hvidløg. Ingredienser ; Balsamicoeddike, melasse, sort hvidløg (8,5%), Carolina Reaper (5,5%), tomatpulver, vand, løg, salt, sort peber. Stjernen i denne sauce er det sorte hvidløg fermenteret i 14 dage, hvilket giver en sød, sirupsagtig tekstur med noter af soja og balsamico. Styrke 15. Velegnet til veganere.',
  ingredients_da = 'Balsamicoeddike, melasse, sort hvidløg (8,5%), Carolina Reaper (5,5%), tomatpulver, vand, løg, salt, sort peber'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_da = 'Caribbean Box - 3 saucer med 3 forskellige frugtige caribiske chilier. En tropisk rejse gennem Caribiens varme. Velegnet til veganere.',
  details_da = 'Indeholder 3x 100ml flasker med caribiske smage.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_da = 'Vores nye Limited Edition Range - Bad Decision. En fermenteret chilisauce med et ekstremt kick. Nogle gange er en dårlig beslutning den mest lækre. Styrke 11.',
  ingredients_da = 'Fermenterede chilier, eddike, salt'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_da = 'SOM SET I HOT ONES. En af de tre bedste stærke saucer fra USA. Et tropisk twist med en prisvindende smag. Skabt af en prisvindende BBQ-kok. Styrke 6.',
  ingredients_da = 'Habanero chilier, tropiske frugter, løg, eddike, krydderier'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_da = 'Stolt italiensk - Stærk sauce med Karl Johan svampe (Porcini). Håndlavet i Parma, Italien. Rig, kompleks smag med calabriske chilier, balsamicoeddike og italienske krydderurter. Fuld af umami. Styrke 6. Velegnet til veganere.',
  ingredients_da = 'Ristede røde peberfrugter, vand, balsamicoeddike fra Modena (11%), æbleeddike, calabriske chilier, citronsaft, sukker, cayennepeber, krydderier, salt, tørrede Karl Johan svampe, hvidløg'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_da = 'Stolt italiensk - Trøffel stærk sauce. Den utrolige aroma af italienske trøfler kombineret med calabriske chilier og balsamicoeddike. En luksuriøs tilføjelse til enhver ret. Styrke 5.',
  ingredients_da = 'Ristede røde peberfrugter, vand, balsamicoeddike, trøffelaroma, calabriske chilier, krydderier'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_da = 'Pepper X taco sauce fra USA. Pepper X er anerkendt som verdens stærkeste chili. Denne taco sauce bringer den ekstreme varme til dine mexicanske livretter. Styrke 15.',
  ingredients_da = 'Pepper X chilier, eddike, tomater, krydderier'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_da = 'Smoky Pepper Krydderimix med Chipotle og hvidløg. Ingredienser ; Salt, sort peber, hvidløg, hvide peberkorn, chipotle-flager, citronskal, rosmarin, basilikum, citronsyre, timian, citronverbena, tørrede chilier. En hemmelig ingrediens der løfter ethvert måltid. Røget med en frisk citron-finish. Velegnet til veganere.',
  ingredients_da = 'Salt, sort peber, hvidløg, hvid peber, chipotle, citronskal, rosmarin, basilikum, citronsyre, timian, citronverbena, tørrede chilier'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
