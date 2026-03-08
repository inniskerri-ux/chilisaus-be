-- Migration: Translate products batch 4 (Norwegian)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_no = 'Den splitter nye Death Nut Challenge - Versjon 3.0. Ingredienser ; Jumbo XL Virginia peanøtter, rent rørsukker, Carolina Reaper chilier, 7-Pot Primo chilier, chilier (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), rene capsaicin-krystaller 16M SHU, havsalt, krydder. Fem nivåer av peanøtter som blir gradvis sterkere. Tør du nå nivå 5? Styrkegrad: UTENFOR SKALAEN.',
  ingredients_no = 'Jumbo XL peanøtter, sukker, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, rene capsaicin-krystaller 16M SHU, havsalt, krydder'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_no = 'Chilisaus.be Limited Edition Range. En nydelig kombinasjon av 7Pot chilier, habanero og ananas. Skapt i samarbeid med Uncle Paul. Styrkegrad 6.',
  ingredients_no = '7Pot chilier, habanero, ananas, eddik, salt'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_no = 'Chilisaus.be Limited Edition Range. En intens Ghost Pepper Sriracha i samarbeid med Uncle Paul. For de som søker et skikkelig spark. Styrkegrad 10.',
  ingredients_no = 'Ghost Peppers, hvitløk, eddik, sukker, salt'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_no = 'Scotch Bonnet Flak (100 000 – 350 000 SHU). Scotch Bonnet chilien tilhører habanero-familien og er mye brukt i det karibiske kjøkkenet. Fruktig, lys smak med en lett sødme. Ideell for Jerk Chicken. Egnet for veganere.',
  ingredients_no = 'Tørkede Scotch Bonnet chiliflak'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_no = 'Scotch Bonnet Belger (100 000 – 350 000 SHU). Hele tørkede Scotch Bonnet chilier. Bruk dem hele, malte eller rehydrert i varmt vann. Gir en autentisk karibisk og vestafrikansk smak til rettene dine. Egnet for veganere.',
  ingredients_no = 'Tørkede Scotch Bonnet chilier'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_no = 'Chilisaus.be – 2024 Edition – Kokos-karripasta med en vri. Ingredienser ; Chilier (Birds Eye, Madame Jeanette, Lombok), tomat, kokosmelk, løk, kokoseddik, vann, peanøtt, hvitløk, koriander, kokossukker, ingefær, urter og krydder (sennep), salt. Et samarbeid med White Whale Sauces. Styrkegrad 8.',
  ingredients_no = 'Chilier (Birds Eye, Madame Jeanette, Lombok), tomat, kokosmelk, løk, kokoseddik, vann, peanøtt, hvitløk, koriander, kokossukker, ingefær, urter (sennep), salt'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_no = 'Verdens sterkeste Ramen-nudler. Ingredienser ; Nudler (hvetemel, vann, egg), Ramen (Naga Jolokia chili, Carolina Reaper, miso-pasta, soyasaus, sesamolje, urter, krydder). Estimert til over 1 million Scoville. Lykke til!',
  ingredients_no = 'Nudler (hvete, egg), Naga Jolokia, Carolina Reaper, miso-pasta, sesamolje, krydder'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_no = 'Olivenolje med sprø hvitløk og chili crunch. Ingredienser ; Chilier, hvitløk, olivenolje, krydder, sukker, jodsalt. Produsert på Filippinene, denne oljen er virkelig avhengighetsskapende. Sprø hvitløk, god styrke og dype røstede smaker. Gullvinner ved Clifton National Chilli Awards 2023. Styrkegrad 7 Egnet for veganere.',
  ingredients_no = 'Chilier, hvitløk, olivenolje, krydder, sukker, jodsalt'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_no = 'Verdens nye sterkeste chili: PEPPER X (2,693 mill. SHU). SIZZLING STEAK Ingredienser: Havsalt, krydder (inkludert svart pepper og rød chili), hvitløk, løk, solsikkeolje, Pepper X. Gi biffene, tofu eller grønnsakene dine ekstrem varme. Oppfunnet av Ed Currie. Egnet for veganere.',
  ingredients_no = 'Havsalt, svart pepper, rød chili, hvitløk, løk, solsikkeolje, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_no = 'Sterk italiensk krydderblanding med Pepper X. Piff opp pizza, pasta eller marinader med denne blandingen som inneholder den beryktede Pepper X. Utviklet av Ed Currie, skaperen av Carolina Reaper. Egnet for veganere.',
  ingredients_no = 'Italienske urter, Pepper X-pulver'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_no = 'Sterk hvitløkskrydderblanding med Pepper X. En hvitløkstung krydderblanding med den enorme varmen fra Pepper X. Perfekt for å forvandle ethvert måltid til en sterk utfordring. Egnet for veganere.',
  ingredients_no = 'Salt, hvitløk, chilipulver, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_no = 'Cajun-krydderblanding (Styrke 4). En klassisk Louisiana-blanding, perfekt til fisk, kylling eller grønnsaker. Gir en mild varme og dyp smak. Egnet for veganere.',
  ingredients_no = 'Paprika, hvitløk, løk, svart pepper, cayenne, oregano, timian'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_no = 'Blazin'' Inferno Ghost Pepper Krydder (Styrke 10). En kraftig blanding for de som søker umiddelbar, intens varme. Ideell til grill og marinader. Egnet for veganere.',
  ingredients_no = 'Ghost Pepper, havsalt, hvitløk, krydder'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_no = '"FOGO" (ild på portugisisk) med Carolina Reaper og Trinidad Moruga Scorpion. Ingredienser: Carolina Reaper, ananas, vann, epleeddik, Licor Brutal, grønn mango, Moruga chilier, Muscovado-sukker, salt, mynte, xanthan. Frisk, livlig og fruktig med en overraskende note av mynte før den ekstreme varmen rammer. Styrkegrad 12.',
  ingredients_no = 'Carolina Reaper, ananas, vann, epleeddik, Licor Brutal, grønn mango, Moruga chilier, Muscovado-sukker, salt, mynte, xanthan'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_no = 'Frisk grønn salsa i meksikansk stil. Ingredienser ; Tomatilloer, jalapeños, hvitløk, sitronsaft, solsikkeolje, løkpulver, havsalt. Vår "frokost-salsa" - lett, frisk og litt syrlig på grunn av tomatilloen. En klassisk Salsa Verde, perfeksjonert av El Jefe. Styrkegrad 4. Egnet for veganere.',
  ingredients_no = 'Tomatilloer, jalapeños, hvitløk, sitronsaft, solsikkeolje, løkpulver, havsalt'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_no = '70% belgisk mørk sjokolade med Ghost Pepper, mynte og knasende sukker. Ingredienser ; Mørk sjokolade (kakaomasse 70%, sukker, kakaosmør, emulgator - SOYA-lecitin, naturlig vanilje), knasende sukker (2%), Naga chilipulver (0,1%), eterisk mynteolje. En unik opplevelse. Lett til middels varme. Egnet for vegetarianere.',
  ingredients_no = 'Mørk sjokolade (70% kakao), knasende sukker, Naga chilipulver, mynteolje'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_no = 'Ingredienser ; Tomatpuré, vann, epleeddik, løk, sukker, sesamfrø, krydder, chipotle, habanero, guajillo chili, røkt hvitløk, salt. Et fantastisk produkt for elskere av sterke røyk- og hvitløkssmaker! Tykk og smaksrik. Styrkegrad 5. Egnet for veganere.',
  ingredients_no = 'Tomatpuré, vann, epleeddik, løk, sukker, sesamfrø, krydder, chipotle, habanero, guajillo chili, røkt hvitløk, salt'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_no = 'Singularity Buffalo Hot Sauce. Ingredienser ; Kombucha-eddik, Cayenne-mash (cayennepepper, salt, eddiksyre), vegetabilsk smør, brunt sukker, hvitløkspulver, salt, røkt paprika, xanthan. Den skotske utgaven av den klassiske Buffalo-sausen. Fantastisk til chicken wings. Styrkegrad 4. Egnet for veganere.',
  ingredients_no = 'Kombucha-eddik, cayennepepper, vegetabilsk smør, brunt sukker, hvitløkspulver, salt, røkt paprika, xanthan'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_no = 'Den originale Dave''s Insanity Sauce - Som sett i Hot Ones Sesong 1. Ingredienser ; Sterke chilier, vann, tomatpuré, chilieekstrakt, rørsukker-eddik, salt, løk, hvitløk, krydder. En enkelt dråpe er nok! Sausen som startet markedet for supersterke sauser. Styrkegrad: MEGET HØY. Egnet for veganere.',
  ingredients_no = 'Chilier, vann, tomatpuré, chilieekstrakt, rørsukker-eddik, salt, løk, hvitløk, krydder'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_no = 'Dirty Dick''s Caribbean Dreams - Ingredienser ; Habanero chilier, pærer, fersken, ananasjuice, epleeddik, sennep, eplejuice, brunt sukker, honning og friskmalte krydder. En sennepsbasert saus i karibisk stil. Modige smaker, perfekt balansert. Styrkegrad 6 Ikke egnet for veganere (inneholder honning).',
  ingredients_no = 'Habanero chilier, pærer, fersken, ananasjuice, epleeddik, sennep, eplejuice, brunt sukker, honning, krydder'
WHERE slug = 'dirty-dicks-caribbean-dreams';
