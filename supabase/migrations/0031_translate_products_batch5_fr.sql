-- Migration: Translate products batch 5 (French)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_fr = 'Sauce super piquante naturelle au Carolina Reaper et ail noir. Ingrédients ; Vinaigre balsamique, mélasse, ail noir (8,5%), Carolina Reaper (5,5%), poudre de tomate, eau, oignon, sel, poivre noir. La star de cette sauce est l''ail noir fermenté pendant 14 jours, apportant une texture sucrée et sirupeuse avec des notes de soja et de balsamique. Niveau de chaleur 15. Convient aux végétaliens.',
  ingredients_fr = 'Vinaigre balsamique, mélasse, ail noir (8,5%), Carolina Reaper (5,5%), poudre de tomate, eau, oignon, sel, poivre noir'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_fr = 'Le Coffret Caribéen - 3 sauces avec 3 piments fruités différents des Caraïbes. Un voyage tropical à travers la chaleur des Antilles. Convient aux végétaliens.',
  details_fr = 'Contient 3 bouteilles de 100ml aux saveurs caribéennes.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_fr = 'Notre nouvelle gamme Édition Limitée - Bad Decision. Une sauce au piment fermenté avec un kick extrême. Parfois, une mauvaise décision est la plus délicieuse. Niveau de chaleur 11.',
  ingredients_fr = 'Piments fermentés, vinaigre, sel'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_fr = 'COMME VU DANS HOT ONES. L''une des trois meilleures sauces piquantes des États-Unis. Une touche tropicale avec une saveur primée. Créée par un chef BBQ renommé. Niveau de chaleur 6.',
  ingredients_fr = 'Piments Habanero, fruits tropicaux, oignons, vinaigre, épices'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_fr = 'Fièrement italienne - Sauce piquante aux cèpes (Porcini). Fabriquée à la main à Parme, en Italie. Saveur riche et complexe avec des piments calabrais, du vinaigre balsamique et des herbes italiennes. Riche en umami. Niveau de chaleur 6. Convient aux végétaliens.',
  ingredients_fr = 'Poivrons rouges rôtis, eau, vinaigre balsamique de Modène (11%), vinaigre de cidre, piments calabrais, jus de citron, sucre, poivre de Cayenne, épices, sel, cèpes séchés, ail'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_fr = 'Fièrement italienne - Sauce piquante à la truffe. L''arôme incroyable des truffes italiennes combiné aux piments calabrais et au vinaigre balsamique. Une touche de luxe pour n''importe quel plat. Niveau de chaleur 5.',
  ingredients_fr = 'Poivrons rouges rôtis, eau, vinaigre balsamique, arôme de truffe, piments calabrais, épices'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_fr = 'Sauce taco au Pepper X des USA. Le Pepper X est reconnu comme le piment le plus fort au monde. Cette sauce apporte cette chaleur extrême à vos plats mexicains préférés. Niveau de chaleur 15.',
  ingredients_fr = 'Piments Pepper X, vinaigre, tomates, épices'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_fr = 'Mélange d''épices Poivre Fumé avec Chipotle et Ail. Ingrédients ; Sel, poivre noir, ail, grains de poivre blanc, flocons de chipotle, zeste de citron, romarin, basilic, acide citrique, thym, verveine citronnée, piments séchés. Un ingrédient secret qui rehausse n''importe quel plat. Fumé avec une finale citronnée fraîche. Convient aux végétaliens.',
  ingredients_fr = 'Sel, poivre noir, ail, poivre blanc, chipotle, zeste de citron, romarin, basilic, acide citrique, thym, verveine citronnée, piments séchés'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
