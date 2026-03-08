-- Migration: Translate products batch 2 (Spanish)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_es = 'Happy Hatter Hot Sauce – SMOKED. Ingredientes ; Frutos del bosque, vino de Oporto tinto, vinagre de vino tinto, dátiles, miel de flores, chiles Ghost, cebolla roja, chalotas, ajo, polvo de chipotle, pimentón ahumado, aceite de oliva, sal. Una salsa rica y ahumada, dulce y deliciosa. Cargada con chiles Ghost, chipotle ahumado mexicano y jugosos frutos del bosque. Decadente, con cuerpo y sedosa con un gran final picante duradero. Perfecta con venado, filete, cerdo desmenuzado o una hamburguesa. Nivel de picante 7 No apta para veganos (contiene miel)',
  ingredients_es = 'Frutos del bosque, vino de Oporto tinto, vinagre de vino tinto, dátiles, miel de flores, chiles Ghost, cebolla roja, chalotas, ajo, polvo de chipotle, pimentón ahumado, aceite de oliva, sal'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_es = 'Polvo de Carolina Reaper 10g. 1,8 millones – 2,2 millones SHU. El polvo de chile más picante del mundo. Úselo con extrema precaución. Perfecto para añadir calor instantáneo a cualquier plato. Apto para veganos.',
  ingredients_es = 'Chiles Carolina Reaper'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_es = 'Copos de Chile Habanero 100.000 – 350.000 SHU. El equilibrio perfecto entre calor y sabor. Conocidos por su sabor frutal, estos copos aportan un delicioso toque picante a sus comidas. Chiles habaneros rojos frescos cultivados en México, secados al horno y triturados. Apto para veganos.',
  ingredients_es = 'Chiles habaneros secos'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_es = 'Vainas de Habanero Mexicano Secas (100.000 - 350.000 SHU). El clásico picante frutal de México. Ideal para salsas, marinados y guisos. Apto para veganos.',
  ingredients_es = 'Chiles habaneros secos'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_es = 'Vainas de Chile Naga / Ghost Pepper Secas 855.000 – 1 millón SHU. El 3er chile más picante del mundo. Bolsa de 12 chiles Ghost secos. De sabor ahumado y casi dulce al principio, el calor te sorprende después de 30 segundos. Úselos secos, triturados o rehidratados en agua caliente. Apto para veganos.',
  ingredients_es = 'Chiles Ghost Pepper (Bhut Jolokia) secos'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_es = 'Copos de Chile Chipotle Ahumado Mexicano - 20g (2500 - 8000 SHU). Deliciosos copos de Jalapeño ahumado. Esencial en la cocina mexicana para ese sabor a barbacoa profundo y auténtico. Apto para veganos.',
  ingredients_es = 'Chiles Jalapeño secos y ahumados (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_es = 'Polvo de Habanero 100.000 – 350.000 SHU. Elaborado a partir de vainas de Habanero secas y finamente molidas. Ideal para platos mexicanos o barbacoa. Mezclar con mayonesa o yogur para un dip picante. Apto para veganos.',
  ingredients_es = 'Chile habanero en polvo'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_es = 'Sambal 33% Carolina Reaper Puro. Ingredientes ; Cebollas 40%, Carolina Reaper 33%, azúcar refinada 8%, aceite de girasol 7,5%, salsa de soja dulce 7,5%, vinagre blanco 0,5%, sal, especias. Producido por el famoso Devon Chilli Man del Reino Unido. Primero un delicioso sabor dulce gracias a las cebollas caramelizadas, luego una montaña rusa de calor de los Carolina Reapers frescos. Nivel de picante 12 Apto para veganos',
  ingredients_es = 'Cebollas 40%, Carolina Reaper 33%, azúcar refinada 8%, aceite de girasol 7,5%, salsa de soja dulce 7,5%, vinagre blanco 0,5%, sal, especias'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_es = 'Garlic Italian (sin azúcar añadida) Perfecta para espaguetis. Ingredientes ; Aceite de colza, agua, vinagre de vino blanco, aceite de oliva, chile rojo, chile Naga (3%), puré de ajo, sal, especias, hierbas. ¡Nuestra primera salsa propia! Ingredientes de alta calidad, aceite de oliva sedoso, chiles Naga Ghost frescos, MUCHO ajo y hierbas italianas. Simple y deliciosa. Nivel de picante 8 Apto para veganos',
  ingredients_es = 'Aceite de colza, agua, vinagre de vino blanco, aceite de oliva, chile rojo, chile Naga (3%), puré de ajo, sal, especias, hierbas'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_es = 'Copos de Carolina Reaper 1,8 millones – 2,2 millones SHU. El chile más picante del mundo, secado y triturado en hermosos copos de fuego (semillas incluidas). Una pizca es suficiente para dar ese golpe Reaper a sopas, curris o pasta. Úselo con precaución. Apto para veganos.',
  ingredients_es = 'Copos de chile Carolina Reaper'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_es = 'Happy Hatter Hot Sauce – BOMBAY. Ingredientes ; Mango, piña, chile habanero amarillo, cebolla, vinagre de vino blanco, azúcar de caña, plátanos, ajo, zumo de lima, aceite de oliva, mezcla de especias (contiene apio), sal. Una salsa fresca y frutal con cúrcuma y especias asiáticas. Perfectamente equilibrada con un buen picante del Habanero amarillo. Ideal para wok o platos de arroz. Nivel de picante 8 Apto para veganos',
  ingredients_es = 'Mango, piña, chile habanero amarillo, cebolla, vinagre de vino blanco, azúcar de caña, plátanos, ajo, zumo de lima, aceite de oliva, mezcla de especias (contiene apio), sal'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_es = 'Polvo de Naga / Ghost 855.000 - 1 millón SHU. Directo de Nagaland, India. Sabor ahumado y casi dulce al principio, pero el calor intenso te sorprende después de 30-40 segundos. Úselo con cuidado. Apto para veganos.',
  ingredients_es = 'Chile Ghost Pepper en polvo'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_es = 'Copos de chile Naga / Ghost 855.000 - 1 millón SHU. Directo de Nagaland, estos copos son una excelente alternativa a los chiles frescos para aportar un calor extremo a sus platos. Apto para veganos.',
  ingredients_es = 'Copos de chile Ghost Pepper'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_es = 'Familia Happy Hatter – 3 Salsas – Presentadas en una caja de regalo artesanal. Contiene ORIGINAL (Picante 6), SMOKED (Picante 7) y BOMBAY (Picante 7). 100% calidad del productor belga Wim Daans.',
  details_es = 'Contiene 3 botellas de 100ml: Original, Smoked y Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_es = 'El kit esencial Carolina Reaper: Vainas, Polvo, Sambal y Salsa. Todo lo que necesitas para experimentar el chile más picante del mundo en 4 formas diferentes. ¡Máximo picante garantizado! Apto para veganos.',
  details_es = 'Incluye: 1x Salsa, 1x Sambal, 1x Polvo, 1x Vainas secas.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_es = '"Limon-hello" Utiliza solo los mejores limones "Sfusato" de la costa amalfitana en Italia. Ingredientes ; Chiles Madame Jeanette, limones Sfusato, zanahoria, cebolla, pimiento amarillo, ajo, jengibre, vinagre de sidra, cúrcuma, sal. Una salsa fresca y vibrante, rica en vitamina C. Fantástica con pescado, tacos o en un cóctel. Sin gluten, sin azúcar añadida. Nivel de picante 8 Apto para veganos',
  ingredients_es = 'Chiles Madame Jeanette, limones Sfusato, zanahoria, cebolla, pimiento amarillo, ajo, jengibre, vinagre de sidra, cúrcuma, sal'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_es = 'The Ripper (sin azúcar añadida). Ingredientes: Chile Scotch Bonnet, pimiento rojo, chile Carolina Reaper, vinagre de sidra, sal, chile en polvo, extracto de chile. Una combinación peligrosamente deliciosa de Scotch Bonnet frutal y el Carolina Reaper más picante del mundo. ¡Ardor máximo! Nivel de picante 12 Apto para veganos',
  ingredients_es = 'Chile Scotch Bonnet, pimiento rojo, chile Carolina Reaper, vinagre de sidra, sal, chile en polvo, extracto de chile'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_es = 'La colección completa Crazy Bastard - 7 salsas en una caja de regalo. Hechas a mano en Berlín con chiles asados al horno e ingredientes naturales frescos. Sin azúcar refinada ni extractos. Contiene todas las variantes, desde Jalapeño hasta Carolina Reaper.',
  details_es = 'Contiene 7 botellas de 100ml: Verde, Rosa, Azul, Amarilla, Naranja, Roja y Negra.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_es = 'Crazy Bastard Hot Box - Las 3 salsas más picantes de la colección: Naranja (Ghost Pepper y Mango), Roja (Trinidad Scorpion y Clementina) y Negra (Carolina Reaper y Arándano). Para los verdaderos amantes de las emociones fuertes. Apto para veganos.',
  details_es = 'Contiene 3 botellas de 100ml: Ghost Pepper, Trinidad Scorpion y Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_es = 'RED - Salsa de Trinidad Scorpion y Clementina. Ingredientes: Pimientos, manzana, cebolla, vinagre de vino blanco, clementinas (10%), chile Trinidad Scorpion (6%), ajo, lima, aceite de oliva, sal marina. La segunda salsa más picante de la colección. Ideal con pescado a la parrilla o gambas. Nivel de picante 10 Apto para veganos',
  ingredients_es = 'Pimientos, manzana, cebolla, vinagre de vino blanco, clementinas (10%), chile Trinidad Scorpion (6%), ajo, lima, aceite de oliva, sal marina'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
