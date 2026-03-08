-- Migration: Translate products batch 4 (Czech)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_cs = 'Zcela nová výzva Death Nut Challenge - verze 3.0. Složení ; Arašídy Jumbo XL Virginia, čistý třtinový cukr, papričky Carolina Reaper, 7-Pot Primo, papričky (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), krystaly čistého kapsaicinu 16M SHU, mořská sůl, koření. Pět úrovní arašídů s narůstající pálivostí. Odvážíte se až do 5. úrovně? Úroveň pálivosti: MIMO STUPNICI.',
  ingredients_cs = 'Arašídy Jumbo XL, cukr, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, krystaly čistého kapsaicinu 16M SHU, mořská sůl, koření'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_cs = 'Limitovaná edice Chilisaus.be. Lahodná kombinace papriček 7Pot, Habanero a ananasu. Vytvořeno ve spolupráci s Uncle Paul. Úroveň pálivosti 6.',
  ingredients_cs = 'Papričky 7Pot, Habanero, Ananas, ocet, sůl'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_cs = 'Limitovaná edice Chilisaus.be. Intenzivní Sriracha s papričkou Ghost, vytvořená ve spolupráci s Uncle Paul. Pro milovníky poctivého řízu. Úroveň pálivosti 10.',
  ingredients_cs = 'Papričky Ghost, česnek, ocet, cukr, sůl'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_cs = 'Vločky Scotch Bonnet (100 000 – 350 000 SHU). Paprička Scotch Bonnet patří do rodiny Habanero, hojně využívaná v karibské kuchyni. Ovocná, jasná chuť s lehkou sladkostí. Ideální pro Jerk Chicken. Vhodné pro vegany.',
  ingredients_cs = 'Sušené vločky papričky Scotch Bonnet'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_cs = 'Sušené lusky Scotch Bonnet (100 000 – 350 000 SHU). Celé sušené papričky Scotch Bonnet. Používejte vcelku, mleté nebo po rehydrataci v horké vodě. Dodá vašim pokrmům autentickou karibskou a západoafrickou chuť. Vhodné pro vegany.',
  ingredients_cs = 'Sušené papričky Scotch Bonnet'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_cs = 'Chilisaus.be – Edice 2024 – Kokosová kari pasta s twistem. Složení ; Papričky (Birds Eye, Madame Jeanette, Lombok), rajčata, kokosové mléko, cibule, kokosový ocet, voda, arašídy, česnek, koriandr, kokosový cukr, zázvor, bylinky a koření (hořčice), sůl. Spolupráce s White Whale Sauces. Úroveň pálivosti 8.',
  ingredients_cs = 'Papričky (Birds Eye, Madame Jeanette, Lombok), rajčata, kokosové mléko, cibule, kokosový ocet, voda, arašídy, česnek, koriandr, kokosový cukr, zázvor, bylinky (hořčice), sůl'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_cs = 'Nejpálivější Ramen nudle na světě. Složení ; Nudle (pšeničná mouka, voda, vejce), Ramen (paprička Naga Jolokia, Carolina Reaper, miso pasta, sójová omáčka, sezamový olej, bylinky, koření). Odhadovaná síla přes 1 milion jednotek Scoville. Hodně štěstí!',
  ingredients_cs = 'Nudle (Pšenice, Vejce), Naga Jolokia, Carolina Reaper, Miso pasta, Sezamový olej, Koření'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_cs = 'Olivový olej s křupavým česnekem a chili crunch. Složení ; Papričky, česnek, olivový olej, dochucovadlo, cukr, jodizovaná sůl. Vyrobeno na Filipínách, tento olej je skutečná závislost. Křupavý česnek, skvělá pálivost a hluboké pražené tóny. Zlatý medailista Clifton National Chilli Awards 2023. Úroveň pálivosti 7 Vhodné pro vegany.',
  ingredients_cs = 'Papričky, česnek, olivový olej, dochucovadlo, cukr, jodizovaná sůl'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_cs = 'Nejnovější nejpálivější paprička světa: PEPPER X (2,693 mil. SHU). SIZZLING STEAK Složení: Mořská sůl, koření (včetně černého pepře a červené papriky), česnek, cibule, slunečnicový olej, Pepper X. Dodejte svým steakům, tofu nebo zelenině extrémní žár. Vytvořil Ed Currie. Vhodné pro vegany.',
  ingredients_cs = 'Mořská sůl, černý pepř, červená paprika, česnek, cibule, slunečnicový olej, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_cs = 'Ostré italské koření s Pepper X. Vylepšete pizzu, těstoviny nebo marinády touto směsí obsahující slavnou Pepper X. Vytvořil Ed Currie, tvůrce Carolina Reaper. Vhodné pro vegany.',
  ingredients_cs = 'Italské bylinky, prášek Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_cs = 'Ostré česnekové koření s Pepper X. Česneková kořenící směs s masivním žárem Pepper X. Ideální pro proměnu každého jídla v ostrou výzvu. Vhodné pro vegany.',
  ingredients_cs = 'Sůl, česnek, chili prášek, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_cs = 'Cajunská kořenící směs (Pálivost 4). Klasická směs ve stylu Louisiany, ideální pro ryby, kuřecí maso nebo zeleninu. Přináší jemnou pálivost a hlubokou chuť. Vhodné pro vegany.',
  ingredients_cs = 'Paprika, česnek, cibule, černý pepř, kajenský pepř, oregáno, tymián'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_cs = 'Koření Blazin'' Inferno s papričkou Ghost (Úroveň pálivosti 10). Silná směs pro ty, kteří hledají okamžitý, intenzivní žár. Ideální na grilování a marinády. Vhodné pro vegany.',
  ingredients_cs = 'Ghost Pepper, mořská sůl, česnek, koření'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_cs = '"FOGO" (portugalsky OHEŇ) s Carolina Reaper a Trinidad Moruga Scorpion. Složení: Carolina Reaper, ananas, voda, jablečný ocet, Licor Brutal, zelené mango, papričky Moruga, cukr muscovado, sůl, máta, xanthan. Svěží, živé a ovocné s překvapivým nádechem máty předtím, než zasáhne extrémní žár. Úroveň pálivosti 12.',
  ingredients_cs = 'Carolina Reaper, ananas, voda, jablečný ocet, Licor Brutal, zelené mango, papričky Moruga, cukr muscovado, sůl, máta, xanthan'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_cs = 'Čerstvá zelená salsa v mexickém stylu. Složení ; Tomatilla, jalapeños, česnek, citronová šťáva, slunečnicový olej, cibulový prášek, mořská sůl. Naše „snídaňová salsa“ – lehká, svěží a mírně kyselá díky tomatillu. Klasická Salsa Verde dovedená k dokonalosti od El Jefe. Úroveň pálivosti 4. Vhodné pro vegany.',
  ingredients_cs = 'Tomatilla, jalapeños, česnek, citronová šťáva, slunečnicový olej, cibulový prášek, mořská sůl'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_cs = '70% belgická hořká čokoláda s papričkou Ghost, mátou a praskacím cukrem. Složení ; Hořká čokoláda (kakaová hmota 70 %, cukr, kakaové máslo, emulgátor - SÓJOVÝ lecitin, přírodní vanilka), praskací cukr (2 %), prášek Naga chili (0,1 %), mátový esenciální olej. Unikátní zážitek. Lehká až střední pálivost. Vhodné pro vegetariány.',
  ingredients_cs = 'Hořká čokoláda (70 % kakaa), praskací cukr, prášek Naga chili, mátový olej'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_cs = 'Složení ; Rajčatový protlak, voda, jablečný ocet, cibule, cukr, sezamová semínka, koření, chipotle, habanero, paprička guajillo, uzený česnek, sůl. Fantastický produkt pro milovníky výrazných kouřových a česnekových chutí! Husté a plné chuti. Úroveň pálivosti 5. Vhodné pro vegany.',
  ingredients_cs = 'Rajčatový protlak, voda, jablečný ocet, cibule, cukr, sezamová semínka, koření, chipotle, habanero, paprička guajillo, uzený česnek, sůl'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_cs = 'Omáčka Buffalo Singularity. Složení ; Kombucha ocet, Cayenne mash (kajenský pepř, sůl, kyselina octová), rostlinné máslo, hnědý cukr, česnekový prášek, sůl, uzená paprika, xanthan. Skotská verze klasické Buffalo omáčky. Skvělá na kuřecí křidýlka. Úroveň pálivosti 4. Vhodné pro vegany.',
  ingredients_cs = 'Kombucha ocet, kajenský pepř, rostlinné máslo, hnědý cukr, česnekový prášek, sůl, uzená paprika, xanthan'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_cs = 'Originální Dave''s Insanity Sauce - jak bylo k vidění v 1. sezóně Hot Ones. Složení ; Pálivé papričky, voda, rajčatový protlak, chili extrakt, ocet z cukrové třtiny, sůl, cibule, česnek, koření. Stačí kapka! Omáčka, která odstartovala trh se super pálivými omáčkami. Úroveň pálivosti: VELMI VYSOKÁ. Vhodné pro vegany.',
  ingredients_cs = 'Papričky, voda, rajčatový protlak, chili extrakt, třtinový ocet, sůl, cibule, česnek, koření'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_cs = 'Dirty Dick''s Caribbean Dreams - Složení ; Papričky Habanero, hrušky, broskve, ananasová šťáva, jablečný ocet, hořčice, jablečná šťáva, hnědý cukr, med a čerstvě mleté koření. Hořčičná omáčka v karibském stylu. Výrazné chutě, dokonale vyvážené. Úroveň pálivosti 6 Nevhodné pro vegany (obsahuje med).',
  ingredients_cs = 'Papričky Habanero, hrušky, broskve, ananasová šťáva, jablečný ocet, hořčice, jablečná šťáva, hnědý cukr, med, koření'
WHERE slug = 'dirty-dicks-caribbean-dreams';
