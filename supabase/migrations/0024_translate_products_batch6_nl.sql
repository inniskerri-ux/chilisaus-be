-- Migration: Translate products batch 6 (Dutch)

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_nl = 'Koffie & Ghost Pepper Kruidenmix. Een unieke rub die de diepe smaak van koffie combineert met de intense hitte van de Ghost Pepper. Perfect voor op de BBQ, vooral bij rundvlees of varkensvlees. Heetheidsniveau 8.',
  ingredients_nl = 'Koffie, Ghost Pepper, suiker, zout, specerijen'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter ORIGINAL (Already translated in batch 1, but ensuring it's updated if missed)
UPDATE public.products SET 
  description_nl = 'Happy Hatter Hot Sauce – ORIGINAL. Zoals te zien in het populaire tv-kookprogramma “Dagelijkse Kost”. Een saus op basis van tomaten met een vleugje perzikzoetheid en Madame Jeanette pepers voor een fruitige, pittige kick. Heetheidsniveau 6. Geschikt voor veganisten.',
  ingredients_nl = 'Tomaat, perzik, rode ui, chilipepers (Madame Jeanette, Birds eye), knoflook, appel, azijn, rietsuiker, limoen, zout, selderij, kruiden'
WHERE slug = 'happy-hatter-hot-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_nl = 'Reaper Habanero (Heetheid 10). Een krachtige saus van Wiltshire Chilli Farm die de extreme hitte van de Carolina Reaper combineert met de klassieke smaak van rode Habanero''s. Eenvoudig maar doeltreffend. Geschikt voor veganisten.',
  ingredients_nl = 'Rode Habanero, appelazijn, bruine suiker, ui, rode paprika, Carolina Reaper, gerookte paprika, knoflook'
WHERE slug = 'reaper-habanero';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_nl = 'Mango Chilli Sauce (Heetheid 7). Een heerlijk fruitige saus waar de zoetheid van rijpe mango''s perfect samengaat met een scherpe chili-kick. Ideaal bij kip, salades of als dipsaus. Geschikt voor veganisten.',
  ingredients_nl = 'Mango, chilipepers, azijn, suiker, zout'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_nl = 'Sweet Chilli Sauce (Heetheid 1). De klassieke milde chilisaus die iedereen lekker vindt. Perfecte balans tussen zoet en een heel klein beetje pit. Geweldig bij loempia''s of als algemene tafelsaus. Geschikt voor veganisten.',
  ingredients_nl = 'Chilipepers, suiker, azijn, knoflook, zout'
WHERE slug = 'sweet-chilli-sauce';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_nl = 'Knoflook Chili Zout (Heetheid 3). Een heerlijk aromatisch zout met een milde kick. Ideaal om over aardappelen, groenten of vlees te strooien voor een directe smaakverbetering. Geschikt voor veganisten.',
  ingredients_nl = 'Zeezout, knoflook, chilipepers'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_nl = 'BLACK - Carolina Reaper & Bosbessen. Ingrediënten: Paprika, uien, witte wijnazijn, appels, bosbessen (10%), Carolina Reaper chili (8%), limoen, olijfol, zeezout. Een ongebruikelijke maar fantastische combinatie waarbij de zoetzure bosbes de extreme hitte van de Reaper prachtig aanvult. Heetheidsniveau 10. Geschikt voor veganisten.',
  ingredients_nl = 'Paprika, uien, witte wijnazijn, appels, bosbessen (10%), Carolina Reaper chili (8%), limoen, olijfol, zeezout'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_nl = 'BLUE - Scotch Bonnet & Caribische Kruiden. Ingrediënten: Paprika, uien, witte wijnazijn, Scotch Bonnet chili (13%), gember, knoflook, limoen, olijfol, selderij, zout, kruidenmix. Een authentieke smaak van de Caraïben met de kenmerkende hitte en smaak van Scotch Bonnet pepers. Heetheidsniveau 5. Geschikt voor veganisten.',
  ingredients_nl = 'Paprika, uien, witte wijnazijn, Scotch Bonnet chili (13%), gember, knoflook, limoen, olijfol, selderij, zout, kruidenmix'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_nl = 'Naga Chilli Sauce (Heetheid 10). Een van de vlaggenschepen van Wiltshire Chilli Farm. Gemaakt met de beruchte Naga Ghost Pepper voor een intense, langdurige hitte die langzaam opbouwt. Voor de ervaren chili-eter. Geschikt voor veganisten.',
  ingredients_nl = 'Naga Ghost pepers, azijn, zout, specerijen'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_nl = 'Caribbean Chilli Sauce (Heetheid 9). Een tropische explosie van hitte en smaak. Geïnspireerd op de traditionele sauzen van de eilanden, rijk aan pepers en zonnige aroma''s. Geschikt voor veganisten.',
  ingredients_nl = 'Caribische pepers, azijn, specerijen, zout'
WHERE slug = 'caribbean-chilli-sauce';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_nl = '"Regret" SUPER EXTREME Hot Sauce. De naam zegt het al... Met een heetheidsniveau van 20 is dit een van de heetste sauzen die we ooit hebben gehad. Alleen voor de echte "chiliheads" die geen angst kennen. Gebruik op eigen risico!',
  ingredients_nl = 'Extreem hete pepers (Carolina Reaper), chili-extract, azijn, zout'
WHERE slug = 'regret-extreme-hot-sauce';
