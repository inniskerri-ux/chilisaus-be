-- Migration: Translate products batch 4 (Spanish)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_es = 'El nuevo Death Nut Challenge - Versión 3.0. Ingredientes ; Cacahuetes Jumbo XL Virginia, azúcar de caña puro, chiles Carolina Reaper, chiles 7-Pot Primo, chiles (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), cristales de capsaicina pura 16M SHU, sal marina, especias. Cinco niveles de cacahuetes progresivamente más picantes. ¿Te atreves a llegar al nivel 5? Nivel de picante: FUERA DE ESCALA.',
  ingredients_es = 'Cacahuetes Jumbo XL, azúcar, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, cristales de capsaicina pura 16M SHU, sal marina, especias'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_es = 'Gama Edición Limitada Chilisaus.be. Una deliciosa combinación de chiles 7Pot, Habanero y piña. En colaboración con Uncle Paul. Nivel de picante 6.',
  ingredients_es = 'Chiles 7Pot, Habanero, Piña, vinagre, sal'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_es = 'Gama Edición Limitada Chilisaus.be. Una Sriracha intensa de Ghost Pepper en colaboración con Uncle Paul. Para los amantes de las emociones fuertes. Nivel de picante 10.',
  ingredients_es = 'Chiles Ghost, ajo, vinagre, azúcar, sal'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_es = 'Copos de Scotch Bonnet (100.000 – 350.000 SHU). El chile Scotch Bonnet es de la familia de los Habanero, muy utilizado en la cocina caribeña. Sabor frutal y brillante con un toque de dulzura. Ideal para Jerk Chicken. Apto para veganos.',
  ingredients_es = 'Copos de chile Scotch Bonnet secos'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_es = 'Vainas de Scotch Bonnet (100.000 – 350.000 SHU). Chiles Scotch Bonnet enteros secos. Úsalos enteros, molidos en polvo o rehidratados en agua caliente. Aporta un sabor auténtico del Caribe y África Occidental a tus platos. Apto para veganos.',
  ingredients_es = 'Chiles Scotch Bonnet secos'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_es = 'Chilisaus.be – Edición 2024 – Pasta de curry de coco con un toque especial. Ingredientes ; Chiles (Birds Eye, Madame Jeanette, Lombok), tomate, leche de coco, cebolla, vinagre de coco, agua, cacahuete, ajo, cilantro, azúcar de coco, jengibre, hierbas y especias (mostaza), sal. Una colaboración con White Whale Sauces. Nivel de picante 8.',
  ingredients_es = 'Chiles (Birds Eye, Madame Jeanette, Lombok), tomate, leche de coco, cebolla, vinagre de coco, agua, cacahuete, ajo, cilantro, azúcar de coco, jengibre, hierbas (mostaza), sal'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_es = 'Los fideos Ramen más picantes del mundo. Ingredientes ; Fideos (harina de trigo, agua, huevo), Ramen (chile Naga Jolokia, Carolina Reaper, pasta de miso, salsa de soja, aceite de sésamo, hierbas, especias). Estimados en más de 1 millón de unidades Scoville. ¡Buena suerte!',
  ingredients_es = 'Fideos (Trigo, Huevo), Naga Jolokia, Carolina Reaper, Pasta de miso, Aceite de sésamo, Especias'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_es = 'Aceite de oliva con ajo crujiente y chili crunch. Ingredientes ; Chiles, ajo, aceite de oliva, sazonador, azúcar, sal yodada. Fabricado en Filipinas, este aceite es una verdadera adicción. Ajo crujiente, gran picante y sabores tostados profundos. Ganador de la medalla de oro en los Clifton National Chilli Awards 2023. Nivel de picante 7 Apto para veganos.',
  ingredients_es = 'Chiles, ajo, aceite de oliva, sazonador, azúcar, sal yodada'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_es = 'El nuevo chile más picante del mundo: PEPPER X (2,693 millones SHU). SIZZLING STEAK Ingredientes: Sal marina, especias (incluyendo pimienta negra y chile rojo), ajo, cebolla, aceite de girasol, Pepper X. Dale a tus filetes, tofu o verduras un picante extremo. Inventado por Ed Currie. Apto para veganos.',
  ingredients_es = 'Sal marina, pimienta negra, chile rojo, ajo, cebolla, aceite de girasol, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_es = 'Sazonador Italiano Picante con Pepper X. Eleva tus pizzas, pastas o marinados con esta mezcla que contiene el famoso Pepper X. Creado por Ed Currie, el creador del Carolina Reaper. Apto para veganos.',
  ingredients_es = 'Hierbas italianas, polvo de Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_es = 'Sazonador de Ajo Picante con Pepper X. Una mezcla de especias cargada de ajo con el calor masivo de Pepper X. Perfecto para transformar cualquier comida en un reto picante. Apto para veganos.',
  ingredients_es = 'Sal, ajo, chile en polvo, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_es = 'Mezcla de especias Cajún (Picante 4). Un clásico estilo Luisiana, perfecto para pescado, pollo o verduras. Aporta un picante suave y un sabor profundo. Apto para veganos.',
  ingredients_es = 'Pimentón, ajo, cebolla, pimienta negra, cayena, orégano, tomillo'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_es = 'Sazonador Blazin'' Inferno de Ghost Pepper (Nivel de picante 10). Una mezcla potente para quienes buscan un calor intenso e instantáneo. Ideal para parrillas y marinados. Apto para veganos.',
  ingredients_es = 'Ghost Pepper, sal marina, ajo, especias'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_es = '"FOGO" (fuego en portugués) con Carolina Reaper y Trinidad Moruga Scorpion. Ingredientes: Carolina Reaper, piña, agua, vinagre de sidra, Licor Brutal, mango verde, chiles Moruga, azúcar mascabado, sal, menta, goma xantana. Fresco, vibrante y frutal con un toque de menta sorprendente antes de que llegue el calor extremo. Nivel de picante 12.',
  ingredients_es = 'Carolina Reaper, piña, agua, vinagre de sidra, Licor Brutal, mango verde, chiles Moruga, azúcar mascabado, sal, menta, goma xantana'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_es = 'Salsa verde fresca de estilo mexicano. Ingredientes ; Tomatillos, jalapeños, ajo, zumo de limón, aceite de girasol, cebolla en polvo, sal marina. Nuestra "salsa de desayuno": ligera, fresca y ligeramente ácida por el tomatillo. Una Salsa Verde clásica, perfeccionada por El Jefe. Nivel de picante 4. Apta para veganos.',
  ingredients_es = 'Tomatillos, jalapeños, ajo, zumo de limón, aceite de girasol, cebolla en polvo, sal marina'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_es = 'Chocolate negro belga al 70% con Ghost Pepper, menta y azúcar explosivo. Ingredientes ; Chocolate negro (pasta de cacao 70%, azúcar, manteca de cacao, emulgente - lecitina de SOJA, vainilla natural), azúcar explosivo (2%), polvo de chile Naga (0,1%), aceite esencial de menta. Una experiencia única. Picante ligero a medio. Apto para vegetarianos.',
  ingredients_es = 'Chocolate negro (70% cacao), azúcar explosivo, polvo de chile Naga, aceite de menta'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_es = 'Ingredientes ; Pasta de tomate, agua, vinagre de sidra, cebollas, azúcar, semillas de sésamo, especias, chipotle, habanero, chile guajillo, ajo ahumado, sal. ¡Un producto fantástico para los amantes de los sabores ahumados y de ajo potentes! Espeso y sabroso. Nivel de picante 5. Apto para veganos.',
  ingredients_es = 'Pasta de tomate, agua, vinagre de sidra, cebollas, azúcar, semillas de sésamo, especias, chipotle, habanero, chile guajillo, ajo ahumado, sal'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_es = 'Salsa Buffalo Singularity. Ingredientes ; Vinagre de Kombucha, puré de Cayena (chile cayena, sal, ácido acético), mantequilla vegetal, azúcar morena, ajo en polvo, sal, pimentón ahumado, goma xantana. La versión escocesa de la clásica salsa Buffalo. Ideal para alitas de pollo. Nivel de picante 4. Apta para veganos.',
  ingredients_es = 'Vinagre de Kombucha, chile Cayena, mantequilla vegetal, azúcar morena, ajo en polvo, sal, pimentón ahumado, goma xantana'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_es = 'La salsa "insanity" original de Dave - Como se ve en Hot Ones Temporada 1. Ingredientes ; Chiles picantes, agua, pasta de tomate, extracto de chile, vinagre de caña, sal, cebollas, ajo, especias. ¡Una gota es suficiente! La salsa que inició el mercado de las salsas súper picantes. Nivel de picante: MUY ALTO. Apta para veganos.',
  ingredients_es = 'Chiles, agua, pasta de tomate, extracto de chile, vinagre de caña, sal, cebollas, ajo, especias'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_es = 'Dirty Dick''s Caribbean Dreams - Ingredientes ; Chiles Habanero, peras, melocotones, zumo de piña, vinagre de sidra, mostaza, zumo de manzana, azúcar morena, miel y especias recién molidas. Una salsa a base de mostaza de estilo caribeño. Sabores audaces, perfectamente equilibrados. Nivel de picante 6 No apta para veganos (contiene miel).',
  ingredients_es = 'Chiles Habanero, peras, melocotones, zumo de piña, vinagre de sidra, mostaza, zumo de manzana, azúcar morena, miel, especias'
WHERE slug = 'dirty-dicks-caribbean-dreams';
