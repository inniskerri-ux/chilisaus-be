-- Migration: Translate products batch 4 (French)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_fr = 'Le tout nouveau Death Nut Challenge - Version 3.0. Ingrédients ; Cacahuètes Jumbo XL Virginia, sucre de canne pur, piments Carolina Reaper, piments 7-Pot Primo, piments (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), cristaux de capsaïcine pure 16M SHU, sel marin, épices. Cinq niveaux de cacahuètes de plus en plus fortes. Oserez-vous atteindre le niveau 5 ? Niveau de chaleur : HORS CATÉGORIE.',
  ingredients_fr = 'Cacahuètes Jumbo XL, sucre, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, cristaux de capsaïcine pure 16M SHU, sel marin, épices'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_fr = 'Gamme Édition Limitée Chilisaus.be. Une délicieuse combinaison de piments 7Pot, Habanero et ananas. En collaboration avec Uncle Paul. Niveau de chaleur 6.',
  ingredients_fr = 'Piments 7Pot, Habanero, Ananas, vinaigre, sel'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_fr = 'Gamme Édition Limitée Chilisaus.be. Une Sriracha intense au piment Ghost en collaboration avec Uncle Paul. Pour les amateurs de sensations fortes. Niveau de chaleur 10.',
  ingredients_fr = 'Piments Ghost, ail, vinaigre, sucre, sel'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_fr = 'Flocons de Scotch Bonnet (100 000 – 350 000 SHU). Le piment Scotch Bonnet est de la famille des Habanero, très utilisé dans la cuisine antillaise. Saveur fruitée et vive avec une pointe de douceur. Idéal pour le Jerk Chicken. Convient aux végétaliens.',
  ingredients_fr = 'Flocons de piment Scotch Bonnet séchés'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_fr = 'Gousses de Scotch Bonnet (100 000 – 350 000 SHU). Piments Scotch Bonnet entiers séchés. Utilisez-les entiers, broyés en poudre ou réhydratés dans l''eau chaude. Apporte une saveur authentique des Caraïbes et d''Afrique de l''Ouest à vos plats. Convient aux végétaliens.',
  ingredients_fr = 'Piments Scotch Bonnet séchés'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_fr = 'Chilisaus.be – Édition 2024 – Pâte de curry à la noix de coco avec un twist. Ingrédients ; Piments (Birds Eye, Madame Jeanette, Lombok), tomate, lait de coco, oignon, vinaigre de coco, eau, cacahuète, ail, coriandre, sucre de coco, gingembre, herbes et épices (moutarde), sel. Une collaboration avec White Whale Sauces. Niveau de chaleur 8.',
  ingredients_fr = 'Piments (Birds Eye, Madame Jeanette, Lombok), tomate, lait de coco, oignon, vinaigre de coco, eau, cacahuète, ail, coriandre, sucre de coco, gingembre, herbes et épices (moutarde), sel'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_fr = 'Les nouilles Ramen les plus fortes au monde. Ingrédients ; Nouilles (farine de blé, eau, œuf), Ramen (piment Naga Jolokia, Carolina Reaper, pâte miso, sauce soja, huile de sésame, herbes, épices). Estimées à plus d''un million d''unités Scoville. Bonne chance !',
  ingredients_fr = 'Nouilles (Blé, Œuf), Piment Naga Jolokia, Carolina Reaper, Pâte miso, Huile de sésame, Épices'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_fr = 'Huile d''olive avec ail croustillant et chili crunch. Ingrédients ; Piments, ail, huile d''olive, assaisonnement, sucre, sel iodé. Fabriquée aux Philippines, cette huile est une véritable addiction. Ail croustillant, belle chaleur et saveurs grillées profondes. Gagnante de la médaille d''or aux Clifton National Chilli Awards 2023. Niveau de chaleur 7 Convient aux végétaliens.',
  ingredients_fr = 'Piments, ail, huile d''olive, assaisonnement, sucre, sel iodé'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_fr = 'Le nouveau piment le plus fort au monde : PEPPER X (2,693 millions SHU). SIZZLING STEAK Ingrédients : Sel marin, épices (dont poivre noir et piment rouge), ail, oignon, huile de tournesol, Pepper X. Relevez vos steaks, tofu ou légumes avec une chaleur extrême. Créé par Ed Currie. Convient aux végétaliens.',
  ingredients_fr = 'Sel marin, poivre noir, piment rouge, ail, oignon, huile de tournesol, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_fr = 'Assaisonnement Italien Épicé au Pepper X. Relevez vos pizzas, pâtes ou marinades avec ce mélange contenant le célèbre Pepper X. Créé par Ed Currie, le créateur du Carolina Reaper. Convient aux végétaliens.',
  ingredients_fr = 'Épices italiennes, poudre de Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_fr = 'Assaisonnement à l''ail épicé au Pepper X. Un mélange d''épices aillé avec la chaleur redoutable du Pepper X. Parfait pour transformer n''importe quel repas en défi piquant. Convient aux végétaliens.',
  ingredients_fr = 'Sel, ail, poudre de piment, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_fr = 'Mélange d''épices Cajun (Chaleur 4). Un mélange classique de style Louisiane, parfait pour le poisson, le poulet ou les légumes. Apporte une chaleur douce et une saveur profonde. Convient aux végétaliens.',
  ingredients_fr = 'Paprika, ail, oignon, poivre noir, cayenne, origan, thym'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_fr = 'Assaisonnement Blazin'' Inferno au piment Ghost (Niveau de chaleur 10). Un mélange puissant pour ceux qui recherchent une chaleur intense et instantanée. Idéal pour les grillades et les marinades. Convient aux végétaliens.',
  ingredients_fr = 'Piment Ghost Pepper, sel marin, ail, épices'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_fr = '"FOGO" (feu en portugais) avec Carolina Reaper et Trinidad Moruga Scorpion. Ingrédients : Carolina Reaper, ananas, eau, vinaigre de cidre, Licor Brutal, mangue verte, piments Moruga, sucre muscovado, sel, menthe, gomme xanthane. Frais, vif et fruité avec une touche de menthe surprenante avant que la chaleur extrême n''éclate. Niveau de chaleur 12.',
  ingredients_fr = 'Carolina Reaper, ananas, eau, vinaigre de cidre, Licor Brutal, mangue verte, piments Moruga, sucre muscovado, sel, menthe, gomme xanthane'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_fr = 'Salsa verte fraîche de style mexicain. Ingrédients ; Tomatilles, jalapeños, ail, jus de citron, huile de tournesol, poudre d''oignon, sel marin. Notre "salsa du petit-déjeuner" - légère, fraîche et légèrement acidulée grâce aux tomatilles. Une Salsa Verde classique, perfectionnée par El Jefe. Niveau de chaleur 4. Convient aux végétaliens.',
  ingredients_fr = 'Tomatilles, jalapeños, ail, jus de citron, huile de tournesol, poudre d''oignon, sel marin'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_fr = 'Chocolat noir belge à 70% avec piment Ghost, menthe et sucre pétillant. Ingrédients ; Chocolat noir (pâte de cacao 70%, sucre, beurre de cacao, émulsifiant - lécithine de SOJA, vanille naturelle), sucre pétillant (2%), poudre de piment Naga (0,1%), huile essentielle de menthe. Une expérience unique. Chaleur légère à moyenne. Convient aux végétariens.',
  ingredients_fr = 'Chocolat noir (70% cacao), sucre pétillant, poudre de piment Naga, huile de menthe'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_fr = 'Ingrédients ; Pâte de tomate, eau, vinaigre de cidre, oignons, sucre, graines de sésame, épices, chipotle, habanero, piment guajillo, ail fumé, sel. Un produit fantastique pour les amateurs de saveurs fumées et aillées puissantes ! Épais et savoureux. Niveau de chaleur 5. Convient aux végétaliens.',
  ingredients_fr = 'Pâte de tomate, eau, vinaigre de cidre, oignons, sucre, graines de sésame, épices, chipotle, habanero, piment guajillo, ail fumé, sel'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_fr = 'Sauce Buffalo Singularity. Ingrédients ; Vinaigre de Kombucha, purée de Cayenne (piment cayenne, sel, acide acétique), beurre végétal, sucre brun, ail en poudre, sel, paprika fumé, gomme xanthane. La version écossaise de la sauce Buffalo classique. Idéale sur les ailes de poulet. Niveau de chaleur 4. Convient aux végétaliens.',
  ingredients_fr = 'Vinaigre de Kombucha, piment Cayenne, beurre végétal, sucre brun, ail en poudre, sel, paprika fumé, gomme xanthane'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_fr = 'La sauce "insensée" originale de Dave - Comme vu dans Hot Ones Saison 1. Ingrédients ; Piments forts, eau, pâte de tomate, extrait de piment, vinaigre de canne, sel, oignons, ail, épices. Une goutte suffit ! La sauce qui a lancé le marché des sauces super fortes. Niveau de chaleur : TRÈS ÉLEVÉ. Convient aux végétaliens.',
  ingredients_fr = 'Piments, eau, pâte de tomate, extrait de piment, vinaigre de canne, sel, oignons, ail, épices'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_fr = 'Dirty Dick''s Caribbean Dreams - Ingrédients ; Piments Habanero, poires, pêches, jus d''ananas, vinaigre de cidre, moutarde, jus de pomme, sucre brun, miel et épices fraîchement moulues. Une sauce à base de moutarde de style caribéen. Saveurs audacieuses, parfaitement équilibrées. Niveau de chaleur 6 Ne convient pas aux végétaliens (contient du miel).',
  ingredients_fr = 'Piments Habanero, poires, pêches, jus d''ananas, vinaigre de cidre, moutarde, jus de pomme, sucre brun, miel, épices'
WHERE slug = 'dirty-dicks-caribbean-dreams';
