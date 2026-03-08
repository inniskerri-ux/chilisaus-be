-- Migration: Translate products batch 4 (Danish)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_da = 'Den helt nye Death Nut Challenge - Version 3.0. Ingredienser ; Jumbo XL Virginia jordnødder, rent rørsukker, Carolina Reaper chilier, 7-Pot Primo chilier, chilier (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), rene capsaicin-krystaller 16M SHU, havsalt, krydderier. Fem niveauer af jordnødder, der bliver gradvist stærkere. Tør du nå niveau 5? Styrke: UDEN FOR SKALAEN.',
  ingredients_da = 'Jumbo XL jordnødder, sukker, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, rene capsaicin-krystaller 16M SHU, havsalt, krydderier'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_da = 'Chilisaus.be Limited Edition Range. En lækker kombination af 7Pot chilier, Habanero og ananas. Skabt i samarbejde med Uncle Paul. Styrke 6.',
  ingredients_da = '7Pot chilier, Habanero, Ananas, eddike, salt'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_da = 'Chilisaus.be Limited Edition Range. En intens Ghost Pepper Sriracha i samarbejde med Uncle Paul. Til dem der søger et solidt spark. Styrke 10.',
  ingredients_da = 'Ghost Peppers, hvidløg, eddike, sukker, salt'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_da = 'Scotch Bonnet Flager (100.000 – 350.000 SHU). Scotch Bonnet chilien tilhører Habanero-familien og er meget brugt i det caribiske køkken. Frugtig, lys smag med en let sødme. Ideel til Jerk Chicken. Velegnet til veganere.',
  ingredients_da = 'Tørrede Scotch Bonnet chiliflager'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_da = 'Scotch Bonnet Bælge (100.000 – 350.000 SHU). Hele tørrede Scotch Bonnet chilier. Brug dem hele, malede eller rehydrerede i varmt vand. Giver en autentisk caribisk og vestafrikansk smag til dine retter. Velegnet til veganere.',
  ingredients_da = 'Tørrede Scotch Bonnet chilier'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_da = 'Chilisaus.be – 2024 Edition – Kokos-karrypasta med et twist. Ingredienser ; Chilier (Birds Eye, Madame Jeanette, Lombok), tomat, kokosmælk, løg, kokoseddike, vand, jordnødder, hvidløg, koriander, kokossukker, ingefær, krydderurter og krydderier (sennep), salt. Et samarbejde med White Whale Sauces. Styrke 8.',
  ingredients_da = 'Chilier (Birds Eye, Madame Jeanette, Lombok), tomat, kokosmælk, løg, kokoseddike, vand, jordnødder, hvidløg, koriander, kokossukker, ingefær, krydderurter (sennep), salt'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_da = 'Verdens stærkeste Ramen-nudler. Ingredienser ; Nudler (hvedemel, vand, æg), Ramen (Naga Jolokia chili, Carolina Reaper, miso-pasta, sojasauce, sesamolie, krydderurter, krydderier). Estimeret til over 1 million Scoville. Held og lykke!',
  ingredients_da = 'Nudler (Hvede, Æg), Naga Jolokia, Carolina Reaper, Miso-pasta, Sesamolie, Krydderier'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_da = 'Olivenolie med sprødt hvidløg og chili crunch. Ingredienser ; Chilier, hvidløg, olivenolie, krydderier, sukker, jodsalt. Produceret i Filippinerne, denne olie er stærkt vanedannende. Sprødt hvidløg, god styrke og dybe ristede smage. Guldvinder ved Clifton National Chilli Awards 2023. Styrke 7 Velegnet til veganere.',
  ingredients_da = 'Chilier, hvidløg, olivenolie, krydderier, sukker, jodsalt'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_da = 'Verdens nye stærkeste chili: PEPPER X (2,693 mio. SHU). SIZZLING STEAK Ingredienser: Havsalt, krydderier (herunder sort peber og rød chili), hvidløg, løg, solsikkeolie, Pepper X. Giv dine steaks, tofu eller grøntsager ekstrem varme. Opfundet af Ed Currie. Velegnet til veganere.',
  ingredients_da = 'Havsalt, sort peber, rød chili, hvidløg, løg, solsikkeolie, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_da = 'Stærk italiensk krydderiblanding med Pepper X. Pift din pizza, pasta eller marinader op med denne blanding, der indeholder den berygtede Pepper X. Udviklet af Ed Currie, skaberen af Carolina Reaper. Velegnet til veganere.',
  ingredients_da = 'Italienske krydderurter, Pepper X pulver'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_da = 'Stærk hvidløgskrydderiblanding med Pepper X. En hvidløgstung krydderiblanding med den enorme varme fra Pepper X. Perfekt til at forvandle ethvert måltid til en stærk udfordring. Velegnet til veganere.',
  ingredients_da = 'Salt, hvidløg, chilipulver, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_da = 'Cajun-krydderiblanding (Styrke 4). En klassisk Louisiana-blanding, perfekt til fisk, kylling eller grøntsager. Giver en mild varme og dyb smag. Velegnet til veganere.',
  ingredients_da = 'Paprika, hvidløg, løg, sort peber, cayenne, oregano, timian'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_da = 'Blazin'' Inferno Ghost Pepper Krydderi (Styrke 10). En kraftfuld blanding til dem, der søger øjeblikkelig, intens varme. Ideel til grill og marinader. Velegnet til veganere.',
  ingredients_da = 'Ghost Pepper, havsalt, hvidløg, krydderier'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_da = '"FOGO" (portugisisk for ILD) med Carolina Reaper og Trinidad Moruga Scorpion. Ingredienser: Carolina Reaper, ananas, vand, æbleeddike, Licor Brutal, grøn mango, Moruga chilier, Muscovado sukker, salt, mynte, xanthan. Frisk, levende og frugtig med en overraskende note af mynte før den ekstreme varme rammer. Styrke 12.',
  ingredients_da = 'Carolina Reaper, ananas, vand, æbleeddike, Licor Brutal, grøn mango, Moruga chilier, Muscovado sukker, salt, mynte, xanthan'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_da = 'Frisk grøn salsa i mexicansk stil. Ingredienser ; Tomatilloer, jalapeños, hvidløg, citronsaft, solsikkeolie, løgpulver, havsalt. Vores "morgensmads-salsa" - let, frisk og lidt syrlig på grund af tomatilloen. En klassisk Salsa Verde, perfektioneret af El Jefe. Styrke 4. Velegnet til veganere.',
  ingredients_da = 'Tomatilloer, jalapeños, hvidløg, citronsaft, solsikkeolie, løgpulver, havsalt'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_da = '70% belgisk mørk chokolade med Ghost Pepper, mynte og knasende sukker. Ingredienser ; Mørk chokolade (kakaomasse 70%, sukker, kakaosmør, emulgator - SOJA-lecithin, naturlig vanilje), knasende sukker (2%), Naga chilipulver (0,1%), æterisk mynteolie. En unik oplevelse. Let til middel varme. Velegnet til vegetarer.',
  ingredients_da = 'Mørk chokolade (70% kakao), knasende sukker, Naga chilipulver, mynteolie'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_da = 'Ingredienser ; Tomatpuré, vand, æbleeddike, løg, sukker, sesamfrø, krydderier, chipotle, habanero, guajillo chili, røget hvidløg, salt. Et fantastisk produkt til elskere af stærke røg- og hvidløgssmage! Tyk og smagfuld. Styrke 5. Velegnet til veganere.',
  ingredients_da = 'Tomatpuré, vand, æbleeddike, løg, sukker, sesamfrø, krydderier, chipotle, habanero, guajillo chili, røget hvidløg, salt'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_da = 'Singularity Buffalo Hot Sauce. Ingredienser ; Kombucha-eddike, Cayenne-mash (cayennepeber, salt, eddikesyre), vegetabilsk smør, brunt sukker, hvidløgspulver, salt, røget paprika, xanthan. Den skotske udgave af den klassiske Buffalo-sauce. Fantastisk til chicken wings. Styrke 4. Velegnet til veganere.',
  ingredients_da = 'Kombucha-eddike, cayennepeber, vegetabilsk smør, brunt sukker, hvidløgspulver, salt, røget paprika, xanthan'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_da = 'Den originale Dave''s Insanity Sauce - Som set i Hot Ones Sæson 1. Ingredienser ; Stærke chilier, vand, tomatpuré, chiliekstrakt, rørsukker-eddike, salt, løg, hvidløg, krydderier. En enkelt dråbe er nok! Saucen, der startede markedet for super stærke saucer. Styrke: MEGET HØJ. Velegnet til veganere.',
  ingredients_da = 'Chilier, vand, tomatpuré, chiliekstrakt, rørsukker-eddike, salt, løg, hvidløg, krydderier'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_da = 'Dirty Dick''s Caribbean Dreams - Ingredienser ; Habanero chilier, pærer, ferskner, ananassaft, æbleeddike, sennep, æblesaft, brunt sukker, honning og friskmalede krydderier. En sennepsbaseret sauce i caribisk stil. Modige smage, perfekt afbalanceret. Styrke 6 Ikke velegnet til veganere (indeholder honning).',
  ingredients_da = 'Habanero chilier, pærer, ferskner, ananassaft, æbleeddike, sennep, æblesaft, brunt sukker, honning, krydderier'
WHERE slug = 'dirty-dicks-caribbean-dreams';
