-- Migration: Translate products batch 2 (Danish)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_da = 'Happy Hatter Hot Sauce – SMOKED. Ingredienser ; Skovbær, rød portvin, rødvinseddike, dadler, blomsterhonning, Ghost Peppers, rødløg, skalotteløg, hvidløg, chipotlepulver, røget paprika, olivenolie, salt. En rig og røget sauce, sød og lækker. Spækket med Ghost Peppers, mexicansk røget Chipotle og saftige skovbær. Dekadent, fyldig og silkeblød med en fantastisk langvarig krydret finish. Perfekt til vildt, bøf, pulled pork eller en burger. Styrke 7 Ikke velegnet til veganere (indeholder honning)',
  ingredients_da = 'Skovbær, rød portvin, rødvinseddike, dadler, blomsterhonning, Ghost Peppers, rødløg, skalotteløg, hvidløg, chipotlepulver, røget paprika, olivenolie, salt'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_da = 'Carolina Reaper Pulver 10g. 1,8 mio. – 2,2 mio. SHU. Verdens stærkeste chilipulver. Brug med ekstrem forsigtighed. Perfekt til øjeblikkeligt at tilføje ekstrem varme til enhver ret. Velegnet til veganere.',
  ingredients_da = 'Carolina Reaper chilier'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_da = 'Habanero Chiliflager 100.000 – 350.000 SHU. Den perfekte balance mellem varme og smag. Kendt for deres frugtige aroma, giver disse flager dine måltider et lækkert stærkt pift. Friske røde habaneroer dyrket i Mexico, ovntørrede og knuste. Velegnet til veganere.',
  ingredients_da = 'Tørrede Habanero chilier'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_da = 'Mexicanske Habanero tørrede bælge (100.000 - 350.000 SHU). Den klassiske frugtige styrke fra Mexico. Ideel til salsaer, marinader og gryderetter. Velegnet til veganere.',
  ingredients_da = 'Tørrede Habanero chilier'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_da = 'Naga / Ghost Pepper tørrede bælge 855.000 – 1 mio. SHU. Verdens 3. stærkeste chili. Pose med 12 tørrede Ghost Peppers. Smager først røget og næsten sødt, men varmen sniger sig ind på dig efter 30 sekunder. Brug dem tørrede, knuste eller rehydrerede i varmt vand. Velegnet til veganere.',
  ingredients_da = 'Tørrede Ghost Peppers (Bhut Jolokia)'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_da = 'Mexicanske røgede Chipotle-flager - 20g (2500 - 8000 SHU). Lækre røgede Jalapeño-flager. Uundværlig i det mexicanske køkken for den dybe, autentiske BBQ-smag. Velegnet til veganere.',
  ingredients_da = 'Røgede tørrede Jalapeñoer (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_da = 'Habanero Pulver 100.000 – 350.000 SHU. Fremstillet af tørrede og finmalede Habanero-bælge. Ideel til mexicanske retter eller BBQ. Bland med mayo eller yoghurt for en stærk dip. Velegnet til veganere.',
  ingredients_da = 'Habanero chilipulver'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_da = '33% Ren Carolina Reaper Sambal. Ingredienser ; Løg 40%, Carolina Reaper 33%, raffineret sukker 8%, solsikkeolie 7,5%, sød sojasauce 7,5%, hvid eddike 0,5%, salt, krydderier. Produceret af den berømte Devon Chilli Man fra Storbritannien. Først en lækker sød smag takket være de karamelliserede løg, derefter en rutsjebanetur af varme fra de friske Carolina Reapers. Styrke 12 Velegnet til veganere',
  ingredients_da = 'Løg 40%, Carolina Reaper 33%, raffineret sukker 8%, solsikkeolie 7,5%, sød sojasauce 7,5%, hvid eddike 0,5%, salt, krydderier'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_da = 'Garlic Italian (uden tilsat sukker) Perfekt til spaghetti. Ingredienser ; Rapsolie, vand, hvidvinseddike, olivenolie, rød chili, Naga chili (3%), hvidløgspuré, salt, krydderier, krydderurter. Vores allerførste egen sauce! Ingredienser af høj kvalitet, silkeblød olivenolie, friske Naga Ghost peppers, MASSER af hvidløg og italienske krydderurter. Enkel og lækker. Styrke 8 Velegnet til veganere',
  ingredients_da = 'Rapsolie, vand, hvidvinseddike, olivenolie, rød chili, Naga chili (3%), hvidløgspuré, salt, krydderier, krydderurter'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_da = 'Carolina Reaper Flager 1,8 mio. – 2,2 mio. SHU. Verdens stærkeste chilipeber, tørret og knust til smukke flager af ild (inklusive frø). Et lille drys er nok til at give det Reaper-spark til supper, karryretter eller pasta. Brug med forsigtighed. Velegnet til veganere.',
  ingredients_da = 'Carolina Reaper chiliflager'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_da = 'Happy Hatter Hot Sauce – BOMBAY. Ingredienser ; Mango, ananas, gul Habanero chili, løg, hvidvinseddike, rørsukker, bananer, hvidløg, limesaft, olivenolie, krydderiblanding (indeholder selleri), salt. En frisk og frugtig sauce med gurkemeje og asiatiske krydderier. Perfekt afbalanceret med en god varme fra den gule Habanero. Ideel til wok- eller risretter. Styrke 8 Velegnet til veganere',
  ingredients_da = 'Mango, ananas, gul Habanero chili, løg, hvidvinseddike, rørsukker, bananer, hvidløg, limesaft, olivenolie, krydderiblanding (indeholder selleri), salt'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_da = 'Naga / Ghost Pulver 855.000 - 1 mio. SHU. Direkte fra Nagaland, Indien. Smager først røget og næsten sødt, men den intense varme sniger sig ind på dig efter 30-40 sekunder. Brug med omhu. Velegnet til veganere.',
  ingredients_da = 'Ghost Pepper chilipulver'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_da = 'Naga / Ghost Chiliflager 855.000 - 1 mio. SHU. Direkte fra Nagaland. Disse flager er et fantastisk alternativ til friske chilier for at give dine retter ekstrem varme. Brug med omhu. Velegnet til veganere.',
  ingredients_da = 'Ghost Pepper chiliflager'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_da = 'Happy Hatter Familie – 3 Saucer – Præsenteret i en håndlavet gaveæske. Indeholder ORIGINAL (Styrke 6), SMOKED (Styrke 7) og BOMBAY (Styrke 7). 100% kvalitet fra den belgiske producent Wim Daans.',
  details_da = 'Indeholder 3x 100ml flasker: Original, Smoked og Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_da = 'Carolina Reaper Essentials Kit: Bælge, Pulver, Sambal og Sauce. Alt hvad du behøver for at opleve verdens stærkeste chili i 4 forskellige former. Maksimal styrke garanteret! Velegnet til veganere.',
  details_da = 'Indeholder: 1x Sauce, 1x Sambal, 1x Pulver, 1x tørrede bælge.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_da = '"Limon-hello" Bruger kun de bedste "Sfusato" citroner fra den italienske Amalfikyst. Ingredienser ; Madame Jeanette chilier, Sfusato citroner, gulerod, løg, gul peberfrugt, hvidløg, ingefær, æbleeddike, gurkemeje, salt. En frisk og livlig sauce, rig på C-vitamin. Fantastisk til fisk, tacos eller i en cocktail. Glutenfri, uden tilsat sukker. Styrke 8 Velegnet til veganere',
  ingredients_da = 'Madame Jeanette chilier, Sfusato citroner, gulerod, løg, gul peberfrugt, hvidløg, ingefær, æbleeddike, gurkemeje, salt'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_da = 'The Ripper (uden tilsat sukker). Ingredienser: Scotch Bonnet chili, rød peberfrugt, Carolina Reaper chili, æbleeddike, salt, chilipulver, chiliekstrakt. En farligt lækker kombination af frugtig Scotch Bonnet og verdens stærkeste Carolina Reaper. Maksimal brænden! Styrke 12 Velegnet til veganere',
  ingredients_da = 'Scotch Bonnet chili, rød peberfrugt, Carolina Reaper chili, æbleeddike, salt, chilipulver, chiliekstrakt'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_da = 'Den fulde Crazy Bastard kollektion - 7 saucer i en gaveæske. Håndlavet i Berlin med ildristede chilier og friske naturlige ingredienser. Uden raffineret sukker eller ekstrakter. Indeholder alle varianter fra Jalapeño til Carolina Reaper.',
  details_da = 'Indeholder 7x 100ml flasker: Grøn, Pink, Blå, Gul, Orange, Rød og Sort.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_da = 'Crazy Bastard Hot Box - De 3 stærkeste saucer i kollektionen: Orange (Ghost Pepper & Mango), Rød (Trinidad Scorpion & Clementine) og Sort (Carolina Reaper & Blueberry). Til de ægte spændingssøgere. Velegnet til veganere.',
  details_da = 'Indeholder 3x 100ml flasker: Ghost Pepper, Trinidad Scorpion og Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_da = 'RED - Trinidad Scorpion & Clementine Sauce. Ingredienser: Peberfrugt, æble, løg, hvidvinseddike, klementiner (10%), Trinidad Scorpion chili (6%), hvidløg, lime, olivenolie, havsalt. Den næststærkeste sauce i kollektionen. God til grillet fisk eller rejer. Styrke 10 Velegnet til veganere',
  ingredients_da = 'Peberfrugt, æble, løg, hvidvinseddike, klementiner (10%), Trinidad Scorpion chili (6%), hvidløg, lime, olivenolie, havsalt'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
