-- Migration: Translate products batch 2 (French)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_fr = 'Happy Hatter Hot Sauce – SMOKED. Ingrédients ; Fruits de la forêt, vin de Porto rouge, vinaigre de vin rouge, dattes, miel de fleurs, piments Ghost, oignon rouge, échalotes, ail, poudre de chipotle, paprika fumé, huile d''olive, sel. Une sauce riche et fumée, sucrée et délicieuse. Boordée de piments Ghost, de Chipotle mexicain fumé et de fruits de la forêt juteux. Décadente, corsée et soyeuse avec une finale épicée durable. Parfaite avec du gibier, un steak, du porc effiloché ou un burger. Niveau de chaleur 7 Ne convient pas aux végétaliens (contient du miel)',
  ingredients_fr = 'Fruits de la forêt, vin de Porto rouge, vinaigre de vin rouge, dattes, miel de fleurs, piments Ghost, oignon rouge, échalotes, ail, poudre de chipotle, paprika fumé, huile d''olive, sel'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_fr = 'Poudre de Carolina Reaper 10g. 1,8 million – 2,2 millions SHU. La poudre de piment la plus forte au monde. À utiliser avec une extrême prudence. Parfaite pour ajouter instantanément de la chaleur à n''importe quel plat. Convient aux végétaliens.',
  ingredients_fr = 'Piments Carolina Reaper'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_fr = 'Flocons de piment Habanero 100 000 – 350 000 SHU. Un équilibre parfait entre chaleur et saveur. Connus pour leur goût fruité, ces flocons apportent un délicieux coup de fouet épicé à vos repas. Piments rouges frais cultivés au Mexique, séchés au four et broyés. Convient aux végétaliens.',
  ingredients_fr = 'Piments Habanero séchés'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_fr = 'Gousses de Habanero mexicain séchées (100 000 - 350 000 SHU). La chaleur fruitée classique du Mexique. Idéale pour les salsas, marinades et ragoûts. Convient aux végétaliens.',
  ingredients_fr = 'Piments Habanero séchés'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_fr = 'Gousses de piment Naga / Ghost Pepper séchées 855 000 – 1 million SHU. Le 3ème piment le plus fort au monde. Sachet de 12 piments Ghost séchés. Un goût d''abord fumé et presque sucré, puis la chaleur surgit après 30 secondes. À utiliser séchés, broyés ou réhydratés dans l''eau chaude. Convient aux végétaliens.',
  ingredients_fr = 'Piments Ghost Pepper (Bhut Jolokia) séchés'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_fr = 'Flocons de piment Chipotle fumé mexicain - 20g (2500 - 8000 SHU). Délicieux flocons de Jalapeño fumé. Essentiel dans la cuisine mexicaine pour ce goût BBQ profond et authentique. Convient aux végétaliens.',
  ingredients_fr = 'Piments Jalapeño séchés et fumés (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_fr = 'Poudre de Habanero 100 000 – 350 000 SHU. Issue de gousses de Habanero séchées et finement broyées. Idéale pour les plats mexicains ou le BBQ. Mélangez à de la mayonnaise ou du yaourt pour un dip épicé. Convient aux végétaliens.',
  ingredients_fr = 'Poudre de piment Habanero'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_fr = 'Sambal 33% Carolina Reaper Pur. Ingrédients ; Oignons 40%, Carolina Reaper 33%, sucre raffiné 8%, huile de tournesol 7,5%, sauce soja sucrée 7,5%, vinaigre blanc 0,5%, sel, épices. Produit par le célèbre Devon Chilli Man au Royaume-Uni. Un goût sucré grâce aux oignons caramélisés, suivi d''une montée en puissance des Carolina Reapers frais. Une expérience inoubliable. Niveau de chaleur 12 Convient aux végétaliens',
  ingredients_fr = 'Oignons 40%, Carolina Reaper 33%, sucre raffiné 8%, huile de tournesol 7,5%, sauce soja sucrée 7,5%, vinaigre blanc 0,5%, sel, épices'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_fr = 'Garlic Italian (sans sucre ajouté) Parfaite pour les spaghettis. Ingrédients ; Huile de colza, eau, vinaigre de vin blanc, huile d''olive, piment rouge, piment Naga (3%), purée d''ail, sel, épices, herbes. Notre toute première sauce maison ! Ingrédients de haute qualité, huile d''olive soyeuse, piments Naga Ghost frais, BEAUCOUP d''ail et herbes italiennes. Simple et délicieuse. Niveau de chaleur 8 Convient aux végétaliens',
  ingredients_fr = 'Huile de colza, eau, vinaigre de vin blanc, huile d''olive, piment rouge, piment Naga (3%), purée d''ail, sel, épices, herbes'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_fr = 'Flocons de Carolina Reaper 1,8 million – 2,2 millions SHU. Le piment le plus fort au monde, séché et broyé en magnifiques flocons de feu (graines incluses). Une pincée suffit pour relever soupes, currys ou pâtes. À utiliser avec précaution. Convient aux végétaliens.',
  ingredients_fr = 'Flocons de piment Carolina Reaper'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_fr = 'Happy Hatter Hot Sauce – BOMBAY. Ingrédients ; Mangue, ananas, piment Habanero jaune, oignon, vinaigre de vin blanc, sucre de canne, bananes, ail, jus de citron vert, huile d''olive, mélange d''épices (contient du céleri), sel. Une sauce fraîche et fruitée avec du curcuma et des épices asiatiques. Parfaitement équilibrée avec une belle chaleur de l''Habanero jaune. Idéale pour le wok ou les plats de riz. Niveau de chaleur 8 Convient aux végétaliens',
  ingredients_fr = 'Mangue, ananas, piment Habanero jaune, oignon, vinaigre de vin blanc, sucre de canne, bananes, ail, jus de citron vert, huile d''olive, mélange d''épices (contient du céleri), sel'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_fr = 'Poudre de Naga / Ghost 855 000 - 1 million SHU. Directement de Nagaland, Inde. Goût d''abord fumé et presque sucré, mais la chaleur intense arrive après 30-40 secondes. À utiliser avec soin. Convient aux végétaliens.',
  ingredients_fr = 'Poudre de piment Ghost Pepper'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_fr = 'Flocons de piment Naga / Ghost 855 000 - 1 million SHU. Directement de Nagaland, ces flocons sont une excellente alternative aux piments frais pour apporter une chaleur extrême à vos plats. Convient aux végétaliens.',
  ingredients_fr = 'Flocons de piment Ghost Pepper'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_fr = 'Famille Happy Hatter – 3 Sauces – Présentées dans un coffret cadeau artisanal. Contient ORIGINAL (Chaleur 6), SMOKED (Chaleur 7) et BOMBAY (Chaleur 7). 100% qualité du producteur belge Wim Daans.',
  details_fr = 'Contient 3 bouteilles de 100ml : Original, Smoked et Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_fr = 'Le kit essentiel Carolina Reaper : Gousses, Poudre, Sambal et Sauce. Tout ce qu''il faut pour découvrir le piment le plus fort du monde sous 4 formes différentes. Expérience de chaleur maximale garantie ! Convient aux végétaliens.',
  details_fr = 'Inclus : 1x Sauce, 1x Sambal, 1x Poudre, 1x Gousses séchées.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_fr = '"Limon-hello" Utilise uniquement les meilleurs citrons "Sfusato" de la côte amalfitaine en Italie. Ingrédients ; Piments Madame Jeanette, citrons Sfusato, carotte, oignon, poivron jaune, ail, gingembre, vinaigre de cidre, curcuma, sel. Une sauce fraîche, riche en vitamine C. Fantastique avec du poisson, des tacos ou dans un cocktail. Sans gluten, sans sucre ajouté. Niveau de chaleur 8 Convient aux végétaliens',
  ingredients_fr = 'Piments Madame Jeanette, citrons Sfusato, carotte, oignon, poivron jaune, ail, gingembre, vinaigre de cidre, curcuma, sel'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_fr = 'The Ripper (sans sucre ajouté). Ingrédients : Piment Scotch Bonnet, poivron rouge, piment Carolina Reaper, vinaigre de cidre, sel, poudre de piment, extrait de piment. Une combinaison dangereusement délicieuse de Scotch Bonnet fruité et du Carolina Reaper le plus fort du monde. Brûlure maximale ! Niveau de chaleur 12 Convient aux végétaliens',
  ingredients_fr = 'Piment Scotch Bonnet, poivron rouge, piment Carolina Reaper, vinaigre de cidre, sel, poudre de piment, extrait de piment'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_fr = 'La collection complète Crazy Bastard - 7 sauces dans un coffret cadeau. Fabriquées à la main à Berlin avec des piments rôtis au four et des ingrédients naturels frais. Sans sucre raffiné ni extraits. Contient toutes les variantes, du Jalapeño au Carolina Reaper.',
  details_fr = 'Contient 7 bouteilles de 100ml : Vert, Rose, Bleu, Jaune, Orange, Rouge et Noir.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_fr = 'Crazy Bastard Hot Box - Les 3 sauces les plus fortes de la collection : Orange (Ghost Pepper & Mangue), Rouge (Trinidad Scorpion & Clémentine) et Noir (Carolina Reaper & Myrtille). Pour les vrais amateurs de sensations fortes. Convient aux végétaliens.',
  details_fr = 'Contient 3 bouteilles de 100ml : Ghost Pepper, Trinidad Scorpion et Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_fr = 'RED - Sauce Trinidad Scorpion & Clémentine. Ingrédients : Poivrons, pomme, oignon, vinaigre de vin blanc, clémentines (10%), piment Trinidad Scorpion (6%), ail, citron vert, huile d''olive, sel marin. La deuxième sauce la plus forte de la collection. Idéale avec du poisson grillé ou des gambas. Niveau de chaleur 10 Convient aux végétaliens',
  ingredients_fr = 'Poivrons, pomme, oignon, vinaigre de vin blanc, clémentines (10%), piment Trinidad Scorpion (6%), ail, citron vert, huile d''olive, sel marin'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
