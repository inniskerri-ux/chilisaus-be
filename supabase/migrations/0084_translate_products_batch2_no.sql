-- Migration: Translate products batch 2 (Norwegian)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_no = 'Happy Hatter Hot Sauce – SMOKED. Ingredienser ; Skogsbær, rød portvin, rødvinseddik, dadler, blomsterhonning, Ghost Peppers, rødløk, sjalottløk, hvitløk, chipotlepulver, røkt paprika, olivenolje, salt. En rik og røkt saus, søt og deilig. Fullpakket med Ghost Peppers, meksikansk røkt Chipotle og saftige skogsbær. Dekadent, fyldig og silkemyk med en flott langvarig krydret finish. Perfekt til vilt, biff, pulled pork eller en burger. Styrkegrad 7 Ikke egnet for veganere (inneholder honning)',
  ingredients_no = 'Skogsbær, rød portvin, rødvinseddik, dadler, blomsterhonning, Ghost Peppers, rødløk, sjalottløk, hvitløk, chipotlepulver, røkt paprika, olivenolje, salt'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_no = 'Carolina Reaper Pulver 10g. 1,8 mill. – 2,2 mill. SHU. Verdens sterkeste chilipulver. Bruk med ekstrem forsiktighet. Perfekt for å umiddelbart legge til ekstrem varme i enhver rett. Egnet for veganere.',
  ingredients_no = 'Carolina Reaper-chilier'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_no = 'Habanero chiliflak 100 000 – 350 000 SHU. Den perfekte balansen mellom varme og smak. Kjent for sin fruktige aroma, gir disse flakene måltidene dine et deilig sterkt kick. Friske røde habaneroer dyrket i Mexico, ovnstørket og knust. Egnet for veganere.',
  ingredients_no = 'Tørkede habanero-chilier'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_no = 'Meksikanske Habanero tørkede belger (100 000 - 350 000 SHU). Den klassiske fruktige styrken fra Mexico. Ideell for salsaer, marinader og gryteretter. Egnet for veganere.',
  ingredients_no = 'Tørkede habanero-chilier'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_no = 'Naga / Ghost Pepper tørkede belger 855 000 – 1 mill. SHU. Verdens 3. sterkeste chili. Pose med 12 tørkede Ghost Peppers. Smaker først røkt og nesten søtt, men varmen sniker seg inn på deg etter 30 sekunder. Bruk dem tørket, knust eller rehydrert i varmt vann. Egnet for veganere.',
  ingredients_no = 'Tørkede Ghost Peppers (Bhut Jolokia)'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_no = 'Meksikanske røkte Chipotle-flak - 20g (2500 - 8000 SHU). Deilige røkte Jalapeño-flak. Uunnværlig i det meksikanske kjøkkenet for den dype, autentiske BBQ-smaken. Egnet for veganere.',
  ingredients_no = 'Røkte tørkede Jalapeñoer (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_no = 'Habanero Pulver 100 000 – 350 000 SHU. Laget av tørkede og finmalte habanero-belger. Ideell for meksikanske retter eller BBQ. Bland med mayo eller yoghurt for en sterk dip. Egnet for veganere.',
  ingredients_no = 'Habanero chilipulver'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_no = '33% Ren Carolina Reaper Sambal. Ingredienser ; Løk 40%, Carolina Reaper 33%, raffinert sukker 8%, solsikkeolje 7,5%, søt soyasaus 7,5%, hvit eddik 0,5%, salt, krydder. Produsert av den berømte Devon Chilli Man fra Storbritannia. Først en deilig søt smak takket være de karamelliserte løkene, deretter en berg-og-dal-bane av varme fra de friske Carolina Reapers. Styrkegrad 12 Egnet for veganere',
  ingredients_no = 'Løk 40%, Carolina Reaper 33%, raffinert sukker 8%, solsikkeolje 7,5%, søt soyasaus 7,5%, hvit eddik 0,5%, salt, krydder'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_no = 'Garlic Italian (uten tilsatt sukker) Perfekt til spaghetti. Ingredienser ; Rapsolje, vann, hvitvinseddik, olivenolje, rød chili, Naga chili (3%), hvitløkspuré, salt, krydder, urter. Vår aller første egne saus! Ingredienser av høy kvalitet, silkemyk olivenolje, friske Naga Ghost peppers, MYE hvitløk og italienske urter. Enkel og deilig. Styrkegrad 8 Egnet for veganere',
  ingredients_no = 'Rapsolje, vann, hvitvinseddik, olivenolje, rød chili, Naga chili (3%), hvitløkspuré, salt, krydder, urter'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_no = 'Carolina Reaper Flak 1,8 mill. – 2,2 mill. SHU. Verdens sterkeste chilipeper, tørket og knust til vakre flak av ild (inkludert frø). Et lite dryss er nok til å gi det Reaper-støtet til supper, karriretter eller pasta. Bruk med forsiktighet. Egnet for veganere.',
  ingredients_no = 'Carolina Reaper chiliflak'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_no = 'Happy Hatter Hot Sauce – BOMBAY. Ingredienser ; Mango, ananas, gul habanero chili, løk, hvitvinseddik, rørsukker, bananer, hvitløk, limesaft, olivenolje, krydderblanding (inneholder selleri), salt. En frisk og fruktig saus med gurkemeie og asiatiske krydder. Perfekt balansert med en god varme fra den gule habaneroen. Ideell for wok- eller risretter. Styrkegrad 8 Egnet for veganere',
  ingredients_no = 'Mango, ananas, gul habanero chili, løk, hvitvinseddik, rørsukker, bananer, hvitløk, limesaft, olivenolje, krydderblanding (inneholder selleri), salt'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_no = 'Naga / Ghost Pulver 855.000 - 1 mill. SHU. Direkte fra Nagaland, India. Smaker først røkt og nesten søtt, men den intense varmen overrasker deg etter 30-40 sekunder. Bruk med omhu. Egnet for veganere.',
  ingredients_no = 'Ghost Pepper chilipulver'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_no = 'Naga / Ghost chiliflak 855.000 - 1 mill. SHU. Direkte fra Nagaland. Disse flakene er et flott alternativ til friske chilier for å gi rettene dine ekstrem varme. Bruk med omhu. Egnet for veganere.',
  ingredients_no = 'Ghost Pepper chiliflak'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_no = 'Happy Hatter Familie – 3 sauser – Presentert i en håndlaget gaveeske. Inneholder ORIGINAL (Styrke 6), SMOKED (Styrke 7) og BOMBAY (Styrke 7). 100% kvalitet fra den belgiske produsenten Wim Daans.',
  details_no = 'Inneholder 3x 100ml flasker: Original, Smoked og Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_no = 'Carolina Reaper Essentials Kit: Belger, pulver, sambal og saus. Alt du trenger for å oppleve verdens sterkeste chili i 4 forskjellige former. Maksimal styrke garantert! Egnet for veganere.',
  details_no = 'Inneholder: 1x Saus, 1x Sambal, 1x Pulver, 1x tørkede belger.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_no = '"Limon-hello" Bruker kun de beste "Sfusato" sitronene fra den italienske Amalfikysten. Ingredienser ; Madame Jeanette chilier, Sfusato sitroner, gulrot, løk, gul paprika, hvitløk, ingefær, epleeddik, gurkemeje, salt. En frisk og livlig saus, rik på C-vitamin. Fantastisk til fisk, tacos eller i en cocktail. Glutenfri, uten tilsatt sukker. Styrkegrad 8 Egnet for veganere',
  ingredients_no = 'Madame Jeanette chilier, Sfusato sitroner, gulrot, løk, gul paprika, hvitløk, ingefær, epleeddik, gurkemeje, salt'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_no = 'The Ripper (uten tilsatt sukker). Ingredienser: Scotch Bonnet chili, rød paprika, Carolina Reaper chili, epleeddik, salt, chilipulver, chiliekstrakt. En farlig deilig kombinasjon av fruktig Scotch Bonnet og verdens sterkeste Carolina Reaper. Maksimal brenning! Styrkegrad 12 Egnet for veganere',
  ingredients_no = 'Scotch Bonnet chili, rød paprika, Carolina Reaper chili, epleeddik, salt, chilipulver, chiliekstrakt'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_no = 'Den fulle Crazy Bastard-kolleksjonen - 7 sauser i en gaveeske. Håndlaget i Berlin med flamberte chilier og friske naturlige ingredienser. Uten raffinert sukker eller ekstrakter. Inneholder alle varianter fra Jalapeño til Carolina Reaper.',
  details_no = 'Inneholder 7x 100ml flasker: Grønn, Rosa, Blå, Gul, Oransje, Rød og Svart.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_no = 'Crazy Bastard Hot Box - De 3 sterkeste sausene i kolleksjonen: Oransje (Ghost Pepper & Mango), Rød (Trinidad Scorpion & Klementin) og Svart (Carolina Reaper & Blåbær). For de ekte spenningssøkerne. Egnet for veganere.',
  details_no = 'Inneholder 3x 100ml flasker: Ghost Pepper, Trinidad Scorpion og Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_no = 'RED - Trinidad Scorpion & Klementinsaus. Ingredienser: Paprika, eple, løk, hvitvinseddik, klementiner (10%), Trinidad Scorpion chili (6%), hvitløk, lime, olivenolje, havsalt. Den nest sterkeste sausen i kolleksjonen. God til grillet fisk eller reker. Styrkegrad 10 Egnet for veganere',
  ingredients_no = 'Paprika, eple, løk, hvitvinseddik, klementiner (10%), Trinidad Scorpion chili (6%), hvitløk, lime, olivenolje, havsalt'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
