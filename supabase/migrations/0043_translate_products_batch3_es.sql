-- Migration: Translate products batch 3 (Spanish)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_es = 'Chilisaus.be - La Edición 2022 - CHOCOLATE SMOKED (sin azúcar añadida). Ingredientes ; Pimientos asados, vinagre de vino tinto, Carolina Reaper, Chipotle ahumado, cebolla roja, ajo asado, lima, cacao crudo, jengibre, aceite de oliva, sal, hierbas de Provenza. Una verdadera explosión de sabores frutales y ahumados con un final aterciopelado de chocolate. Nivel de picante 10 Apta para veganos',
  ingredients_es = 'Pimientos asados, vinagre de vino tinto, Carolina Reaper, Chipotle ahumado, cebolla roja, ajo asado, lima, cacao crudo, jengibre, aceite de oliva, sal, hierbas de Provenza'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_es = 'Mayonesa de Carolina Reaper - 180g. Ingredientes ; Aceite de colza, yema de huevo pasteurizada de gallinas camperas, mostaza de Dijon, puré de Carolina Reaper, vinagre de sidra, zumo de limón, azúcar, almidón de patata, sal, pimienta. Cremosa, espesa y deliciosamente picante. Sustituye tu mayonesa habitual por esta versión con Reaper para dar un toque especial a cualquier plato. Nivel de picante 9 No apta para veganos',
  ingredients_es = 'Aceite de colza, yema de huevo pasteurizada, mostaza de Dijon, puré de Carolina Reaper, vinagre de sidra, zumo de limón, azúcar, almidón de patata, sal, pimienta'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_es = 'RETO TUBE OF TERROR - Versión 2.0. Ingredientes ; Maíz, aceite de maíz, chiles (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), sal marina, especias. ¡Salvajemente picante! Granos de maíz tostados cubiertos con una mezcla de los chiles más picantes del mundo. ¿Te atreves con el reto?',
  ingredients_es = 'Maíz, aceite de maíz, chiles (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), sal marina, especias'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_es = 'Polvo de Trinidad Scorpion 10g. 1,2 millones SHU. El 2º chile más picante del mundo. Secado y molido en un polvo fino. Perfecto para añadir un calor súper fuerte y progresivo a tus comidas. Úselo con precaución.',
  ingredients_es = 'Chiles Trinidad Scorpion'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_es = 'Gnarlicky Ingredientes ; Ajo, chiles habaneros, cebolla, zumo de lima, vinagre, aceite de oliva, sal, semillas de mostaza, tomillo, romero, carbón activado. Una cantidad increíble de ajo confitado y ajo negro fermentado constituye la base de esta salsa. Adictiva para los amantes del ajo. Nivel de picante 6 Apta para veganos',
  ingredients_es = 'Ajo, chiles habaneros, cebolla, zumo de lima, vinagre, aceite de oliva, sal, semillas de mostaza, tomillo, romero, carbón activado'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_es = 'Miel Picante – LA ORIGINAL. Ingredientes ; Miel 90%, 10% chiles. Deliciosamente adictiva, dulce y picante. Producida en Ámsterdam con la mejor miel de flores y una mezcla secreta de chiles. Perfecta sobre pizza, pollo frito o quesos. Nivel de picante 4 No apta para veganos (contiene miel)',
  ingredients_es = 'Miel 90%, chiles 10%'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_es = 'Edición 2023 - ASIAN MANGO. Ingredientes ; Mango, lima, pimientos naranjas, chiles Ghost, chiles Madame Jeanette, vinagre de sidra, chalotas, zumo de naranja, limoncillo, hierbas, especias, sal. Fresca, jugosa y muy adictiva. Perfecta con la cocina asiática, arroz, pollo o pescado. Nivel de picante 10 Apta para veganos',
  ingredients_es = 'Mango, lima, pimientos naranjas, chiles Ghost, chiles Madame Jeanette, vinagre de sidra, chalotas, zumo de naranja, limoncillo, hierbas, especias, sal'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_es = 'TRIO Chilisaus.be - Nuestras 3 salsas propias: Garlic Italian (2020), Chocolate Smoked (2022) y Asian Mango (2023). Un viaje de sabor a través de nuestras creaciones anuales. 100% ingredientes naturales. Apta para veganos.',
  details_es = 'Contiene 3 botellas: Garlic Italian (Picante 8), Chocolate Smoked (Picante 10), Asian Mango (Picante 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_es = 'Happy Hatter Hot Sauce – SHAKIRA. Ingredientes ; Chiles Shakira, chiles Serrano, vinagre de sidra, azúcar de caña, cebolla, ajo, zumo de lima, sal, jengibre, aceite de oliva. Una salsa verde ligera, fresca y cítrica que utiliza el chile Shakira de origen árabe. Nivel de picante 3 Apta para veganos',
  ingredients_es = 'Chiles Shakira, chiles Serrano, vinagre de sidra, azúcar de caña, cebolla, ajo, zumo de lima, sal, jengibre, aceite de oliva'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_es = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Ingredientes ; Calabaza, pepinillos, chiles Aji Amarillo, Trinidad Scorpion, cebolla, vinagre, azúcar de caña, ron especiado, ajo, lima, sal, hierbas, aceite de oliva, mostaza. Una salsa sabrosa para auténticos piratas con un toque de ron. Nivel de picante 8 Apta para veganos',
  ingredients_es = 'Calabaza, pepinillos, chiles Aji Amarillo, Trinidad Scorpion, cebolla, vinagre, azúcar de caña, ron especiado, ajo, lima, sal, hierbas, aceite de oliva, mostaza'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_es = 'La Familia Happy Hatter al completo - Estuche de 6 salsas de 100ml. Del nivel de picante 3 al 10. Contiene: Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate y Chocolate Smoked. Un regalo ideal para explorar toda la gama.',
  details_es = 'Contiene 6 botellas de 100ml con diferentes niveles de picante.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_es = 'DOOMSDAY - Capsaicina Pura 1,6 Millones SHU - 30ml. Ingredientes ; Extracto de chile a 1,6 millones de unidades Scoville. Úselo solo como aditivo alimentario o para bebidas. Un calor instantáneo y duradero. ¡Atención, producto extremadamente potente!',
  ingredients_es = 'Extracto de chile a 1,6 millones SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_es = 'OBLIVION - Capsaicina Pura 500.000 SHU - 30ml. Completamente transparente, ideal para picar platos sin alterar su color o sabor original. Úselo con precaución.',
  ingredients_es = 'Extracto de chile a 500.000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_es = 'El Jefe - PICANTE. Ingredientes ; Tomates, chiles, ajo, zumo de limón, aceite de girasol, sal marina. Una salsa de estilo mexicano con chiles ahumados y ajo asado. Sabores profundos y textura rica. Nivel de picante 6 Apta para veganos',
  ingredients_es = 'Tomates, chiles, ajo, zumo de limón, aceite de girasol, sal marina'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_es = 'Ositos de goma Satan''s Spawn - 125g. Estos ositos tienen un lado oscuro: están infusionados con chiles Habanero fuertes. Deliciosos y frutales con un buen ardor. No aptos para veganos.',
  ingredients_es = 'Jarabe de glucosa, azúcar, gelatina (cerdo), ácido cítrico, aromas, polvo de habanero (0,3%), zumos de frutas concentrados'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_es = 'Lord Reaper - Salsa de Carolina Reaper fermentado 100ml. Ingredientes ; Agua, aceite de colza, Carolina Reaper (20%), vinagre, salsa de soja, naranja, azúcar de caña, especias, sal, jengibre, ajo, limón. Espesa, pegajosa y súper picante. Nivel de picante 10 Apta para veganos',
  ingredients_es = 'Agua, aceite de colza, Carolina Reaper (20%), vinagre, salsa de soja, naranja, azúcar de caña, especias, sal, jengibre, ajo, limón'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_es = 'RETO TUBE OF TERROR V1.0. Cacahuetes cubiertos con los chiles más picantes del mundo: Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah y Ghost, además de cristales de capsaicina pura a 13M SHU. ¡Buena suerte!',
  ingredients_es = 'Cacahuetes, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, cristales de capsaicina pura'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_es = 'LEVEL 20 - Shit that''s Hot! Salsa súper picante. Ingredientes ; Tomate, vinagre de sidra, ajo, chipotle, habanero limón, cebolla, zumo de limón verde, sirope de agave, capsaicina pura 9 millones SHU, hierbas, especias, sal. Equilibrio perfecto entre sabor y calor extremo. Nivel de picante 20 Apta para veganos',
  ingredients_es = 'Tomate, vinagre de sidra, ajo, chipotle, habanero limón, cebolla, zumo de limón verde, sirope de agave, capsaicina pura 9M SHU, hierbas, especias, sal'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_es = 'Sazonador Chipotle Adobo - 65g. Ingredientes: Comino, pimentón, ajo, cebolla, chipotle, orégano, pimienta, tomate, sal. Inspirado en la cocina tradicional mexicana. Terroso, ahumado y rico. Nivel de picante 5 Apta para veganos.',
  ingredients_es = 'Comino, pimentón, ajo, cebolla, chipotle, orégano, pimienta, tomate, sal'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_es = 'Aceite de Chile Scorpion - Portugal. Ingredientes: Aceite de girasol, Trinidad Scorpion, Ghost Pepper, Habanero, chile Malagueta, limón, sal. El sabor de los chiles destaca en este aceite sedoso. Nivel de picante 8 Apta para veganos.',
  ingredients_es = 'Aceite de girasol, Trinidad Scorpion, Ghost Pepper, Habanero, chile Malagueta, limón, sal'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
