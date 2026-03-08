-- Migration: Translate products batch 4 (Portuguese)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_pt = 'O novo Death Nut Challenge - Versão 3.0. Ingredientes ; Amendoins Jumbo XL Virginia, puro açúcar de cana, pimentas Carolina Reaper, 7-Pot Primo, pimentas (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), cristais de capsaicina pura 16M SHU, sal marinho, especiarias. Cinco níveis de amendoins progressivamente mais picantes. Atreve-se a chegar ao nível 5? Nível de calor: FORA DA ESCALA.',
  ingredients_pt = 'Amendoins Jumbo XL, açúcar, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, cristais de capsaicina pura 16M SHU, sal marinho, especiarias'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_pt = 'Gama Edição Limitada Chilisaus.be. Uma deliciosa combinação de pimentas 7Pot, Habanero e ananás. Em colaboração com Uncle Paul. Nível de calor 6.',
  ingredients_pt = 'Pimentas 7Pot, Habanero, Ananás, vinagre, sal'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_pt = 'Gama Edição Limitada Chilisaus.be. Uma Sriracha intensa de Ghost Pepper em colaboração com Uncle Paul. Para quem procura um golpe forte. Nível de calor 10.',
  ingredients_pt = 'Pimentas Ghost, alho, vinagre, açúcar, sal'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_pt = 'Flocos de Scotch Bonnet (100.000 – 350.000 SHU). A pimenta Scotch Bonnet é da família das Habanero, muito utilizada na cozinha caribenha. Sabor frutado e vibrante com um toque de doçura. Ideal para Jerk Chicken. Adequado para veganos.',
  ingredients_pt = 'Flocos de pimenta Scotch Bonnet secos'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_pt = 'Bagos de Scotch Bonnet (100.000 – 350.000 SHU). Pimentas Scotch Bonnet inteiras secas. Use inteiras, moídas em pó ou reidratadas em água quente. Confere um sabor autêntico das Caraíbas e da África Ocidental aos seus pratos. Adequado para veganos.',
  ingredients_pt = 'Pimentas Scotch Bonnet secas'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_pt = 'Chilisaus.be – Edição 2024 – Pasta de caril de coco com um toque especial. Ingredientes ; Pimentas (Birds Eye, Madame Jeanette, Lombok), tomate, leite de coco, cebola, vinagre de coco, água, amendoim, alho, coentros, açúcar de coco, gengibre, ervas e especiarias (mostarda), sal. Uma colaboração com White Whale Sauces. Nível de calor 8.',
  ingredients_pt = 'Pimentas (Birds Eye, Madame Jeanette, Lombok), tomate, leite de coco, cebola, vinagre de coco, água, amendoim, alho, coentros, açúcar de coco, gengibre, ervas (mostarda), sal'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_pt = 'As massas Ramen mais picantes do mundo. Ingredientes ; Massa (farinha de trigo, água, ovo), Ramen (pimenta Naga Jolokia, Carolina Reaper, pasta de miso, molho de soja, óleo de sésamo, ervas, especiarias). Estimado em mais de 1 milhão de unidades Scoville. Boa sorte!',
  ingredients_pt = 'Massa (Trigo, Ovo), Naga Jolokia, Carolina Reaper, Pasta de miso, Óleo de sésamo, Especiarias'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_pt = 'Azeite com alho crocante e chili crunch. Ingredientes ; Pimentas, alho, azeite, tempero, açúcar, sal iodado. Fabricado nas Filipinas, este óleo é uma verdadeira adição. Alho crocante, grande picante e sabores torrados profundos. Vencedor da medalha de ouro no Clifton National Chilli Awards 2023. Nível de calor 7 Adequado para veganos.',
  ingredients_pt = 'Pimentas, alho, azeite, tempero, açúcar, sal iodado'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_pt = 'A nova pimenta mais picante do mundo: PEPPER X (2,693 milhões SHU). SIZZLING STEAK Ingredientes: Sal marinho, especiarias (incluindo pimenta preta e pimenta vermelha), alho, cebola, óleo de girassol, Pepper X. Dê aos seus bifes, tofu ou vegetais um calor extremo. Inventado por Ed Currie. Adequado para veganos.',
  ingredients_pt = 'Sal marinho, pimenta preta, pimenta vermelha, alho, cebola, óleo de girassol, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_pt = 'Tempero Italiano Picante com Pepper X. Eleve as suas pizzas, massas ou marinadas com esta mistura contendo a famosa Pepper X. Criado por Ed Currie, o criador da Carolina Reaper. Adequado para veganos.',
  ingredients_pt = 'Ervas italianas, pó de Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_pt = 'Tempero de Alho Picante com Pepper X. Uma mistura de especiarias rica em alho com o calor massivo da Pepper X. Perfeito para transformar qualquer refeição num desafio picante. Adequado para veganos.',
  ingredients_pt = 'Sal, alho, chili em pó, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_pt = 'Mistura de especiarias Cajun (Picante 4). Um clássico estilo Louisiana, perfeito para peixe, frango ou vegetais. Confere um picante suave e um sabor profundo. Adequado para veganos.',
  ingredients_pt = 'Paprica, alho, cebola, pimenta preta, caiena, orégãos, tomilho'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_pt = 'Tempero Blazin'' Inferno de Ghost Pepper (Nível de calor 10). Uma mistura potente para quem procura um calor intenso e instantâneo. Ideal para grelhados e marinadas. Adequado para veganos.',
  ingredients_pt = 'Ghost Pepper, sal marinho, alho, especiarias'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_pt = '"FOGO" com Carolina Reaper e Trinidad Moruga Scorpion. Ingredientes: Carolina Reaper, ananás, água, vinagre de cidra, Licor Brutal, manga verde, pimentas Moruga, açúcar mascavado, sal, hortelã, goma xantana. Fresco, vibrante e frutado com um toque de hortelã surpreendente antes de o calor extremo chegar. Nível de calor 12.',
  ingredients_pt = 'Carolina Reaper, ananás, água, vinagre de cidra, Licor Brutal, manga verde, pimentas Moruga, açúcar mascavado, sal, hortelã, goma xantana'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_pt = 'Molho verde fresco de estilo mexicano. Ingredientes ; Tomatillos, jalapeños, alho, sumo de limão, óleo de girassol, cebola em pó, sal marinho. O nosso "molho de pequeno-almoço" - leve, fresco e ligeiramente ácido pelo tomatillo. Uma Salsa Verde clássica, aperfeiçoada por El Jefe. Nível de calor 4. Adequado para veganos.',
  ingredients_pt = 'Tomatillos, jalapeños, alho, sumo de limão, óleo de girassol, cebola em pó, sal marinho'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_pt = 'Chocolate preto belga a 70% com pimenta Ghost, hortelã e açúcar explosivo. Ingredientes ; Chocolate preto (massa de cacau 70%, açúcar, manteiga de cacau, emulsionante - lecitina de SOJA, baunilha natural), açúcar explosivo (2%), pó de pimenta Naga (0,1%), óleo essencial de hortelã. Uma experiência única. Calor leve a médio. Adequado para vegetarianos.',
  ingredients_pt = 'Chocolate preto (70% cacau), açúcar explosivo, pó de pimenta Naga, óleo de hortelã'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_pt = 'Ingredientes ; Pasta de tomate, água, vinagre de cidra, cebolas, açúcar, sementes de sésamo, especiarias, chipotle, habanero, pimenta guajillo, alho fumado, sal. Um produto fantástico para os amantes de sabores fumados e de alho potentes! Espesso e saboroso. Nível de calor 5. Adequado para veganos.',
  ingredients_pt = 'Pasta de tomate, água, vinagre de cidra, cebolas, açúcar, sementes de sésamo, especiarias, chipotle, habanero, pimenta guajillo, alho fumado, sal'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_pt = 'Molho Buffalo Singularity. Ingredientes ; Vinagre de Kombucha, puré de Caiena (pimenta caiena, sal, ácido acético), manteiga vegetal, açúcar mascavado, alho em pó, sal, paprica fumada, goma xantana. A versão escocesa do clássico molho Buffalo. Ideal para asas de frango. Nível de calor 4. Adequado para veganos.',
  ingredients_pt = 'Vinagre de Kombucha, pimenta Caiena, manteiga vegetal, açúcar mascavado, alho em pó, sal, paprica fumada, goma xantana'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_pt = 'O molho "insanity" original de Dave - Como visto em Hot Ones Temporada 1. Ingredientes ; Pimentas picantes, água, pasta de tomate, extrato de pimenta, vinagre de cana, sal, cebolas, alho, especiarias. Basta uma gota! O molho que deu início ao mercado de molhos super picantes. Nível de calor: MUITO ALTO. Adequado para veganos.',
  ingredients_pt = 'Pimentas, água, pasta de tomate, extrato de pimenta, vinagre de cana, sal, cebolas, alho, especiarias'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_pt = 'Dirty Dick''s Caribbean Dreams - Ingredientes ; Pimentas Habanero, peras, pêssegos, sumo de ananás, vinagre de cidra, mostarda, sumo de maçã, açúcar mascavado, mel e especiarias frescas. Um molho à base de mostarda de estilo caribenho. Sabores audazes, perfeitamente equilibrados. Nível de calor 6 Não adequado para veganos (contém mel).',
  ingredients_pt = 'Pimentas Habanero, peras, pêssegos, sumo de ananás, vinagre de cidra, mostarda, sumo de maçã, açúcar mascavado, mel, especiarias'
WHERE slug = 'dirty-dicks-caribbean-dreams';
