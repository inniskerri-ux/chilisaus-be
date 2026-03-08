-- Migration: Translate products batch 5 (Dutch)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_nl = 'Natuurlijke superhete saus met Carolina Reaper en zwarte knoflook. Ingrediënten; Balsamicoazijn, melasse, zwarte knoflook (8,5%), Carolina Reaper (5,5%), tomatenpoeder, water, ui, zout, zwarte peper. De ster van deze saus is de 14 dagen lang gefermenteerde zwarte knoflook, wat zorgt voor een zoete, stroopachtige textuur met hints van soja en balsamico. Heetheidsniveau 15. Geschikt voor veganisten.',
  ingredients_nl = 'Balsamicoazijn, melasse, zwarte knoflook (8,5%), Carolina Reaper (5,5%), tomatenpoeder, water, ui, zout, zwarte peper'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_nl = 'De Caribbean Box - 3 sauzen met 3 verschillende fruitige Caribische pepers. Een tropische reis door de hitte van de Caraïben. Geschikt voor veganisten.',
  details_nl = 'Bevat 3x 100ml flessen met Caribische smaken.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_nl = 'Onze nieuwe Limited Edition Range - Bad Decision. Een gefermenteerde chili saus met een extreme kick. Soms is een slechte beslissing de lekkerste. Heetheidsniveau 11.',
  ingredients_nl = 'Gefermenteerde pepers, azijn, zout'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_nl = 'ZOALS TE ZIEN OP HOT ONES. Een van de drie beste hete sauzen uit de VS. Een tropische twist met een bekroonde smaak. Gemaakt door een prijswinnende BBQ-chef. Heetheidsniveau 6.',
  ingredients_nl = 'Habanero pepers, tropisch fruit, uien, azijn, specerijen'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_nl = 'Trots Italiaans - Hete saus met eekhoorntjesbrood (Porcini). Handgemaakt in Parma, Italië. Rijke, complexe smaak met Calabrische pepers, balsamicoazijn en Italiaanse kruiden. Vol van umami. Heetheidsniveau 6. Geschikt voor veganisten.',
  ingredients_nl = 'Geroosterde rode paprika, water, balsamicoazijn van Modena (11%), appelazijn, Calabrische pepers, citroensap, suiker, cayennepeper, specerijen, zout, gedroogd eekhoorntjesbrood, knoflook'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_nl = 'Trots Italiaans - Truffel hete saus. Het ongelooflijke aroma van Italiaanse truffels gecombineerd met Calabrische pepers en balsamicoazijn. Een luxe toevoeging aan elk gerecht. Heetheidsniveau 5.',
  ingredients_nl = 'Geroosterde rode paprika, water, balsamicoazijn, truffelaroma, Calabrische pepers, specerijen'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_nl = 'Pepper X hete saus uit de VS. Pepper X is erkend als de heetste peper ter wereld. Deze tacosaus brengt die extreme hitte naar je favoriete Mexicaanse gerechten. Heetheidsniveau 15.',
  ingredients_nl = 'Pepper X pepers, azijn, tomaten, specerijen'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_nl = 'Rokerige Peper Kruidenmix met Chipotle en Knoflook. Ingrediënten; Zout, zwarte peper, knoflook, witte peperkorrels, chipotle vlokken, citroenschil, rozemarijn, basilicum, citroenzuur, tijm, citroenverbena, gedroogde chili''s. Een geheim ingrediënt dat elke maaltijd naar een hoger niveau tilt. Rokerig met een frisse citroenafdronk. Geschikt voor veganisten.',
  ingredients_nl = 'Zout, zwarte peper, knoflook, witte peperkorrels, chipotle vlokken, citroenschil, rozemarijn, basilicum, citroenzuur, tijm, citroenverbena, gedroogde chili''s'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';

-- Pink - Chipotle and Pineapple
UPDATE public.products SET 
  description_nl = 'PINK - Chipotle & Ananas. Ingrediënten: Uien, paprika, ananas (17%), witte wijnazijn, rode Jalapeño chili, limoen, Chipotle chili (1,7%), olijfol, zout. Een heerlijke balans tussen zoet en rokerig. Heetheidsniveau 4. Geschikt voor veganisten.',
  ingredients_nl = 'Uien, paprika, ananas (17%), witte wijnazijn, rode Jalapeño chili, limoen, Chipotle chili (1,7%), olijfol, zout'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_nl = 'Gedroogde Carolina Reaper Pepernoten (1,8 miljoen - 2,2 miljoen SHU). De heetste peper ter wereld in gedroogde vorm. Voor de echte waaghalzen die hun eigen sauzen of gerechten extreem heet willen maken. Geschikt voor veganisten.',
  ingredients_nl = 'Gedroogde Carolina Reaper pepers'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_nl = '"God Slayer" EXTREME Hot Sauce. Een van de meest intense sauzen in ons assortiment. Alleen voor de meest ervaren hitteliefhebbers. Heetheidsniveau 15.',
  ingredients_nl = 'Carolina Reaper, extracten, azijn, zout'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_nl = 'ORANGE - Ghost Pepper & Mango. Ingrediënten: Paprika, uien, witte wijnazijn, mango (12%), appels, Bhut Jolokia "Ghost" chili (7%), limoen, olijfol, komijn, zeezout. Een prachtig uitgebalanceerde saus waar de hitte van de Ghost Pepper langzaam opbouwt. Heetheidsniveau 10. Geschikt voor veganisten.',
  ingredients_nl = 'Paprika, uien, witte wijnazijn, mango (12%), appels, Bhut Jolokia "Ghost" chili (7%), limoen, olijfol, komijn, zeezout'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_nl = 'Mexicaanse Gerookte Chipotle Gedroogde Pepernoten (2500 - 8000 SHU). Gedroogde en gerookte Jalapeño''s. Onmisbaar voor een authentieke rooksmaak in stoofschotels en soepen. Geschikt voor veganisten.',
  ingredients_nl = 'Gerookte gedroogde Jalapeño pepers'
WHERE slug = 'mexican-smoked-chipotle-peppers';
