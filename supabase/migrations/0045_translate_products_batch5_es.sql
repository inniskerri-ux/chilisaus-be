-- Migration: Translate products batch 5 (Spanish)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_es = 'Salsa súper picante natural con Carolina Reaper y ajo negro. Ingredientes ; Vinagre balsámico, melaza, ajo negro (8,5%), Carolina Reaper (5,5%), tomate en polvo, agua, cebolla, sal, pimienta negra. La estrella es el ajo negro fermentado durante 14 días, que aporta una textura dulce y almibarada con notas de soja y balsámico. Nivel de picante 15. Apta para veganos.',
  ingredients_es = 'Vinagre balsámico, melaza, ajo negro (8,5%), Carolina Reaper (5,5%), tomate en polvo, agua, cebolla, sal, pimienta negra'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_es = 'La Caja del Caribe - 3 salsas con 3 chiles frutales diferentes del Caribe. Un viaje tropical por el picante de las Antillas. Apta para veganos.',
  details_es = 'Contiene 3 botellas de 100ml con sabores caribeños.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_es = 'Nuestra nueva gama Edición Limitada - Bad Decision. Una salsa de chile fermentado con un golpe extremo. A veces, una mala decisión es la más deliciosa. Nivel de picante 11.',
  ingredients_es = 'Chiles fermentados, vinagre, sal'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_es = 'COMO SE VE EN HOT ONES. Una de las tres mejores salsas picantes de EE. UU. Un toque tropical con un sabor galardonado. Creada por un chef de barbacoa premiado. Nivel de picante 6.',
  ingredients_es = 'Chiles Habanero, frutas tropicales, cebollas, vinagre, especias'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_es = 'Orgullosamente italiana - Salsa picante con hongos Porcini. Hecha a mano en Parma, Italia. Sabor rico y complejo con chiles calabreses, vinagre balsámico y hierbas italianas. Rica en umami. Nivel de picante 6. Apta para veganos.',
  ingredients_es = 'Pimientos rojos asados, agua, vinagre balsámico de Módena (11%), vinagre de sidra, chiles calabreses, zumo de limón, azúcar, pimienta de cayena, especias, sal, hongos porcini secos, ajo'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_es = 'Orgullosamente italiana - Salsa picante de trufa. El increíble aroma de las trufas italianas combinado con chiles calabreses y vinagre balsámico. Un toque de lujo para cualquier plato. Nivel de picante 5.',
  ingredients_es = 'Pimientos rojos asados, agua, vinagre balsámico, aroma de trufa, chiles calabreses, especias'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_es = 'Salsa para tacos con Pepper X de EE. UU. Pepper X está reconocido como el chile más picante del mundo. Esta salsa lleva ese calor extremo a tus platos mexicanos favoritos. Nivel de picante 15.',
  ingredients_es = 'Chiles Pepper X, vinagre, tomates, especias'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_es = 'Mezcla de especias Pimienta Ahumada con Chipotle y Ajo. Ingredientes ; Sal, pimienta negra, ajo, granos de pimienta blanca, copos de chipotle, ralladura de limón, romero, albahaca, ácido cítrico, tomillo, hierbaluisa, chiles secos. Un ingrediente secreto que eleva cualquier comida. Ahumado con un final cítrico fresco. Apto para veganos.',
  ingredients_es = 'Sal, pimienta negra, ajo, pimienta blanca, chipotle, ralladura de limón, romero, albahaca, ácido cítrico, tomillo, hierbaluisa, chiles secos'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
