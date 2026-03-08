-- Migration: Translate products batch 1 (French)

-- Evil One
UPDATE public.products SET 
  description_fr = 'Evil One Ingrédients ; Poivrons rouges, vinaigre de cidre, piment Scotch Bonnet (15%), oignon, pulpe d''orange, pulpe et zeste de citron, piment Naga Ghost (3%), carotte, ail, sucre brun, extrait de piment (1%), sel marin. Riche en Scotch Bonnets, piments Naga Ghost et une touche de capsaïcine pure pour cette sensation de brûlure intense et durable sans le goût amer habituel des extraits. C''est une sauce super piquante et délicieuse avec des notes d''agrumes. Idéale dans les spaghettis, sur un burger, un wok, une pizza ou mélangée à de la salsa pour un dip épicé. Niveau de chaleur 10 Convient aux végétaliens',
  ingredients_fr = 'Poivrons rouges, vinaigre de cidre, piment Scotch Bonnet (15%), oignon, pulpe d''orange, pulpe et zeste de citron, piment Naga Ghost (3%), carotte, ail, sucre brun, extrait de piment (1%), sel marin'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_fr = 'Evil Twin (sans sucre ajouté) Ingrédients ; Poivrons verts, vinaigre, piment Scotch Bonnet, oignon, pomme, citron vert, piment Naga Ghost, carotte, épices, ail, extrait de piment (1%), sel. Sauce super piquante aux piments Scotch Bonnet, Naga Ghost et 1% d''extrait de piment. Une belle chaleur, fraîche grâce au citron vert. Très équilibrée, elle offre une chaleur persistante. Parfaite pour relever vos spaghettis, à ajouter à de la mayonnaise pour un dip épicé, ou dans un wok. Niveau de chaleur 10 Convient aux végétaliens',
  ingredients_fr = 'Poivrons verts, vinaigre, piment Scotch Bonnet, oignon, pomme, citron vert, piment Naga Ghost, carotte, épices, ail, extrait de piment (1%), sel'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_fr = 'Sauce au piment Naga (Niveau de chaleur 10). Une sauce puissante de Wiltshire Chilli Farm utilisant le célèbre piment Naga Ghost pour une chaleur intense et durable qui monte progressivement. Pour les amateurs de piments expérimentés. Convient aux végétaliens.',
  ingredients_fr = 'Piments Naga Ghost, vinaigre, sel, épices'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_fr = 'Sauce au piment des Caraïbes (Niveau de chaleur 9). Une explosion tropicale de chaleur et de saveur. Inspirée des sauces traditionnelles des îles, riche en piments et en arômes ensoleillés. Convient aux végétaliens.',
  ingredients_fr = 'Piments des Caraïbes, vinaigre, épices, sel'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_fr = 'Huile de piment à l''ail Tempest 150ml Ingrédients ; Huile de colza pressée à froid, extrait naturel de piment, extrait naturel d''ail. Indispensable pour les amateurs d''ail. Une huile soyeuse et riche qui deviendra vite addictive. À ajouter pendant la cuisson ou en finition sur vos pizzas, pâtes ou woks. Délicieuse avec du poulet frit ou mélangée à de la mayonnaise pour un aïoli épicé. Niveau de chaleur 5 Convient aux végétaliens',
  ingredients_fr = 'Huile de colza pressée à froid, extrait naturel de piment, extrait naturel d''ail'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_fr = 'Sauce au piment et à la mangue (Niveau de chaleur 7). Une sauce délicieusement fruitée où la douceur des mangues mûres se marie parfaitement à une pointe de piment. Idéale avec du poulet, des salades ou comme sauce dip. Convient aux végétaliens.',
  ingredients_fr = 'Mangue, piments, vinaigre, sucre, sel'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_fr = 'Sauce pimentée douce (Niveau de chaleur 1). La sauce douce classique que tout le monde adore. Équilibre parfait entre le sucré et une très légère pointe de piment. Excellente avec des nems ou comme sauce de table polyvalente. Convient aux végétaliens.',
  ingredients_fr = 'Piments, sucre, vinaigre, ail, sel'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_fr = 'Reaper Habanero (Niveau de chaleur 10). Une sauce puissante de Wiltshire Chilli Farm combinant la chaleur extrême du Carolina Reaper avec la saveur classique des Habaneros rouges. Simple mais redoutable. Convient aux végétaliens.',
  ingredients_fr = 'Habanero rouge, vinaigre de cidre, sucre brun, oignon, poivron rouge, Carolina Reaper, paprika fumé, ail'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_fr = 'Sel au piment et à l''ail (Niveau de chaleur 3). Un sel aromatique délicieux avec une légère touche de piment. Idéal pour saupoudrer sur vos pommes de terre, légumes ou viandes pour un rehaussement immédiat des saveurs. Convient aux végétaliens.',
  ingredients_fr = 'Sel marin, ail, piments'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_fr = 'BLACK - Sauce Carolina Reaper & Myrtille. Ingrédients : Poivrons, oignons, vinaigre de vin blanc, pommes, myrtilles (10%), piment Carolina Reaper (8%), citron vert, huile d''olive, sel marin. Une combinaison inhabituelle mais fantastique où la myrtille acidulée complète magnifiquement la chaleur extrême du Reaper. Niveau de chaleur 10 Convient aux végétaliens.',
  ingredients_fr = 'Poivrons, oignons, vinaigre de vin blanc, pommes, myrtilles (10%), piment Carolina Reaper (8%), citron vert, huile d''olive, sel marin'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_fr = 'BLUE - Sauce Scotch Bonnet & Épices des Caraïbes. Ingrédients : Poivrons, oignons, vinaigre de vin blanc, piment Scotch Bonnet (13%), gingembre, ail, citron vert, huile d''olive, céleri, sel, mélange d''épices. Un goût authentique des Caraïbes avec la chaleur caractéristique du Scotch Bonnet. Niveau de chaleur 5 Convient aux végétaliens.',
  ingredients_fr = 'Poivrons, oignons, vinaigre de vin blanc, piment Scotch Bonnet (13%), gingembre, ail, citron vert, huile d''olive, céleri, sel, mélange d''épices'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_fr = 'PINK - Sauce Chipotle & Ananas. Ingrédients : Oignons, poivrons, ananas (17%), vinaigre de vin blanc, piment Jalapeño rouge, citron vert, piment Chipotle (1,7%), huile d''olive, sel. Un équilibre délicieux entre le sucré et le fumé. Niveau de chaleur 4 Convient aux végétaliens.',
  ingredients_fr = 'Oignons, poivrons, ananas (17%), vinaigre de vin blanc, piment Jalapeño rouge, citron vert, piment Chipotle (1,7%), huile d''olive, sel'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_fr = 'Gousses de Carolina Reaper séchées (1,8 million - 2,2 millions SHU). Le piment le plus fort du monde sous forme séchée. Pour les plus téméraires qui souhaitent créer leurs propres sauces ou relever leurs plats de façon extrême. Convient aux végétaliens.',
  ingredients_fr = 'Piments Carolina Reaper séchés'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_fr = 'Sauce "God Slayer" EXTREME (Niveau de chaleur 15). L''une des sauces les plus intenses de notre gamme. Réservée aux amateurs de chaleur les plus expérimentés. Convient aux végétaliens.',
  ingredients_fr = 'Carolina Reaper, extraits de piment, vinaigre, sel'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_fr = 'ORANGE - Sauce Ghost Pepper & Mangue. Ingrédients : Poivrons, oignons, vinaigre de vin blanc, mangue (12%), pommes, piment Ghost Pepper Bhut Jolokia (7%), citron vert, huile d''olive, cumin, sel marin. Une sauce magnifiquement équilibrée où la chaleur du Ghost Pepper monte lentement. Niveau de chaleur 10 Convient aux végétaliens.',
  ingredients_fr = 'Poivrons, oignons, vinaigre de vin blanc, mangue (12%), pommes, piment Ghost Pepper Bhut Jolokia (7%), citron vert, huile d''olive, cumin, sel marin'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_fr = 'Gousses de piment Chipotle fumé mexicain séchées (2500 - 8000 SHU). Jalapeños séchés et fumés. Indispensable pour un goût fumé authentique dans vos ragoûts et soupes. Convient aux végétaliens.',
  ingredients_fr = 'Piments Jalapeño séchés et fumés'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_fr = 'Mélange d''épices Café & Ghost Pepper. Un rub unique combinant la saveur profonde du café avec la chaleur intense du Ghost Pepper. Parfait pour le BBQ, particulièrement sur le bœuf ou le porc. Niveau de chaleur 8.',
  ingredients_fr = 'Café, Ghost Pepper, sucre, sel, épices'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_fr = 'Happy Hatter Hot Sauce – ORIGINAL. Comme vu dans l''émission culinaire populaire "Dagelijkse Kost". Une sauce à base de tomates avec une touche de douceur de pêche et des piments Madame Jeanette pour un coup de fouet fruité et épicé. Niveau de chaleur 6 Convient aux végétaliens.',
  ingredients_fr = 'Tomate, pêche, oignon rouge, piments (Madame Jeanette, Birds eye), ail, pomme, vinaigre, sucre de canne, citron vert, sel, céleri, herbes'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_fr = 'Trinidad Scorpion - Comme vu dans "HOT ONES" (Niveau de chaleur 10). Ingrédients ; Vinaigre de cidre, sucre, piment Trinidad Scorpion, poivrons rouges, sel. Avec une morsure redoutable, cette sauce super forte est une véritable expérience. Sucrée au début, avec une chaleur qui monte pour une brûlure durable. Pour les plus courageux. Niveau de chaleur 10 Convient aux végétaliens.',
  ingredients_fr = 'Vinaigre de cidre, sucre, piment Trinidad Scorpion, poivrons rouges, sel'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_fr = 'Sauce "Regret" SUPER EXTREME (Niveau de chaleur 20). Le nom dit tout... Avec un niveau de chaleur de 20, c''est l''une des sauces les plus fortes que nous ayons jamais eues. Réservée aux véritables "chiliheads" qui n''ont peur de rien. À utiliser à vos risques et périls !',
  ingredients_fr = 'Piments extrêmement forts (Carolina Reaper), extrait de piment, vinaigre, sel'
WHERE slug = 'regret-extreme-hot-sauce';
