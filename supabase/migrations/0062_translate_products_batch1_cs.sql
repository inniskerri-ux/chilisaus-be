-- Migration: Translate products batch 1 (Czech)

-- Evil One
UPDATE public.products SET 
  description_cs = 'Evil One Složení ; Červená paprika, jablečný ocet, piri-piri Scotch Bonnet (15 %), cibule, pomerančová dužina, citronová dužina a kůra, paprička Naga Ghost (3 %), mrkev, česnek, hnědý cukr, chili extrakt (1 %), mořská sůl. Plná papriček Scotch Bonnet, Naga Ghost a s nádechem čistého kapsaicinu pro super pálivý, dlouhotrvající pocit pálení, ale bez hořké chuti, kterou extrakty často dávají. Je to super pálivá, lahodná omáčka s nádechem citrusů. Skvělá do špaget, na burger, do woku, na pizzu nebo smíchaná se salsou pro skvělý pálivý dip. Úroveň pálivosti 10 Vhodné pro vegany',
  ingredients_cs = 'Červená paprika, jablečný ocet, piri-piri Scotch Bonnet (15 %), cibule, pomerančová dužina, citronová dužina a kůra, paprička Naga Ghost (3 %), mrkev, česnek, hnědý cukr, chili extrakt (1 %), mořská sůl'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_cs = 'Evil Twin (bez přidaného cukru) Složení ; Zelená paprika, ocet, piri-piri Scotch Bonnet, cibule, jablko, limetka, paprička Naga Ghost, mrkev, koření, česnek, chili extrakt (1 %), sůl. Super pálivá omáčka s papričkami Scotch Bonnet, Naga Ghost a 1% extraktem chili. Má skvělý říz, je krásně svěží díky přidané limetce. Velmi dobře vyvážená omáčka, která díky kapce čistého kapsaicinu přináší trvalou pálivost. Skvělá do pálivých špaget, do majonézy pro dip nebo do woku. Úroveň pálivosti 10 Vhodné pro vegany',
  ingredients_cs = 'Zelená paprika, ocet, piri-piri Scotch Bonnet, cibule, jablko, limetka, paprička Naga Ghost, mrkev, koření, česnek, chili extrakt (1 %), sůl'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_cs = 'Naga Chili omáčka (Úroveň pálivosti 10). Silná omáčka od Wiltshire Chilli Farm využívající slavnou papričku Naga Ghost pro intenzivní, dlouhotrvající pálivost, která se pomalu rozvíjí. Pro zkušené milovníky chili. Vhodné pro vegany.',
  ingredients_cs = 'Papričky Naga Ghost, ocet, sůl, koření'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_cs = 'Karibská chili omáčka (Úroveň pálivosti 9). Tropická exploze pálivosti a chuti. Inspirováno tradičními ostrovními omáčkami, bohaté na papričky a slunné aroma. Vhodné pro vegany.',
  ingredients_cs = 'Karibské papričky, ocet, koření, sůl'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_cs = 'Tempest česnekový chili olej 150ml Složení ; Za studena lisovaný řepkový olej, přírodní chili extrakt, přírodní česnekový extrakt. Rozhodně pro milovníky česneku. Hedvábně jemný olej, který se rychle stane návykovým. Přidejte během vaření nebo použijte jako dokončovací olej na pizzu, těstoviny nebo wok. Vynikající k pečenému kuřeti, nebo smíchejte s majonézou pro pálivý aioli dip. Úroveň pálivosti 5 Vhodné pro vegany',
  ingredients_cs = 'Za studena lisovaný řepkový olej, přírodní chili extrakt, přírodní česnekový extrakt'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_cs = 'Mango Chili omáčka (Úroveň pálivosti 7). Lahodně ovocná omáčka, kde se sladkost zralého manga dokonale snoubí s ostrým chili řízem. Ideální ke kuřeti, do salátů nebo jako dip. Vhodné pro vegany.',
  ingredients_cs = 'Mango, chili papričky, ocet, cukr, sůl'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_cs = 'Sladká chili omáčka (Úroveň pálivosti 1). Klasický jemný dip, který miluje každý. Dokonalá rovnováha mezi sladkostí a velmi lehkým nádechem pálivosti. Vynikající k jarním závitkům nebo jako univerzální stolní omáčka. Vhodné pro vegany.',
  ingredients_cs = 'Chili papričky, cukr, ocet, česnek, sůl'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_cs = 'Reaper Habanero (Úroveň pálivosti 10). Silná omáčka od Wiltshire Chilli Farm kombinující extrémní pálivost Carolina Reaper s klasickou chutí červených Habaneros. Jednoduché, ale účinné. Vhodné pro vegany.',
  ingredients_cs = 'Červené Habanero, jablečný ocet, hnědý cukr, cibule, červená paprika, Carolina Reaper, uzená paprika, česnek'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_cs = 'Česneková chili sůl (Úroveň pálivosti 3). Lahodná aromatická sůl s lehkým chili nábojem. Ideální na posypání brambor, zeleniny nebo masa pro okamžité zvýraznění chuti. Vhodné pro vegany.',
  ingredients_cs = 'Mořská sůl, česnek, chili papričky'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_cs = 'BLACK - Omáčka Carolina Reaper a borůvka. Složení: Paprika, cibule, bílý vinný ocet, jablka, borůvky (10 %), paprička Carolina Reaper (8 %), limetka, olivový olej, mořská sůl. Neobvyklá, ale fantastická kombinace, kde trpká borůvka krásně doplňuje extrémní pálivost Reapera. Úroveň pálivosti 10 Vhodné pro vegany.',
  ingredients_cs = 'Paprika, cibule, bílý vinný ocet, jablka, borůvky (10 %), paprička Carolina Reaper (8 %), limetka, olivový olej, mořská sůl'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_cs = 'BLUE - Omáčka Scotch Bonnet a karibské koření. Složení: Paprika, cibule, bílý vinný ocet, paprička Scotch Bonnet (13 %), zázvor, česnek, limetka, olivový olej, celer, sůl, směs koření. Autentická chuť Karibiku s charakteristickou pálivostí Scotch Bonnet. Úroveň pálivosti 5 Vhodné pro vegany.',
  ingredients_cs = 'Paprika, cibule, bílý vinný ocet, paprička Scotch Bonnet (13 %), zázvor, česnek, limetka, olivový olej, celer, sůl, směs koření'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_cs = 'PINK - Omáčka Chipotle a ananas. Složení: Cibule, paprika, ananas (17 %), bílý vinný ocet, červená paprička Jalapeño, limetka, paprička Chipotle (1,7 %), olivový olej, sůl. Lahodná rovnováha mezi sladkostí a kouřem. Úroveň pálivosti 4 Vhodné pro vegany.',
  ingredients_cs = 'Cibule, paprika, ananas (17 %), bílý vinný ocet, červená paprička Jalapeño, limetka, paprička Chipotle (1,7 %), olivový olej, sůl'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_cs = 'Sušené plody Carolina Reaper (1,8 mil. - 2,2 mil. SHU). Nejpálivější paprička světa v sušené podobě. Pro odvážné, kteří chtějí vytvářet vlastní omáčky nebo extrémně pálivá jídla. Vhodné pro vegany.',
  ingredients_cs = 'Sušené papričky Carolina Reaper'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_cs = 'Omáčka "God Slayer" EXTREME (Úroveň pálivosti 15). Jedna z nejintenzivnějších omáček v naší nabídce. Pouze pro velmi zkušené milovníky pálivého. Vhodné pro vegany.',
  ingredients_cs = 'Carolina Reaper, chili extrakty, ocet, sůl'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_cs = 'ORANGE - Omáčka Ghost Pepper a mango. Složení: Paprika, cibule, bílý vinný ocet, mango (12 %), jablka, paprička Ghost Pepper Bhut Jolokia (7 %), limetka, olivový olej, kmín, mořská sůl. Krásně vyvážená omáčka, kde pálivost Ghost Pepper pomalu nastupuje. Úroveň pálivosti 10 Vhodné pro vegany.',
  ingredients_cs = 'Paprika, cibule, bílý vinný ocet, mango (12 %), jablka, paprička Ghost Pepper Bhut Jolokia (7 %), limetka, olivový olej, kmín, mořská sůl'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_cs = 'Mexické uzené sušené plody Chipotle (2500 - 8000 SHU). Sušené a uzené Jalapeños. Nezbytné pro autentickou kouřovou chuť v guláších a polévkách. Vhodné pro vegany.',
  ingredients_cs = 'Sušené a uzené papričky Jalapeño (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_cs = 'Kořenící směs káva a Ghost Pepper. Unikátní rub kombinující hlubokou chuť kávy s intenzivní pálivostí Ghost Pepper. Perfektní na BBQ, zejména na hovězí nebo vepřové maso. Úroveň pálivosti 8.',
  ingredients_cs = 'Káva, Ghost Pepper, cukr, sůl, koření'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_cs = 'Happy Hatter Hot Sauce – ORIGINAL. Jak bylo k vidění v populárním televizním pořadu o vaření „Dagelijkse Kost“. Omáčka na rajčatové bázi s nádechem broskvové sladkosti a papričkami Madame Jeanette pro ovocně-pálivý říz. Úroveň pálivosti 6 Vhodné pro vegany.',
  ingredients_cs = 'Rajče, broskev, červená cibule, papričky (Madame Jeanette, Birds eye), česnek, jablko, ocet, třtinový cukr, limetka, sůl, celer, bylinky'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_cs = 'Trinidad Scorpion - Jak bylo vidět v "HOT ONES" (Úroveň pálivosti 10). Složení ; Jablečný ocet, cukr, paprička Trinidad Scorpion, červená paprika, sůl. S dravým řízem je tato super pálivá omáčka opravdovým zážitkem. Sladká na začátku, s narůstající pálivostí pro trvalé pálení. Úroveň pálivosti 10 Vhodné pro vegany.',
  ingredients_cs = 'Jablečný ocet, cukr, paprička Trinidad Scorpion, červená paprika, sůl'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_cs = 'Omáčka "Regret" SUPER EXTREME (Úroveň pálivosti 20). Název mluví za vše... S úrovní pálivosti 20 je to jedna z nejpálivějších omáček, které jsme kdy měli. Pouze pro skutečné "chiliheady" beze strachu. Používejte na vlastní nebezpečí!',
  ingredients_cs = 'Extrémně pálivé papričky (Carolina Reaper), chili extrakt, ocet, sůl'
WHERE slug = 'regret-extreme-hot-sauce';
