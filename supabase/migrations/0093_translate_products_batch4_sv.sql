-- Migration: Translate products batch 4 (Swedish)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_sv = 'Den helt nya Death Nut Challenge - Version 3.0. Ingredienser ; Jumbo XL Virginia-jordnötter, rent rörsocker, Carolina Reaper chili, 7-Pot Primo chili, chilifrukter (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), rena capsaicinkristaller 16M SHU, havssalt, kryddor. Fem nivåer av jordnötter som blir progressivt starkare. Vågar du nå nivå 5? Hetta: UTANFÖR SKALAN.',
  ingredients_sv = 'Jumbo XL jordnötter, socker, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, rena capsaicinkristaller 16M SHU, havssalt, kryddor'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_sv = 'Chilisaus.be Limited Edition Range. En läcker kombination av 7Pot chili, habanero och ananas. Skapad i samarbete med Uncle Paul. Hetta 6.',
  ingredients_sv = '7Pot chili, habanero, ananas, vinäger, salt'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_sv = 'Chilisaus.be Limited Edition Range. En intensiv Ghost Pepper Sriracha i samarbete med Uncle Paul. För de som söker en rejäl känga. Hetta 10.',
  ingredients_sv = 'Ghost Peppers, vitlök, vinäger, socker, salt'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_sv = 'Scotch Bonnet Flingor (100 000 – 350 000 SHU). Scotch Bonnet-chilin tillhör habanero-familjen och är mycket använd i det karibiska köket. Fruktig, klar smak med en lätt sötma. Idealisk för Jerk Chicken. Lämplig för veganer.',
  ingredients_sv = 'Torkade Scotch Bonnet-chiliflingor'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_sv = 'Scotch Bonnet Frukter (100 000 – 350 000 SHU). Hela torkade Scotch Bonnet-chilifrukter. Använd hela, malda eller efter rehydrering i varmt vatten. Ger en autentisk karibisk och västafrikansk smak till dina rätter. Lämplig för veganer.',
  ingredients_sv = 'Torkade Scotch Bonnet-chilifrukter'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_sv = 'Chilisaus.be – 2024 Edition – Kokos-currypasta med en twist. Ingredienser ; Chili (Lemon Drop, Madame Jeanette, Lombok), tomat, kokosmjölk, lök, kokosvinäger, vatten, jordnötter, vitlök, koriander, kokossocker, ingefära, örter och kryddor (senap), salt. Ett samarbete med White Whale Sauces. Hetta 8.',
  ingredients_sv = 'Chili (Lemon Drop, Madame Jeanette, Lombok), tomat, kokosmjölk, lök, kokosvinäger, vatten, jordnötter, vitlök, koriander, kokossocker, ingefära, örter (senap), salt'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_sv = 'Världens starkaste Ramennudlar. Ingredienser ; Nudlar (vetemjöl, vatten, ägg), Ramen (Naga Jolokia chili, Carolina Reaper, misopasta, sojasås, sesamolja, örter, kryddor). Uppskattad till över 1 miljon Scoville. Lycka till!',
  ingredients_sv = 'Nudlar (vete, ägg), Naga Jolokia, Carolina Reaper, Misopasta, Sesamolja, Kryddor'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_sv = 'Olivolja med krispig vitlök och chili crunch. Ingredienser ; Chilifrukter, vitlök, olivolja, smaksättning, socker, jodsalt. Tillverkad i Filippinerna, denna olja är starkt beroendeframkallande. Krispig vitlök, fin hetta och djupa rostade smaker. Guldvinnare vid Clifton National Chilli Awards 2023. Hetta 7 Lämplig för veganer.',
  ingredients_sv = 'Chili, vitlök, olivolja, smaksättning, socker, jodsalt'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_sv = 'Världens nya starkaste chili: PEPPER X (2,693 milj. SHU). SIZZLING STEAK Ingredienser: Havssalt, kryddor (inklusive svartpeppar och röd chili), vitlök, lök, solrosolja, Pepper X. Ge dina biffar, tofu eller grönsaker extrem hetta. Uppfunnen av Ed Currie. Lämplig för veganer.',
  ingredients_sv = 'Havssalt, svartpeppar, röd chili, vitlök, lök, solrosolja, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_sv = 'Stark italiensk kryddmix med Pepper X. Piffa upp pizza, pasta eller marinader med denna mix som innehåller den beryktade Pepper X. Utvecklad av Ed Currie, skaparen av Carolina Reaper. Lämplig för veganer.',
  ingredients_sv = 'Italienska örter, Pepper X-pulver'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_sv = 'Stark vitlökskrydda med Pepper X. En vitlökstung kryddblandning med den enorma hettan från Pepper X. Perfekt för att förvandla varje måltid till en stark utmaning. Lämplig för veganer.',
  ingredients_sv = 'Salt, vitlök, chilipulver, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_sv = 'Cajunkryddmix (Hetta 4). En klassisk Louisiana-blandning, perfekt för fisk, kyckling eller grönsaker. Ger en mild hetta och djup smak. Lämplig för veganer.',
  ingredients_sv = 'Paprika, vitlök, lök, svartpeppar, cayenne, oregano, timjan'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_sv = 'Blazin'' Inferno Ghost Pepper-krydda (Hetta 10). En kraftfull blandning för de som söker omedelbar, intensiv hetta. Idealisk för grill och marinader. Lämplig för veganer.',
  ingredients_sv = 'Ghost Pepper, havssalt, vitlök, kryddor'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_sv = '"FOGO" (eld på portugisiska) med Carolina Reaper och Trinidad Moruga Scorpion. Ingredienser: Carolina Reaper, ananas, vatten, äppelcidervinäger, Licor Brutal, grön mango, Moruga-chili, muscovadosocker, salt, mynta, xantangummi. Fräsch, levande och fruktig med en överraskande ton av mynta innan den extrema hettan slår till. Hetta 12.',
  ingredients_sv = 'Carolina Reaper, ananas, vatten, äppelcidervinäger, Licor Brutal, grön mango, Moruga-chili, muscovadosocker, salt, mynta, xantangummi'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_sv = 'Fräsch grön salsa i mexikansk stil. Ingredienser ; Tomatillo, jalapeños, vitlök, citronjuice, solrosolja, lökpulver, havssalt. Vår "frukostsalsa" - lätt, fräsch och lite syrlig tack vare tomatillon. En klassisk Salsa Verde, perfektionerad av El Jefe. Hetta 4. Lämplig för veganer.',
  ingredients_sv = 'Tomatillo, jalapeños, vitlök, citronjuice, solrosolja, lökpulver, havssalt'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_sv = '70% belgisk mörk choklad med Ghost Pepper, mynta och sprakande socker. Ingredienser ; Mörk choklad (kakaomassa 70%, socker, kakaosmör, emulgeringsmedel - SOJA-lecitin, naturlig vanilj), sprakande socker (2%), Naga chilipulver (0,1%), eterisk myntaolja. En unik upplevelse. Lätt till medelstark hetta. Lämplig för vegetarianer.',
  ingredients_sv = 'Mörk choklad (70% kakao), sprakande socker, Naga chilipulver, myntaolja'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_sv = 'Ingredienser ; Tomatpuré, vatten, äppelcidervinäger, lök, socker, sesamfrö, kryddor, chipotle, habanero, guajillo-chili, rökt vitlök, salt. En fantastisk produkt för älskare av starka rök- och vitlökssmaker! Tjock och smakrik. Hetta 5. Lämplig för veganer.',
  ingredients_sv = 'Tomatpuré, vatten, äppelcidervinäger, lök, socker, sesamfrö, kryddor, chipotle, habanero, guajillo-chili, rökt vitlök, salt'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_sv = 'Singularity Buffalo Hot Sauce. Ingredienser ; Kombuchavinäger, Cayenne-mash (cayennepeppar, salt, ättiksyra), vegetabiliskt smör, brunt socker, vitlökspulver, salt, rökt paprika, xantangummi. Den skotska utgåvan av den klassiska Buffalosåsen. Fantastisk till chicken wings. Hetta 4. Lämplig för veganer.',
  ingredients_sv = 'Kombuchavinäger, cayennepeppar, vegetabiliskt smör, brunt socker, vitlökspulver, salt, rökt paprika, xantangummi'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_sv = 'Den ursprungliga Dave''s Insanity Sauce - Som setts i Hot Ones säsong 1. Ingredienser ; Stark chili, vatten, tomatpuré, chiliextrakt, rörsockervinäger, salt, lök, vitlök, kryddor. En enda droppe räcker! Såsen som startade marknaden för superstarka såser. Hetta: MYCKET HÖG. Lämplig för veganer.',
  ingredients_sv = 'Chili, vatten, tomatpuré, chiliextrakt, rörsockervinäger, salt, lök, vitlök, kryddor'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_sv = 'Dirty Dick''s Caribbean Dreams - Ingredienser ; Habanero chili, päron, persikor, ananasjuice, äppelcidervinäger, senap, äppeljuice, brunt socker, honung och nymalda kryddor. En senapsbaserad sås i karibisk stil. Modiga smaker, perfekt balanserad. Hetta 6 Ej lämplig för veganer (innehåller honung).',
  ingredients_sv = 'Habanero chili, päron, persikor, ananasjuice, äppelcidervinäger, senap, äppeljuice, brunt socker, honung, kryddor'
WHERE slug = 'dirty-dicks-caribbean-dreams';
