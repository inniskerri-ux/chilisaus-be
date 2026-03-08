-- Migration: Translate products batch 5 (Portuguese)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_pt = 'Molho super picante natural com Carolina Reaper e alho negro. Ingredientes ; Vinagre balsâmico, melaço, alho negro (8,5%), Carolina Reaper (5,5%), tomate em pó, água, cebola, sal, pimenta preta. A estrela é o alho negro fermentado durante 14 dias, que confere uma textura doce e xaroposa com notas de soja e balsâmico. Nível de calor 15. Adequado para veganos.',
  ingredients_pt = 'Vinagre balsâmico, melaço, alho negro (8,5%), Carolina Reaper (5,5%), tomate em pó, água, cebola, sal, pimenta preta'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_pt = 'A Caixa das Caraíbas - 3 molhos com 3 pimentas frutadas diferentes das Caraíbas. Uma viagem tropical pelo picante das Antilhas. Adequado para veganos.',
  details_pt = 'Contém 3 garrafas de 100ml com sabores caribenhos.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_pt = 'A nossa nova gama Edição Limitada - Bad Decision. Um molho de chili fermentado com um golpe extremo. Às vezes, uma má decisão é a mais deliciosa. Nível de calor 11.',
  ingredients_pt = 'Pimentas fermentadas, vinagre, sal'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_pt = 'COMO VISTO EM HOT ONES. Um dos três melhores molhos picantes dos EUA. Um toque tropical com um sabor premiado. Criado por um chef de churrasco galardoado. Nível de calor 6.',
  ingredients_pt = 'Pimentas Habanero, frutas tropicais, cebolas, vinagre, especiarias'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_pt = 'Orgulhosamente italiano - Molho picante com cogumelos Porcini. Feito à mão em Parma, Itália. Sabor rico e complexo com pimentas calabresas, vinagre balsâmico e ervas italianas. Rico em umami. Nível de calor 6. Adequado para veganos.',
  ingredients_pt = 'Pimentos vermelhos assados, água, vinagre balsâmico de Módena (11%), vinagre de sidra, pimentas calabresas, sumo de limão, açúcar, pimenta de caiena, especiarias, sal, cogumelos porcini secos, alho'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_pt = 'Orgulhosamente italiano - Molho picante de trufa. O incrível aroma das trufas italianas combinado com pimentas calabresas e vinagre balsâmico. Um toque de luxo para qualquer prato. Nível de calor 5.',
  ingredients_pt = 'Pimentos vermelhos assados, água, vinagre balsâmico, aroma de trufa, pimentas calabresas, especiarias'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_pt = 'Molho para tacos com Pepper X dos EUA. O Pepper X é reconhecido como a pimenta mais picante do mundo. Este molho leva esse calor extremo aos seus pratos mexicanos favoritos. Nível de calor 15.',
  ingredients_pt = 'Pimentas Pepper X, vinagre, tomates, especiarias'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_pt = 'Mistura de especiarias Pimenta Fumada com Chipotle e Alho. Ingredientes ; Sal, pimenta preta, alho, grãos de pimenta branca, flocos de chipotle, raspa de limão, alecrim, manjericão, ácido cítrico, tomilho, lúcia-lima, pimentas secas. Um ingrediente secreto que eleva qualquer refeição. Fumado com um final cítrico fresco. Adequado para veganos.',
  ingredients_pt = 'Sal, pimenta preta, alho, pimenta branca, chipotle, raspa de limão, alecrim, manjericão, ácido cítrico, tomilho, lúcia-lima, pimentas secas'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
