-- Migration: Translate products batch 3 (Portuguese)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_pt = 'Chilisaus.be - Edição 2022 - CHOCOLATE SMOKED (sem adição de açúcar). Ingredientes ; Pimentos assados, vinagre de vinho tinto, Carolina Reaper, Chipotle fumado, cebola vermelha, alho assado, lima, cacau cru, gengibre, azeite, sal, ervas de Provence. Uma verdadeira explosão de sabores frutados e fumados com um final aveludado de chocolate. Nível de calor 10 Adequado para veganos',
  ingredients_pt = 'Pimentos assados, vinagre de vinho tinto, Carolina Reaper, Chipotle fumado, cebola vermelha, alho assado, lima, cacau cru, gengibre, azeite, sal, ervas de Provence'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_pt = 'Maionese de Carolina Reaper - 180g. Ingredientes ; Óleo de colza, gema de ovo pasteurizada de galinhas criadas ao ar livre, mostarda de Dijon, puré de Carolina Reaper, vinagre de cidra, sumo de limão, açúcar, amido de batata, sal, pimenta. Cremosa, densa e deliciosamente picante. Substitua a sua maionese habitual por esta versão com Reaper para dar um toque especial a cada prato. Nível de calor 9 Não adequado para veganos',
  ingredients_pt = 'Óleo de colza, gema de ovo pasteurizada, mostarda de Dijon, puré de Carolina Reaper, vinagre de cidra, sumo de limão, açúcar, amido de batata, sal, pimenta'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_pt = 'DESAFIO TUBE OF TERROR - Versão 2.0. Ingredientes ; Milho, óleo de milho, pimentas (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), sal marinho, especiarias. Selvaticamente picante! Grãos de milho torrados cobertos com uma mistura das pimentas mais picantes do mundo. Aceita o desafio?',
  ingredients_pt = 'Milho, óleo de milho, pimentas (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), sal marinho, especiarias'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_pt = 'Trinidad Scorpion em Pó 10g. 1,2 milhões SHU. A 2ª pimenta mais picante do mundo. Seca e moída num pó fino. Perfeito para adicionar um calor super forte e progressivo às suas refeições. Use com cautela.',
  ingredients_pt = 'Pimentas Trinidad Scorpion'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_pt = 'Gnarlicky Ingredientes ; Alho, pimentas habanero, cebola, sumo de lima, vinagre, azeite, sal, sementes de mostarda, tomilho, alecrim, carvão ativado. Uma quantidade incrível de alho confitado e alho negro fermentado constitui a base deste molho. Viciante para os amantes de alho. Nível de calor 6 Adequado para veganos',
  ingredients_pt = 'Alho, pimentas habanero, cebola, sumo de lima, vinagre, azeite, sal, sementes de mostarda, tomilho, alecrim, carvão ativado'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_pt = 'Mel Picante – O ORIGINAL. Ingredientes ; Mel 90%, 10% pimentas. Deliciosamente viciante, doce e picante. Produzido em Amesterdão com o melhor mel de flores e uma mistura secreta de pimentas. Perfeito em pizza, frango frito ou queijos. Nível de calor 4 Não adequado para veganos (contém mel)',
  ingredients_pt = 'Mel 90%, pimentas 10%'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_pt = 'Edição 2023 - ASIAN MANGO. Ingredientes ; Manga, lima, pimentos cor-de-laranja, pimentas Ghost, pimentas Madame Jeanette, vinagre de cidre, chalotas, sumo de laranja, erva-príncipe, ervas, especiarias, sal. Fresco, sumarento e muito viciante. Perfeito com cozinha asiática, arroz, frango ou peixe. Nível de calor 10 Adequado para veganos',
  ingredients_pt = 'Manga, lima, pimentos cor-de-laranja, pimentas Ghost, pimentas Madame Jeanette, vinagre de cidre, chalotas, sumo de laranja, erva-príncipe, ervas, especiarias, sal'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_pt = 'TRIO Chilisaus.be - Os nossos 3 molhos próprios: Garlic Italian (2020), Chocolate Smoked (2022) e Asian Mango (2023). Uma viagem de sabor através das nossas criações anuais. 100% ingredientes naturais. Adequado para veganos.',
  details_pt = 'Contém 3 garrafas: Garlic Italian (Picante 8), Chocolate Smoked (Picante 10), Asian Mango (Picante 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_pt = 'Happy Hatter Hot Sauce – SHAKIRA. Ingredientes ; Pimentas Shakira, pimentas Serrano, vinagre de cidra, açúcar de cana, cebola, alho, sumo de lima, sal, gengibre, azeite. Um molho verde leve, fresco e cítrico que utiliza a pimenta Shakira de origem árabe. Nível de calor 3 Adequado para veganos',
  ingredients_pt = 'Pimentas Shakira, pimentas Serrano, vinagre de cidra, açúcar de cana, cebola, alho, sumo de lima, sal, gengibre, azeite'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_pt = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Ingredientes ; Abóbora, pepinillos, pimentas Aji Amarillo, Trinidad Scorpion, cebola, vinagre, açúcar de cana, rum especiado, alho, lima, sal, ervas, azeite, mostarda. Um molho saboroso para verdadeiros piratas com um toque de rum. Nível de calor 8 Adequado para veganos',
  ingredients_pt = 'Abóbora, pepinillos, pimentas Aji Amarillo, Trinidad Scorpion, cebola, vinagre, açúcar de cana, rum especiado, alho, lima, sal, ervas, azeite, mostarda'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_pt = 'A Família Happy Hatter completa - Conjunto de 6 molhos de 100ml. Do nível de calor 3 ao 10. Contém: Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate e Chocolate Smoked. Um presente ideal para explorar toda a gama.',
  details_pt = 'Contém 6 garrafas de 100ml com diferentes níveis de calor.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_pt = 'DOOMSDAY - Capsaicina Pura 1,6 Milhões SHU - 30ml. Ingredientes ; Extrato de pimenta a 1,6 milhões de unidades Scoville. Use apenas como aditivo para alimentos ou bebidas. Um calor instantâneo e duradouro. Atenção, produto extremamente potente!',
  ingredients_pt = 'Extrato de chili a 1,6 milhões SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_pt = 'OBLIVION - Capsaicina Pura 500.000 SHU - 30ml. Completamente transparente, ideal para picar pratos sem alterar a sua cor ou sabor original. Use com cautela.',
  ingredients_pt = 'Extrato de chili a 500.000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_pt = 'El Jefe - PICANTE. Ingredientes ; Tomates, pimentas, alho, sumo de limão, óleo de girassol, sal marinho. Uma salsa ao estilo mexicano com pimentas fumadas e alho assado. Sabores profundos e textura rica. Nível de calor 6 Adequado para veganos',
  ingredients_pt = 'Tomates, pimentas, alho, sumo de limão, óleo de girassol, sal marinho'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_pt = 'Gomas Satan''s Spawn - 125g. Estas pequenas gomas têm um lado obscuro: são infundidas com pimentas Habanero fortes. Deliciosas e frutadas com um bom ardor. Não adequado para veganos.',
  ingredients_pt = 'Xarope de glucose, açúcar, gelatina (porco), ácido cítrico, aromas, pó de habanero (0,3%), sumos de fruta concentrados'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_pt = 'Lord Reaper - Molho de Carolina Reaper fermentado 100ml. Ingredientes ; Água, óleo de colza, Carolina Reaper (20%), vinagre, molho de soja, laranja, açúcar de cana, especiarias, sal, gengibre, alho, limão. Espesso, pegajoso e super picante. Nível de calor 10 Adequado para veganos',
  ingredients_pt = 'Água, óleo de colza, Carolina Reaper (20%), vinagre, molho de soja, laranja, açúcar de cana, especiarias, sal, gengibre, alho, limão'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_pt = 'DESAFIO TUBE OF TERROR V1.0. Amendoins cobertos com as pimentas mais picantes do mundo: Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah e Ghost, além de cristais de capsaicina pura a 13M SHU. Boa sorte!',
  ingredients_pt = 'Amendoins, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, cristais de capsaicina pura'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_pt = 'LEVEL 20 - Shit that''s Hot! Molho super picante. Ingredientes ; Tomate, vinagre de sidra, alho, chipotle, habanero lemon, cebola, sumo de lima, xarope de agave, capsaicina pura 9 milhões SHU, ervas, especiarias, sal. Equilíbrio perfeito entre sabor e calor extremo. Nível de calor 20 Adequado para veganos',
  ingredients_pt = 'Tomate, vinagre de sidra, alho, chipotle, habanero lemon, cebola, sumo de lima, xarope de agave, capsaicina pura 9M SHU, ervas, especiarias, sal'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_pt = 'Tempero Chipotle Adobo - 65g. Ingredientes: Cominhos, paprica, alho, cebola, chipotle, orégãos, pimenta, tomate, sal. Inspirado na cozinha tradicional mexicana. Terroso, fumado e rico. Nível de calor 5 Adequado para veganos.',
  ingredients_pt = 'Cominhos, paprica, alho, cebola, chipotle, orégãos, pimenta, tomate, sal'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_pt = 'Óleo de Chili Scorpion - Portugal. Ingredientes: Óleo de girassol, Trinidad Scorpion, Ghost Pepper, Habanero, pimenta Malagueta, limão, sal. O sabor das pimentas brilha através deste óleo sedoso. Nível de calor 8 Adequado para veganos.',
  ingredients_pt = 'Óleo de girassol, Trinidad Scorpion, Ghost Pepper, Habanero, pimenta Malagueta, limão, sal'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
