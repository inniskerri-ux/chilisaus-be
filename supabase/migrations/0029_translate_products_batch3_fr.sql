-- Migration: Translate products batch 3 (French)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_fr = 'Chilisaus.be - L''Édition 2022 - CHOCOLATE SMOKED (sans sucre ajouté). Ingrédients ; Poivrons rôtis, vinaigre de vin rouge, Carolina Reaper, Chipotle fumé, oignon rouge, ail rôti, citron vert, cacao cru, gingembre, huile d''olive, sel, herbes de Provence. Une véritable explosion de saveurs fruitées et fumées avec une finale veloutée de chocolat. Niveau de chaleur 10 Convient aux végétaliens',
  ingredients_fr = 'Poivrons rôtis, vinaigre de vin rouge, Carolina Reaper, Chipotle fumé, oignon rouge, ail rôti, citron vert, cacao cru, gingembre, huile d''olive, sel, herbes de Provence'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_fr = 'Mayonnaise au Carolina Reaper - 180g. Ingrédients ; Huile de colza, jaune d''œuf pasteurisé de poules élevées en plein air, moutarde de Dijon, purée de Carolina Reaper, vinaigre de cidre, jus de citron, sucre, amidon de pomme de terre, sel, poivre. Crémeuse, épaisse et délicieusement épicée. Remplacez votre mayo habituelle par cette version au Reaper pour relever tous vos plats. Niveau de chaleur 9 Ne convient pas aux végétaliens',
  ingredients_fr = 'Huile de colza, jaune d''œuf pasteurisé, moutarde de Dijon, purée de Carolina Reaper, vinaigre de cidre, jus de citron, sucre, amidon de pomme de terre, sel, poivre'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_fr = 'DÉFI TUBE OF TERROR - Version 2.0. Ingrédients ; Maïs, huile de maïs, piments (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), sel marin, épices. Sauvagement fort ! Des pépites de maïs grillées enrobées d''un mélange de piments parmi les plus forts du monde. Oserez-vous relever le défi ?',
  ingredients_fr = 'Maïs, huile de maïs, piments (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), sel marin, épices'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_fr = 'Poudre de Trinidad Scorpion 10g. 1,2 million SHU. Le 2ème piment le plus fort au monde. Séché et broyé en une poudre fine. Parfait pour ajouter une chaleur super forte et progressive à vos repas. À utiliser avec précaution.',
  ingredients_fr = 'Piments Trinidad Scorpion'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_fr = 'Gnarlicky Ingrédients ; Ail, piments habanero, oignon, jus de citron vert, vinaigre, huile d''olive, sel, graines de moutarde, thym, romarin, charbon actif. Une quantité incroyable d''ail confit et d''ail noir fermenté constitue la base de cette sauce. Addictive pour les amateurs d''ail. Niveau de chaleur 6 Convient aux végétaliens',
  ingredients_fr = 'Ail, piments habanero, oignon, jus de citron vert, vinaigre, huile d''olive, sel, graines de moutarde, thym, romarin, charbon actif'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_fr = 'Miel Piquant – L''ORIGINAL. Ingrédients ; Miel 90%, 10% piments. Délicieusement addictif, sucré et piquant. Produit à Amsterdam à partir du meilleur miel de fleurs et d''un mélange secret de piments. Parfait sur une pizza, du poulet frit ou des fromages. Niveau de chaleur 4 Ne convient pas aux végétaliens (contient du miel)',
  ingredients_fr = 'Miel 90%, piments 10%'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_fr = 'L''Édition 2023 - ASIAN MANGO. Ingrédients ; Mangue, citron vert, poivrons oranges, piments Ghost, piments Madame Jeanette, vinaigre de cidre, échalotes, jus d''orange, citronnelle, herbes, épices, sel. Fraîche, juteuse et très addictive. Parfaite avec la cuisine asiatique, le riz, le poulet ou le poisson. Niveau de chaleur 10 Convient aux végétaliens',
  ingredients_fr = 'Mangue, citron vert, poivrons oranges, piments Ghost, piments Madame Jeanette, vinaigre de cidre, échalotes, jus d''orange, citronnelle, herbes, épices, sel'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_fr = 'TRIO Chilisaus.be - Nos 3 propres sauces : Garlic Italian (2020), Chocolate Smoked (2022) et Asian Mango (2023). Un voyage gustatif à travers nos créations annuelles. 100% ingrédients naturels. Convient aux végétaliens.',
  details_fr = 'Contient 3 bouteilles : Garlic Italian (Chaleur 8), Chocolate Smoked (Chaleur 10), Asian Mango (Chaleur 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_fr = 'Happy Hatter Hot Sauce – SHAKIRA. Ingrédients ; Piments Shakira, piments Serrano, vinaigre de cidre, sucre de canne, oignon, ail, jus de citron vert, sel, gingembre, huile d''olive. Une sauce verte légère, fraîche et zestée utilisant le piment Shakira, d''origine arabe. Niveau de chaleur 3 Convient aux végétaliens',
  ingredients_fr = 'Piments Shakira, piments Serrano, vinaigre de cidre, sucre de canne, oignon, ail, jus de citron vert, sel, gingembre, huile d''olive'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_fr = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Ingrédients ; Citrouille, cornichons, piments Aji Amarillo, Trinidad Scorpion, oignon, vinaigre, sucre de canne, rhum épicé, ail, citron vert, sel, herbes, huile d''olive, moutarde. Une sauce savoureuse pour les vrais pirates avec une touche de rhum. Niveau de chaleur 8 Convient aux végétaliens',
  ingredients_fr = 'Citrouille, cornichons, piments Aji Amarillo, Trinidad Scorpion, oignon, vinaigre, sucre de canne, rhum épicé, ail, citron vert, sel, herbes, huile d''olive, moutarde'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_fr = 'La Famille Happy Hatter au complet - Coffret de 6 sauces de 100ml. Du niveau de chaleur 3 à 10. Contient : Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate et Chocolate Smoked. Un cadeau idéal pour explorer toute la gamme.',
  details_fr = 'Contient 6 bouteilles de 100ml avec différents niveaux de chaleur.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_fr = 'DOOMSDAY - Capsaïcine Pure 1,6 Million SHU - 30ml. Ingrédients ; Extrait de piment à 1,6 million d''unités Scoville. À utiliser uniquement comme additif alimentaire ou de boisson. Une chaleur instantanée et durable. Attention, produit extrêmement puissant !',
  ingredients_fr = 'Extrait de piment à 1,6 million SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_fr = 'OBLIVION - Capsaïcine Pure 500 000 SHU - 30ml. Complètement transparente, cette extraction est idéale pour relever vos plats sans en altérer la couleur ou le goût initial. À utiliser avec précaution.',
  ingredients_fr = 'Extrait de piment à 500 000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_fr = 'El Jefe - PICANTE. Ingrédients ; Tomates, piments, ail, jus de citron, huile de tournesol, sel marin. Une salsa de style mexicain avec des piments fumés et de l''ail rôti. Saveurs profondes et texture riche. Niveau de chaleur 6 Convient aux végétaliens',
  ingredients_fr = 'Tomates, piments, ail, jus de citron, huile de tournesol, sel marin'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_fr = 'Oursons en gomme Satan''s Spawn - 125g. Ces petits oursons ont un côté sombre : ils sont infusés aux piments Habanero forts. Délicieux et fruités avec une bonne brûlure. Ne convient pas aux végétaliens.',
  ingredients_fr = 'Sirop de glucose, sucre, gélatine (porc), acide citrique, arômes, poudre de habanero (0,3%), jus de fruits concentrés'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_fr = 'Lord Reaper - Sauce au piment Carolina Reaper fermenté 100ml. Ingrédients ; Eau, huile de colza, Carolina Reaper (20%), vinaigre, sauce soja, orange, sucre de canne, épices, sel, gingembre, ail, citron. Épaisse, collante et super piquante. Niveau de chaleur 10 Convient aux végétaliens',
  ingredients_fr = 'Eau, huile de colza, Carolina Reaper (20%), vinaigre, sauce soja, orange, sucre de canne, épices, sel, gingembre, ail, citron'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_fr = 'DÉFI TUBE OF TERROR V1.0. Cacahuètes enrobées des piments les plus forts du monde : Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah et Ghost, plus des cristaux de capsaïcine pure à 13M SHU. Bonne chance !',
  ingredients_fr = 'Cacahuètes, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, cristaux de capsaïcine pure'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_fr = 'LEVEL 20 - Shit that''s Hot! Sauce super forte. Ingrédients ; Tomate, vinaigre de cidre, ail, chipotle, habanero citron, oignon, jus de citron vert, sirop d''agave, capsaïcine pure 9 millions SHU, herbes, épices, sel. Équilibre parfait entre saveur et chaleur extrême. Niveau de chaleur 20 Convient aux végétaliens',
  ingredients_fr = 'Tomate, vinaigre de cidre, ail, chipotle, habanero citron, oignon, jus de citron vert, sirop d''agave, capsaïcine pure 9M SHU, herbes, épices, sel'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_fr = 'Assaisonnement Chipotle Adobo - 65g. Ingrédients : Cumin, paprika, ail, oignon, chipotle, origan, poivre, tomate, sel. Inspiré de la cuisine traditionnelle mexicaine. Terreux, fumé et riche. Niveau de chaleur 5 Convient aux végétaliens.',
  ingredients_fr = 'Cumin, paprika, ail, oignon, chipotle, origan, poivre, tomate, sel'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_fr = 'Huile de piment Scorpion - Portugal. Ingrédients : Huile de tournesol, Trinidad Scorpion, Ghost Pepper, Habanero, piment Malagueta, citron, sel. La saveur des piments brille à travers cette huile soyeuse. Niveau de chaleur 8 Convient aux végétaliens.',
  ingredients_fr = 'Huile de tournesol, Trinidad Scorpion, Ghost Pepper, Habanero, piment Malagueta, citron, sel'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
