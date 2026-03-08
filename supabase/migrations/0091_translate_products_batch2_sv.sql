-- Migration: Translate products batch 2 (Swedish)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_sv = 'Happy Hatter Hot Sauce – SMOKED. Ingredienser ; Skogsbär, rött portvin, rödvinsvinäger, dadlar, blomhonung, Ghost Peppers, rödlök, schalottenlök, vitlök, chipotlepulver, rökt paprika, olivolja, salt. En rik och rökig sås, söt och utsökt. Fullpackad med Ghost Peppers, mexikansk rökig Chipotle och saftiga skogsbär. Dekadent, fyllig och silkeslen med en fantastisk långvarig kryddig finish. Perfekt till vilt, biff, pulled pork eller en burgare. Hetta 7 Ej lämplig för veganer (innehåller honung)',
  ingredients_sv = 'Skogsbär, rött portvin, rödvinsvinäger, dadlar, blomhonung, Ghost Peppers, rödlök, schalottenlök, vitlök, chipotlepulver, rökt paprika, olivolja, salt'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_sv = 'Carolina Reaper Pulver 10g. 1,8 milj. – 2,2 milj. SHU. Världens starkaste chilipulver. Använd med extrem försiktighet. Perfekt för att omedelbart tillföra extrem hetta till valfri rätt. Lämplig för veganer.',
  ingredients_sv = 'Carolina Reaper chili'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_sv = 'Habanero Chiliflingor 100 000 – 350 000 SHU. Den perfekta balansen mellan hetta och smak. Kända för sin fruktiga arom, dessa flingor ger dina måltider en härligt stark kick. Färska röda habaneros odlade i Mexiko, ugnstorkade och krossade. Lämplig för veganer.',
  ingredients_sv = 'Torkad Habanero chili'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_sv = 'Mexikanska Habanero torkade frukter (100 000 - 350 000 SHU). Den klassiska fruktiga hettan från Mexiko. Idealisk för salsor, marinader och grytor. Lämplig för veganer.',
  ingredients_sv = 'Torkad Habanero chili'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_sv = 'Naga / Ghost Pepper torkade frukter 855 000 – 1 milj. SHU. Världens 3:e starkaste chili. Påse med 12 torkade Ghost Peppers. Smakar först rökigt och nästan sött, men hettan smyger sig på efter 30 sekunder. Använd torkade, krossade eller rehydrerade i varmt vatten. Lämplig för veganer.',
  ingredients_sv = 'Torkad Ghost Pepper (Bhut Jolokia)'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_sv = 'Mexikanska rökta Chipotleflingor - 20g (2500 - 8000 SHU). Härligt rökiga Jalapeñoflingor. Oumbärlig i det mexikanska köket för den djupa, autentiska BBQ-smaken. Lämplig för veganer.',
  ingredients_sv = 'Rökt torkad Jalapeño (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_sv = 'Habanero Pulver 100 000 – 350 000 SHU. Tillverkad av torkade och finmalda habanerofrukter. Idealisk för mexikanska rätter eller BBQ. Blanda med mayo eller yoghurt för en stark dip. Lämplig för veganer.',
  ingredients_sv = 'Habanero chilipulver'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_sv = '33% Ren Carolina Reaper Sambal. Ingredienser ; Lök 40%, Carolina Reaper 33%, raffinerat socker 8%, solrosolja 7,5%, söt sojasås 7,5%, vit vinäger 0,5%, salt, kryddor. Producerad av den berömda Devon Chilli Man från Storbritannien. Först en härligt söt smak tack vare den karamelliserade löken, sedan en berg-och-dalbana av hetta från färska Carolina Reapers. Hetta 12 Lämplig för veganer',
  ingredients_sv = 'Lök 40%, Carolina Reaper 33%, raffinerat socker 8%, solrosolja 7,5%, söt sojasås 7,5%, vit vinäger 0,5%, salt, kryddor'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_sv = 'Garlic Italian (utan tillsatt socker) Perfekt till spaghetti. Ingredienser ; Rapsolja, vatten, vitvinsvinäger, olivolja, röd chili, Naga chili (3%), vitlökspuré, salt, kryddor, örter. Vår allra första egna sås! Ingredienser av hög kvalitet, silkeslen olivolja, färska Naga Ghost peppers, MYCKET vitlök och italienska örter. Enkel och utsökt. Hetta 8 Lämplig för veganer',
  ingredients_sv = 'Rapsolja, vatten, vitvinsvinäger, olivolja, röd chili, Naga chili (3%), vitlökspuré, salt, kryddor, örter'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_sv = 'Carolina Reaper Flingor 1,8 milj. – 2,2 milj. SHU. Världens starkaste chilipeppar, torkad och krossad till vackra flingor av eld (inklusive frö). Ett litet stänk räcker för att ge den där Reaper-kicken till soppor, curry eller pasta. Använd med försiktighet. Lämplig för veganer.',
  ingredients_sv = 'Carolina Reaper chiliflingor'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_sv = 'Happy Hatter Hot Sauce – BOMBAY. Ingredienser ; Mango, ananas, gul habanero chili, lök, vitvinsvinäger, rörsocker, bananer, vitlök, limesaft, olivolja, kryddmix (innehåller selleri), salt. En fräsch och fruktig sås med gurkmeja och asiatiska kryddor. Perfekt balanserad med en fin hetta från den gula habaneron. Idealisk för wok- eller risrätter. Hetta 8 Lämplig för veganer',
  ingredients_sv = 'Mango, ananas, gul habanero chili, lök, vitvinsvinäger, rörsocker, bananer, vitlök, limesaft, olivolja, kryddmix (innehåller selleri), salt'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_sv = 'Naga / Ghost Pulver 855 000 - 1 milj. SHU. Direkt från Nagaland, Indien. Smakar först rökigt och nästan sött, men den intensiva hettan överraskar dig efter 30-40 sekunder. Använd med omsorg. Lämplig för veganer.',
  ingredients_sv = 'Ghost Pepper chilipulver'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_sv = 'Naga / Ghost Chiliflingor 855 000 - 1 milj. SHU. Direkt från Nagaland. Dessa flingor är ett fantastiskt alternativ till färsk chili för att ge dina rätter extrem hetta. Använd med omsorg. Lämplig för veganer.',
  ingredients_sv = 'Ghost Pepper chiliflingor'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_sv = 'Happy Hatter Familjen – 3 Såser – Presenterade i en handgjord presentförpackning. Innehåller ORIGINAL (Hetta 6), SMOKED (Hetta 7) och BOMBAY (Hetta 7). 100% kvalitet från den belgiske producenten Wim Daans.',
  details_sv = 'Innehåller 3x 100ml flaskor: Original, Smoked och Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_sv = 'Carolina Reaper Essentials Kit: Frukter, Pulver, Sambal och Sås. Allt du behöver för att uppleva världens starkaste chili i 4 olika former. Maximal hetta garanterad! Lämplig för veganer.',
  details_sv = 'Innehåller: 1x Sås, 1x Sambal, 1x Pulver, 1x torkade frukter.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_sv = '"Limon-hello" Använder endast de bästa "Sfusato"-citronerna från den italienska Amalfikusten. Ingredienser ; Madame Jeanette chili, Sfusato-citroner, morot, lök, gul paprika, vitlök, ingefära, äppelcidervinäger, gurkmeja, salt. En fräsch och livlig sås, rik på C-vitamin. Fantastisk till fisk, tacos eller i en cocktail. Glutenfri, utan tillsatt socker. Hetta 8 Lämplig för veganer',
  ingredients_sv = 'Madame Jeanette chili, Sfusato-citroner, morot, lök, gul paprika, vitlök, ingefära, äppelcidervinäger, gurkmeja, salt'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_sv = 'The Ripper (utan tillsatt socker). Ingredienser: Scotch Bonnet chili, röd paprika, Carolina Reaper chili, äppelcidervinäger, salt, chilipulver, chiliextrakt. En farligt utsökt kombination av fruktig Scotch Bonnet och världens starkaste Carolina Reaper. Maximal bränna! Hetta 12 Lämplig for veganer',
  ingredients_sv = 'Scotch Bonnet chili, röd paprika, Carolina Reaper chili, äppelcidervinäger, salt, chilipulver, chiliextrakt'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_sv = 'Den fullständiga Crazy Bastard-kollektionen - 7 såser i en presentförpackning. Handgjorda i Berlin med eldrostade chilifrukter och färska naturliga ingredienser. Utan raffinerat socker eller extrakt. Innehåller alla varianter från Jalapeño till Carolina Reaper.',
  details_sv = 'Innehåller 7x 100ml flaskor: Grön, Rosa, Blå, Gul, Orange, Röd och Svart.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_sv = 'Crazy Bastard Hot Box - De 3 starkaste såserna i kollektionen: Orange (Ghost Pepper & Mango), Röd (Trinidad Scorpion & Klementin) och Svart (Carolina Reaper & Blåbär). För de äkta spänningssökarna. Lämplig för veganer.',
  details_sv = 'Innehåller 3x 100ml flasker: Ghost Pepper, Trinidad Scorpion och Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_sv = 'RED - Trinidad Scorpion & Klementinsås. Ingredienser: Paprika, äpple, lök, vitvinsvinäger, klementiner (10%), Trinidad Scorpion chili (6%), vitlök, lime, olivolja, havssalt. Den näst starkaste såsen i kollektionen. God till grillad fisk eller räkor. Hetta 10 Lämplig för veganer',
  ingredients_sv = 'Paprika, äpple, lök, vitvinsvinäger, klementiner (10%), Trinidad Scorpion chili (6%), vitlök, lime, olivolja, havssalt'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
