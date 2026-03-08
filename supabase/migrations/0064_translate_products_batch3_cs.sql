-- Migration: Translate products batch 3 (Czech)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_cs = 'Chilisaus.be - Edice 2022 - CHOCOLATE SMOKED (bez přidaného cukru). Složení ; Pečené papriky, ocet z červeného vína, Carolina Reaper, uzené Chipotle, červená cibule, pečený česnek, limetka, syrové kakao, zázvor, olivový olej, sůl, provensálské bylinky. Skutečná exploze ovocných a kouřových chutí se sametovým čokoládovým závěrem. Úroveň pálivosti 10 Vhodné pro vegany',
  ingredients_cs = 'Pečené papriky, ocet z červeného vína, Carolina Reaper, uzené Chipotle, červená cibule, pečený česnek, limetka, syrové kakao, zázvor, olivový olej, sůl, provensálské bylinky'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_cs = 'Carolina Reaper majonéza - 180g. Složení ; Řepkový olej, pasterizovaný žloutek z vajec od slepic z volného výběhu, dijonská hořčice, puré z Carolina Reaper, jablečný ocet, citronová šťáva, cukr, bramborový škrob, sůl, pepř. Krémová, hustá a lahodně pálivá. Nahraďte svou běžnou majonézu touto verzí s Reaperem pro ten správný říz v každém jídle. Úroveň pálivosti 9 Nevhodné pro vegany',
  ingredients_cs = 'Řepkový olej, pasterizovaný žloutek, dijonská hořčice, puré z Carolina Reaper, jablečný ocet, citronová šťáva, cukr, bramborový škrob, sůl, pepř'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_cs = 'VÝZVA TUBE OF TERROR - Verze 2.0. Složení ; Kukuřice, kukuřičný olej, papričky (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), mořská sůl, koření. Divoce pálivé! Pražená kukuřičná zrna obalená ve směsi nejpálivějších papriček světa. Přijímáte výzvu?',
  ingredients_cs = 'Kukuřice, kukuřičný olej, papričky (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), mořská sůl, koření'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_cs = 'Trinidad Scorpion prášek 10g. 1,2 mil. SHU. 2. nejpálivější paprička světa. Sušená a mletá na jemný prášek. Perfektní pro dodání super silné, postupně nastupující pálivosti vašim pokrmům. Používejte s opatrností.',
  ingredients_cs = 'Papričky Trinidad Scorpion'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_cs = 'Gnarlicky Složení ; Česnek, chili papričky habanero, cibule, limetková šťáva, ocet, olivový olej, sůl, hořčičné semínko, tymián, rozmarýn, aktivní uhlí. Neuvěřitelné množství konfitovaného česneku a fermentovaného černého česneku tvoří základ této omáčky. Návykové pro milovníky česneku. Úroveň pálivosti 6 Vhodné pro vegany',
  ingredients_cs = 'Česnek, chili papričky habanero, cibule, limetková šťáva, ocet, olivový olej, sůl, hořčičné semínko, tymián, rozmarýn, aktivní uhlí'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_cs = 'Pálivý med – ORIGINÁL. Složení ; Med 90 %, 10 % chili papričky. Lahodně návykový, sladký a pálivý. Vyrobeno v Amsterdamu z nejlepšího květového medu a tajné směsi papriček. Perfektní na pizzu, smažené kuře nebo sýry. Úroveň pálivosti 4 Nevhodné pro vegany (obsahuje med)',
  ingredients_cs = 'Med 90 %, papričky 10 %'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_cs = 'Edice 2023 - ASIAN MANGO. Složení ; Mango, limetka, oranžové papriky, Ghost Peppers, papričky Madame Jeanette, jablečný ocet, šalotka, pomerančová šťáva, citronová tráva, bylinky, koření, sůl. Svěží, šťavnatá a velmi návyková. Ideální k asijské kuchyni, rýži, kuřeti nebo rybám. Úroveň pálivosti 10 Vhodné pro vegany',
  ingredients_cs = 'Mango, limetka, oranžové papriky, Ghost Peppers, papričky Madame Jeanette, jablečný ocet, šalotka, pomerančová šťáva, citronová tráva, bylinky, koření, sůl'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_cs = 'TRIO Chilisaus.be - Naše 3 vlastní omáčky: Garlic Italian (2020), Chocolate Smoked (2022) a Asian Mango (2023). Cesta chutí skrze naše každoroční výtvory. 100% přírodní ingredience. Vhodné pro vegany.',
  details_cs = 'Obsahuje 3 lahvičky: Garlic Italian (Pálivost 8), Chocolate Smoked (Pálivost 10), Asian Mango (Pálivost 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_cs = 'Happy Hatter Hot Sauce – SHAKIRA. Složení ; Papričky Shakira, papričky Serrano, jablečný ocet, třtinový cukr, cibule, česnek, limetková šťáva, sůl, zázvor, olivový olej. Lehká, svěží a citrusová zelená omáčka s papričkou Shakira arabského původu. Úroveň pálivosti 3 Vhodné pro vegany',
  ingredients_cs = 'Papričky Shakira, papričky Serrano, jablečný ocet, třtinový cukr, cibule, česnek, limetková šťáva, sůl, zázvor, olivový olej'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_cs = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Složení ; Dýně, nakládané okurky, piri-piri Aji Amarillo, Trinidad Scorpion, cibule, ocet, třtinový cukr, kořeněný rum, česnek, limetka, sůl, bylinky, olivový olej, hořčice. Vydatná omáčka pro skutečné piráty s nádechem rumu. Úroveň pálivosti 8 Vhodné pro vegany',
  ingredients_cs = 'Dýně, nakládané okurky, piri-piri Aji Amarillo, Trinidad Scorpion, cibule, ocet, třtinový cukr, kořeněný rum, česnek, limetka, sůl, bylinky, olivový olej, hořčice'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_cs = 'Celá rodina Happy Hatter - Sada 6 omáček o objemu 100 ml. Od úrovně pálivosti 3 do 10. Obsahuje: Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate a Chocolate Smoked. Ideální dárek pro objevování celé řady.',
  details_cs = 'Obsahuje 6x 100ml lahvičky s různými úrovněmi pálivosti.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_cs = 'DOOMSDAY - Čistý kapsaicin 1,6 mil. SHU - 30ml. Složení ; Chili extrakt o síle 1,6 milionu jednotek Scoville. Používejte pouze jako přísadu do jídla nebo nápojů. Okamžitý a trvalý žár. Pozor, extrémně silný produkt!',
  ingredients_cs = 'Chili extrakt s 1,6 mil. SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_cs = 'OBLIVION - Čistý kapsaicin 500 000 SHU - 30ml. Zcela transparentní extrakt, ideální pro přiostření jídel bez změny jejich barvy nebo původní chuti. Používejte s opatrností.',
  ingredients_cs = 'Chili extrakt s 500 000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_cs = 'El Jefe - PICANTE. Složení ; Rajčata, papričky, česnek, citronová šťáva, slunečnicový olej, mořská sůl. Salsa v mexickém stylu s uzenými papričkami a pečeným česnekem. Hluboké chutě a bohatá textura. Úroveň pálivosti 6 Vhodné pro vegany',
  ingredients_cs = 'Rajčata, papričky, česnek, citronová šťáva, slunečnicový olej, mořská sůl'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_cs = 'Gumoví medvídci Satan''s Spawn - 125g. Tito medvídci mají temnou stránku: jsou infuzováni pálivými papričkami Habanero. Lahodně ovocní s pořádným pálením. Nevhodné pro vegany.',
  ingredients_cs = 'Glukózový sirup, cukr, želatina (vepřová), kyselina citronová, aromata, prášek habanero (0,3 %), koncentráty ovocných šťáv'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_cs = 'Lord Reaper - Omáčka z fermentované Carolina Reaper 100ml. Složení ; Voda, řepkový olej, Carolina Reaper (20 %), ocet, sójová omáčka, pomeranč, třtinový cukr, koření, sůl, zázvor, česnek, citron. Hustá, lepkavá a super pálivá. Úroveň pálivosti 10 Vhodné pro vegany',
  ingredients_cs = 'Voda, řepkový olej, Carolina Reaper (20 %), ocet, sójová omáčka, pomeranč, třtinový cukr, koření, sůl, zázvor, česnek, citron'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_cs = 'VÝZVA TUBE OF TERROR V1.0. Arašídy obalené v nejpálivějších papričkách světa: Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah a Ghost, navíc krystaly čistého kapsaicinu s 13M SHU. Hodně štěstí!',
  ingredients_cs = 'Arašídy, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, krystaly čistého kapsaicinu'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_cs = 'LEVEL 20 - Shit that''s Hot! Super pálivá omáčka. Složení ; Rajče, jablečný ocet, česnek, chipotle, habanero lemon, cibule, limetková šťáva, agávový sirup, čistý kapsaicin 9 mil. SHU, bylinky, koření, sůl. Dokonalá rovnováha mezi chutí a extrémním žárem. Úroveň pálivosti 20 Vhodné pro vegany',
  ingredients_cs = 'Rajče, jablečný ocet, česnek, chipotle, habanero lemon, cibule, limetková šťáva, agávový sirup, čistý kapsaicin 9M SHU, bylinky, koření, sůl'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_cs = 'Koření Chipotle Adobo - 65g. Složení: Kmín, paprika, česnek, cibule, chipotle, oregáno, pepř, rajče, sůl. Inspirováno tradiční mexickou kuchyní. Zemité, kouřové a bohaté. Úroveň pálivosti 5 Vhodné pro vegany.',
  ingredients_cs = 'Kmín, paprika, česnek, cibule, chipotle, oregáno, pepř, rajče, sůl'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_cs = 'Scorpion chili olej - Portugalsko. Složení: Slunečnicový olej, Trinidad Scorpion, Ghost Pepper, Habanero, piri-piri Malagueta, citron, sůl. Chuť papriček v tomto hedvábném oleji plně vynikne. Úroveň pálivosti 8 Vhodné pro vegany.',
  ingredients_cs = 'Slunečnicový olej, Trinidad Scorpion, Ghost Pepper, Habanero, piri-piri Malagueta, citron, sůl'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
