-- Migration: Translate products batch 2 (Czech)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_cs = 'Happy Hatter Hot Sauce – SMOKED. Složení ; Lesní plody, červené portské víno, ocet z červeného vína, datle, květový med, papričky Ghost, červená cibule, šalotka, česnek, chipotle prášek, uzená paprika, olivový olej, sůl. Bohatá uzená omáčka, sladká a lahodná. Plná papriček Ghost, mexického uzeného Chipotle a šťavnatého lesního ovoce. Dekadentní, plná a hedvábně jemná s úžasným, trvalým pikantním závěrem. Skvělá ke zvěřině, steaku, trhanému vepřovému nebo burgeru. Úroveň pálivosti 7 Nevhodné pro vegany (obsahuje med)',
  ingredients_cs = 'Lesní plody, červené portské víno, ocet z czerwého vína, datle, květový med, papričky Ghost, červená cibule, šalotka, česnek, chipotle prášek, uzená paprika, olivový olej, sůl'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_cs = 'Carolina Reaper prášek 10g. 1,8 mil. – 2,2 mil. SHU. Nejpálivější chili prášek na světě. Používejte s extrémní opatrností. Perfektní pro okamžité dodání ohně do jakéhokoli jídla. Vhodné pro vegany.',
  ingredients_cs = 'Papričky Carolina Reaper'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_cs = 'Habanero chili vločky 100 000 – 350 000 SHU. Dokonalá rovnováha mezi pálivostí a chutí. Známé pro své ovocné aroma, tyto vločky dodají vašim pokrmům lahodný pálivý říz. Čerstvé červené habaneros pěstované v Mexiku, sušené v peci a drcené. Vhodné pro vegany.',
  ingredients_cs = 'Sušené papričky Habanero'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_cs = 'Mexické Habanero sušené lusky (100 000 - 350 000 SHU). Klasická ovocná pálivost z Mexika. Ideální pro salsy, marinády a dušená jídla. Vhodné pro vegany.',
  ingredients_cs = 'Sušené papričky Habanero'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_cs = 'Sušené lusky Naga / Ghost Pepper 855 000 – 1 mil. SHU. 3. nejpálivější paprička světa. Sáček 12 sušených papriček Ghost. Chuť je zpočátku kouřová a téměř sladká, pálivost nastupuje po 30 sekundách. Používejte sušené, drcené nebo po namočení v horké vodě. Vhodné pro vegany.',
  ingredients_cs = 'Sušené papričky Ghost Pepper (Bhut Jolokia)'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_cs = 'Mexické uzené Chipotle vločky - 20g (2500 - 8000 SHU). Lahodné uzené vločky Jalapeño. Nezbytné v mexické kuchyni pro tu hlubokou, autentickou BBQ chuť. Vhodné pro vegany.',
  ingredients_cs = 'Sušené a uzené papričky Jalapeño (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_cs = 'Habanero prášek 100 000 – 350 000 SHU. Vyrobeno ze sušených a jemně mletých lusků Habanero. Ideální pro mexická jídla nebo BBQ. Smíchejte s majonézou nebo jogurtem pro pálivý dip. Vhodné pro vegany.',
  ingredients_cs = 'Prášek z papriček Habanero'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_cs = '33% čistý Carolina Reaper Sambal. Složení ; Cibule 40 %, Carolina Reaper 33 %, rafinovaný cukr 8 %, slunečnicový olej 7,5 %, sladká sójová omáčka 7,5 %, bílý ocet 0,5 %, sůl, koření. Vyrobeno slavným Devon Chilli Man z Velké Británie. Nejdříve lahodně sladká chuť díky karamelizované cibuli, poté jízda na horské dráze s čerstvými Carolina Reapers. Úroveň pálivosti 12 Vhodné pro vegany',
  ingredients_cs = 'Cibule 40 %, Carolina Reaper 33 %, rafinovaný cukr 8 %, slunečnicový olej 7,5 %, sladká sójová omáčka 7,5 %, bílý ocet 0,5 %, sůl, koření'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_cs = 'Garlic Italian (bez přidaného cukru) Ideální do spaghetti. Složení ; Řepkový olej, voda, bílý vinný ocet, olivový olej, červené chili, chili Naga (3 %), česnekové puré, sůl, koření, bylinky. Naše úplně první vlastní omáčka! Vysoce kvalitní ingredience, hedvábný olivový olej, čerstvé papričky Naga Ghost, HODNĚ česneku a italské bylinky. Jednoduché a lahodné. Úroveň pálivosti 8 Vhodné pro vegany',
  ingredients_cs = 'Řepkový olej, voda, bílý vinný ocet, olivový olej, červené chili, chili Naga (3 %), česnekové puré, sůl, koření, bylinky'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_cs = 'Vločky Carolina Reaper 1,8 mil. – 2,2 mil. SHU. Nejpálivější paprička světa, sušená a drcená na krásné ohnivé vločky (včetně semínek). Špetka stačí k dodání Reaper řízu polévkám, kari nebo těstovinám. Používejte s rozvahou. Vhodné pro vegany.',
  ingredients_cs = 'Vločky papričky Carolina Reaper'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_cs = 'Happy Hatter Hot Sauce – BOMBAY. Složení ; Mango, ananas, žluté chili Habanero, cibule, bílý vinný ocet, třtinový cukr, banány, česnek, limetková šťáva, olivový olej, směs koření (obsahuje celer), sůl. Čerstvá a ovocná omáčka s kurkumou a asijským kořením. Dokonale vyvážená s dobrou pálivostí žlutého Habanera. Ideální do woku nebo k rýžovým pokrmům. Úroveň pálivosti 8 Vhodné pro vegany',
  ingredients_cs = 'Mango, ananas, žluté chili Habanero, cibule, bílý vinný ocet, třtinový cukr, banány, česnek, limetková šťáva, olivový olej, směs koření (obsahuje celer), sůl'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_cs = 'Naga / Ghost prášek 855 000 - 1 mil. SHU. Přímo z Nagalandu v Indii. Chuť je zpočátku kouřová a téměř sladká, ale intenzivní pálivost nastupuje po 30-40 sekundách. Používejte s péčí. Vhodné pro vegany.',
  ingredients_cs = 'Prášek z papričky Ghost Pepper'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_cs = 'Vločky Naga / Ghost 855 000 - 1 mil. SHU. Přímo z Nagalandu, tyto vločky jsou skvělou alternativou k čerstvým papričkám pro dodání extrémní pálivosti vašim pokrmům. Vhodné pro vegany.',
  ingredients_cs = 'Vločky papričky Ghost Pepper'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_cs = 'Rodina Happy Hatter – 3 omáčky – Baleno v ručně vyráběném dárkovém boxu. Obsahuje ORIGINAL (Pálivost 6), SMOKED (Pálivost 7) a BOMBAY (Pálivost 7). 100% kvalita od belgického výrobce Wima Daanse.',
  details_cs = 'Obsahuje 3x 100ml lahvičky: Original, Smoked a Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_cs = 'Základní sada Carolina Reaper: Lusky, Prášek, Sambal a Omáčka. Vše, co potřebujete k prožití nejpálivější papričky světa ve 4 různých formách. Maximální pálivost zaručena! Vhodné pro vegany.',
  details_cs = 'Obsahuje: 1x Omáčka, 1x Sambal, 1x Prášek, 1x Sušené lusky.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_cs = '"Limon-hello" Používá jen ty nejlepší citrony "Sfusato" z italského pobřeží Amalfi. Složení ; Papričky Madame Jeanette, citrony Sfusato, mrkev, cibule, žlutá paprika, česnek, zázvor, jablečný ocet, kurkuma, sůl. Čerstvá a svěží omáčka bohatá na vitamín C. Fantastická k rybám, tacos nebo do koktejlu. Bez lepku, bez přidaného cukru. Úroveň pálivosti 8 Vhodné pro vegany',
  ingredients_cs = 'Papričky Madame Jeanette, citrony Sfusato, mrkev, cibule, žlutá paprika, česnek, zázvor, jablečný ocet, kurkuma, sůl'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_cs = 'The Ripper (bez přidaného cukru). Složení: paprička Scotch Bonnet, červená paprika, paprička Carolina Reaper, jablečný ocet, sůl, chili prášek, chili extrakt. Nebezpečně lahodná kombinace ovocného Scotch Bonnetu a nejpálivější Carolina Reaper na světě. Maximální žár! Úroveň pálivosti 12 Vhodné pro vegany',
  ingredients_cs = 'Paprička Scotch Bonnet, červená paprika, paprička Carolina Reaper, jablečný ocet, sůl, chili prášek, chili extrakt'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_cs = 'Kompletní kolekce Crazy Bastard - 7 omáček v dárkovém boxu. Ručně vyráběné v Berlíně z pečených chili papriček a čerstvých přírodních surovin. Bez rafinovaného cukru nebo extraktů. Obsahuje všechny varianty od Jalapeño po Carolina Reaper.',
  details_cs = 'Obsahuje 7x 100ml lahvičky: Zelená, Růžová, Modrá, Žlutá, Oranžová, Červená a Černá.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_cs = 'Crazy Bastard Hot Box - 3 nejpálivější omáčky z kolekce: Oranžová (Ghost Pepper a Mango), Červená (Trinidad Scorpion a Mandarinka) a Černá (Carolina Reaper a Borůvka). Pro opravdové hledače vzrušení. Vhodné pro vegany.',
  details_cs = 'Obsahuje 3x 100ml lahvičky: Ghost Pepper, Trinidad Scorpion a Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_cs = 'RED - Omáčka Trinidad Scorpion a mandarinka. Složení: Paprika, jablko, cibule, bílý vinný ocet, mandarinky (10 %), paprička Trinidad Scorpion (6 %), česnek, limetka, olivový olej, mořská sůl. Druhá nejpálivější omáčka z kolekce. Skvělá ke grilovaným rybám nebo krevetám. Úroveň pálivosti 10 Vhodné pro vegany',
  ingredients_cs = 'Paprika, jablko, cibule, bílý vinný ocet, mandarinky (10 %), paprička Trinidad Scorpion (6 %), česnek, limetka, olivový olej, mořská sůl'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
