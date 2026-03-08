-- Migration: Translate products batch 4 (Dutch)

-- Naga Chili Salt
UPDATE public.products SET 
  description_nl = 'Ingrediënten; Zeezout, witte peperkorrels, Naga chili. Geef je eten een boost met de intens explosieve hittecombinatie van gedroogde Naga / Ghost Peppers, hoogwaardig zeezout en hele witte peperkorrels. Strooi over alles voor een serieuze hitte. Geschikt voor veganisten.',
  ingredients_nl = 'Zeezout, witte peperkorrels, Naga chili'
WHERE slug = 'naga-chili-salt-heat-level-9-65g';

-- Hot Headz - Naga Hot Sauce
UPDATE public.products SET 
  description_nl = 'Hot Headz Naga Hot Sauce. Ingrediënten; Tomaat, water, suikerrietazijn, suiker, tomatenpuree, ui, verse Naga Bhut Jolokia chili (4%), sojaolie, zout, habanero chili, mango, Scorpion chili, gember, knoflook, havervezel, azijnzuur, xanthaangom, zonnebloemolie. Krachtige en gedurfde smaken uit de keukens van Costa Rica. Heetheidsniveau 10.',
  ingredients_nl = 'Tomaat, water, suikerrietazijn, suiker, tomatenpuree, ui, verse Naga Bhut Jolokia chili (4%), sojaolie, zout, habanero chili, mango, Scorpion chili, gember, knoflook, havervezel, azijnzuur, xanthaangom, zonnebloemolie'
WHERE slug = 'hot-headz-naga-hot-sauce';

-- Hot Headz - Chipotle Hot Sauce
UPDATE public.products SET 
  description_nl = 'Hot Headz Chipotle Hot Sauce. Ingrediënten; Water, appelazijn, habanero chili, suikerrietazijn, zout, paprika, knoflook, Cayenne chili, specerijen, Chipotle chili (1,2%), suiker, ui, citroenzuur, xanthaangom, paprika-extract, azijnzuur, ascorbinezuur. Een subtiele, niet te zwaar gerookte saus voor die typische chipotle-smaak. Heerlijk bij BBQ, burgers of taco''s. Heetheidsniveau 5.',
  ingredients_nl = 'Water, appelazijn, habanero chili, suikerrietazijn, zout, paprika, knoflook, Cayenne chili, specerijen, Chipotle chili (1,2%), suiker, ui, citroenzuur, xanthaangom, paprika-extract, azijnzuur, ascorbinezuur'
WHERE slug = 'hot-headz-chipotle-hot-sauce-heat-level-5-148ml';

-- Chilisaus.be - The 2025 Edition - ROASTED HABANERO
UPDATE public.products SET 
  description_nl = 'De Editie 2025 - Onze jaarlijkse sausrelease, met dit jaar onze favoriete peper in de hoofdrol: de Habanero! Ingrediënten; Habanero pepers, verse tomaat, appelsap, rode ui, rode paprika, water, limoen, appelazijn, rodewijnazijn, beetwortel, wortel, knoflook, olijfol, kruiden & specerijen, bruine suiker, zout, zwarte thee. Een samenwerking met White Whale Sauces. In de oven geroosterde sappigheid. Heetheidsniveau 7.',
  ingredients_nl = 'Habanero pepers, verse tomaat, appelsap, rode ui, rode paprika, water, limoen, appelazijn, rodewijnazijn, beetwortel, wortel, knoflook, olijfol, kruiden & specerijen, bruine suiker, zout, zwarte thee'
WHERE slug = 'chilisaus-be-the-2025-edition-roasted-habanero-heat-level-7';

-- Yellow - Habanero & Tomatillo
UPDATE public.products SET 
  description_nl = 'YELLOW - Habanero & Tomatillo. Ingrediënten; Paprika, tomatillo''s (22%), uien, Habanero chili''s (20%), witte wijnazijn, appels, limoenen, knoflook, olijfol, zeezout. De allereerste saus van Crazy Bastard uit Berlijn. Mexicaans geïnspireerd, fruitig en fris. Zoet, zuur, zout en hartig tegelijk. Heetheidsniveau 7. Geschikt voor veganisten.',
  ingredients_nl = 'Paprika, tomatillo''s (22%), uien, Habanero chili''s (20%), witte wijnazijn, appels, limoenen, knoflook, olijfol, zeezout'
WHERE slug = 'yellow-habanero-tomatillo-hot-sauce-heat-level-7';

-- Chilisaus.be - Our Own 5 Hot Sauces
UPDATE public.products SET 
  description_nl = 'Onze eigen Hete Saus Collectie - Elk jaar een nieuwe smaak! Bevat de edities van 2020 (Garlic Italian), 2022 (Chocolate Smoked), 2023 (Asian Mango), 2024 (Coconut Curry) en 2025 (Roasted Habanero). Een reis door de smaken van de afgelopen jaren.',
  details_nl = 'Bevat 5 flessen van 100ml/200ml: edities 2020 t/m 2025.'
WHERE slug = 'chilisaus-be-our-own-5-hot-sauces-heat-levels-7-10';

-- SWET - FUMADO
UPDATE public.products SET 
  description_nl = 'SWET FUMADO. Ingrediënten; Rode uien, appelazijn, Habanero pepers, bruine suiker, Pimentón de la Vera, knoflook, zeezout, specerijen. Een diepe, complexe rokerige saus uit Brussel. Gemaakt met biologische en Belgische ingrediënten. Heetheidsniveau 5.',
  ingredients_nl = 'Rode uien, appelazijn, Habanero pepers, bruine suiker, Pimentón de la Vera, knoflook, zeezout, specerijen'
WHERE slug = 'swet-hot-sauce-co-fumado-heat-level-5';

-- SWET - SUNBURN
UPDATE public.products SET 
  description_nl = 'SWET SUNBURN. Ingrediënten; Mango, appelazijn, rode uien, Habanero pepers, gember, bronwater, limoen, knoflook, bruine suiker, Guérandezout, specerijen. Zo fris en explosief als een tropische storm! Gele Habanero''s gekweekt op de daken van Brussel. Heetheidsniveau 6.',
  ingredients_nl = 'Mango, appelazijn, rode uien, Habanero pepers, gember, bronwater, limoen, knoflook, bruine suiker, Guérandezout, specerijen'
WHERE slug = 'swet-hot-sauce-co-sunburn-mango-heat-level-6';

-- SWET - Coffee & Black Garlic
UPDATE public.products SET 
  description_nl = 'SWET Coffee & Black Garlic. Ingrediënten; Pepers, koffie (Bourbon Pimienta), Passilla, Mulato, lacto-gefermenteerde Habanero, appelazijn, appel, zwarte knoflook, pimentón, oregano, zeezout. Een limited edition samenwerking. Aardse koffie, zwarte knoflook en prachtig gefermenteerde pepers. Heetheidsniveau 3.',
  ingredients_nl = 'Pepers, koffie (Bourbon Pimienta), Passilla, Mulato, lacto-gefermenteerde Habanero, appelazijn, appel, zwarte knoflook, pimentón, oregano, zeezout'
WHERE slug = 'swet-hot-sauce-co-coffee-black-garlic-heat-level-3';

-- SWET - TEARS
UPDATE public.products SET 
  description_nl = 'SWET TEARS. Ingrediënten; Peren, appelazijn, Carolina Reaper pepers, rode uien, citroen, knoflook, bruine suiker, Guérandezout, specerijen. Een geweldige fruitige saus zonder te zoet te zijn. Licht en perfect uitgebalanceerd. Heetheidsniveau 9. Geschikt voor veganisten.',
  ingredients_nl = 'Peren, appelazijn, Carolina Reaper pepers, rode uien, citroen, knoflook, bruine suiker, Guérandezout, specerijen'
WHERE slug = 'swet-hot-sauce-co-tears-carolina-reaper-pear-heat-level-9';

-- SWET - NaNa
UPDATE public.products SET 
  description_nl = 'SWET NaNa. Ingrediënten; Ananas, appelazijn, milde pepers, Trinidad Moruga Scorpion chili, gember, bruine suiker, zeezout, specerijen. Een fruitige, zoete smaakbom met de hitte van de Scorpion peper. Heetheidsniveau 9.',
  ingredients_nl = 'Ananas, appelazijn, milde pepers, Trinidad Moruga Scorpion chili, gember, bruine suiker, zeezout, specerijen'
WHERE slug = 'swet-hot-sauce-co-nana-trinidad-scorpion-pineapple-heat-level-9';

-- Hot Chip Challenge V2
UPDATE public.products SET 
  description_nl = 'HOT-CHIP Challenge is de heetste chip ter wereld. Een unieke ervaring die je niet snel zult vergeten. Elke chip is handgemaakt om kwaliteit en pittigheid te garanderen. Verpakt in een speciale doodskistvormige doos. Bevat handschoen, tattoo, sticker en certificaat. 🌶️ SHU 2.200.000. Geschikt voor veganisten.',
  details_nl = 'Gewicht: 2,5g. Bevat één extreem hete chip en beschermingsmiddelen.'
WHERE slug = 'hot-chip-challenge-v2-16';

-- Skånsk - Swedish Black Garlic Hot Honey Original
UPDATE public.products SET 
  description_nl = 'Hot Honey & Black Garlic - twee dingen die prachtig samengaan. Ingrediënten: Honing (89%), glucosestroop, zwarte knoflook (4%), Habanero chili, azijn. De klassieke zoetheid van echte honing gecombineerd met fruitige Habanero hitte en umami-rijke zwarte knoflook. Perfect over pizza, gebakken kip of ijs. Gouden medaillewinnaar bij de European Hot Sauce Awards 2025.',
  ingredients_nl = 'Honing (89%), glucosestroop, zwarte knoflook (4%), Habanero chili, azijn'
WHERE slug = 'skansk-swedish-black-garlic-hot-honey';

-- Skånsk - Swedish Black Garlic Hot Honey - EXTRA Heat
UPDATE public.products SET 
  description_nl = 'De hetere versie van de befaamde Black Garlic Hot Honey. Meer Habanero voor een extra kick, maar nog steeds met die heerlijke umami-smaak van zwarte knoflook. Heetheidsniveau 8.',
  ingredients_nl = 'Honing (89%), glucosestroop, zwarte knoflook (4%), Habanero chili (extra), azijn'
WHERE slug = 'skansk-swedish-black-garlic-hot-honey-extra-heat';

-- Skånsk - Swedish Hot Sauce Set
UPDATE public.products SET 
  description_nl = 'Vier verschillende Zweedse sauzen van een biologische boerderij in Asmundtorp. Bevat Lemon Drop, Nordic Wild, Habanero en Inferno. Een geweldige manier om de diverse smaken van Skånsk Chili te ontdekken. Geschikt voor veganisten.',
  details_nl = 'Bevat 4 flessen van 40ml: Lemon Drop, Nordic Wild, Habanero en Inferno.'
WHERE slug = 'skansk-swedish-hot-sauce';

-- Jelly Beans - Spicy Fruit Flavours
UPDATE public.products SET 
  description_nl = 'Een leuk product van de makers van de Hot Chip Challenge. Mild met een lekkere kick, knapperige buitenkant en sappige, volle fruitige smaken van binnen. Verslavend lekker!',
  ingredients_nl = 'Suiker, glucosestroop, zetmeel, aroma''s, chili-extract'
WHERE slug = 'jelly-beans-spicy-fruit-flavours-60g';

-- Burning Angel - FU2 Carolina Reaper
UPDATE public.products SET 
  description_nl = 'Ingrediënten: Carolina Reaper, tomaten, zout, azijn, specerijen. FU2 brengt Carolina Reaper naar een hoger niveau door verse, gedroogde en gepoederde pepers te combineren. Een drietraps vurige explosie! Een paar druppels zijn genoeg om elk gerecht te transformeren. Heetheidsniveau 12. Geschikt voor veganisten.',
  ingredients_nl = 'Carolina Reaper, tomaten, zout, azijn, specerijen'
WHERE slug = 'burning-angel-fu2-carolina-reaper-heat-level-12-40ml';

-- Burning Angel - Tears of a Vampire Hot Salt
UPDATE public.products SET 
  description_nl = 'Ingrediënten: Zout, Trinidad Moruga Scorpion, Habanero, knoflook, kruiden. Een gedurfde fusie van prachtig gefermenteerde chili''s en zout. Perfect om direct diepte en hitte aan je maaltijd toe te voegen. Heetheidsniveau 4.',
  ingredients_nl = 'Zout, Trinidad Moruga Scorpion, Habanero, knoflook, kruiden'
WHERE slug = 'burning-angel-tears-of-a-vampire-hot-salt-heat-level-4-90g';

-- Spicy Caramel Popcorn
UPDATE public.products SET 
  description_nl = 'Ontdek de unieke combinatie van zoete karamel popcorn met Habanero chili. Ingrediënten; Karamel (62%), gepofte maïs (38%), Habanero chilipoeder (0,5%). De zoete karamel smelt op je tong terwijl de Habanero je lekker opwarmt. Zonder olie bereid (air-popped).',
  ingredients_nl = 'Karamel (suiker, glucosestroop, palmolie, boter, emulgator, zout), gepofte maïs, Habanero chilipoeder'
WHERE slug = 'spicy-caramel-popcorn-medium-heat-120g';

-- Hot Headz - Trinidad Scorpion Hot Sauce
UPDATE public.products SET 
  description_nl = 'Hot Headz Trinidad Scorpion Hot Sauce. Ingrediënten; Trinidad Scorpion chili (57%), water, natuurlijk azijnzuur, xanthaangom, zout, ascorbinezuur. Een explosie van smaken: zoet, fruitig en zout, gevolgd door de intense hitte van de Scorpion peper. Heetheidsniveau 10. Geschikt voor veganisten.',
  ingredients_nl = 'Trinidad Scorpion chili (57%), water, natuurlijk azijnzuur, xanthaangom, zout, ascorbinezuur'
WHERE slug = 'hot-headz-trinidad-scorpion';
