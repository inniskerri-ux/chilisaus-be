-- Migration: Translate products batch 1 (Portuguese)

-- Evil One
UPDATE public.products SET 
  description_pt = 'Evil One Ingredientes ; Pimentos vermelhos, vinagre de sidra, pimenta Scotch Bonnet (15%), cebola, polpa de laranja, polpa e raspa de limão, pimenta Naga Ghost (3%), cenoura, alho, açúcar mascavado, extrato de chili (1%), sel marinho. Repleto de Scotch Bonnets, pimentas Naga Ghost e um toque de capsaicina pura para aquela sensação de ardor super intensa e duradoura, mas sem o sabor amargo que os extratos costumam dar. É um molho super picante e delicioso com notas cítricas. Ideal em esparguete, num hambúrguer, wok, pizza ou misturado com salsa para um dip picante incrível. Nível de calor 10 Adequado para veganos',
  ingredients_pt = 'Pimentos vermelhos, vinagre de sidra, pimenta Scotch Bonnet (15%), cebola, polpa de laranja, polpa e raspa de limão, pimenta Naga Ghost (3%), cenoura, alho, açúcar mascavado, extrato de chili (1%), sel marinho'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_pt = 'Evil Twin (sem adição de açúcar) Ingredientes ; Pimentos verdes, vinagre, pimenta Scotch Bonnet, cebola, maçã, lima, pimenta Naga Ghost, cenoura, especiarias, alho, extrato de chili (1%), sal. Molho super picante com pimentas Scotch Bonnet, Naga Ghost e 1% de extrato de chili. Tem um excelente calor, bonito e fresco graças à adição de lima. Muito bem equilibrado, oferece um calor persistente. Perfeito para esparguete picante, adicionar à maionese ou no wok. Nivel de calor 10 Adequado para veganos',
  ingredients_pt = 'Pimentos verdes, vinagre, pimenta Scotch Bonnet, cebola, maçã, lima, pimenta Naga Ghost, cenoura, especiarias, alho, extrato de chili (1%), sal'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_pt = 'Molho de Pimenta Naga (Nível de calor 10). Um molho potente da Wiltshire Chilli Farm que utiliza a famosa pimenta Naga Ghost para um calor intenso e duradouro que aumenta gradualmente. Para comedores de chili experientes. Adequado para veganos.',
  ingredients_pt = 'Pimentas Naga Ghost, vinagre, sal, especiarias'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_pt = 'Molho de Pimenta das Caraíbas (Nível de calor 9). Uma explosão tropical de calor e sabor. Inspirado nos molhos tradicionais das ilhas, rico em pimentas e aromas ensolarados. Adequado para veganos.',
  ingredients_pt = 'Pimentas das Caraíbas, vinagre, especiarias, sal'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_pt = 'Óleo de Chili com Alho Tempest 150ml Ingredientes ; Óleo de colza prensado a frio, extrato natural de chili, extrato natural de alho. Definitivamente para os amantes de alho. Um óleo sedoso e rico que se tornará viciante rapidamente. Adicione durante a cozedura ou use como toque final em pizza, massa ou wok. Delicioso com frango frito ou misturado com maionese para um dip de aioli picante. Nível de calor 5 Adequado para veganos',
  ingredients_pt = 'Óleo de colza prensado a frio, extrato natural de chili, extrato natural de alho'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_pt = 'Molho de Pimenta e Manga (Nível de calor 7). Um molho deliciosamente frutado onde a doçura das mangas maduras combina perfeitamente com um toque picante de chili. Ideal com frango, saladas ou como molho dip. Adequado para veganos.',
  ingredients_pt = 'Manga, pimentas, vinagre, açúcar, sal'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_pt = 'Molho de Pimenta Doce (Nível de calor 1). O clássico dip suave que todos adoram. Equilíbrio perfeito entre o doce e um toque muito ligeiro de picante. Excelente com crepes chineses ou como molho de mesa versátil. Adequado para veganos.',
  ingredients_pt = 'Pimentas, açúcar, vinagre, alho, sal'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_pt = 'Reaper Habanero (Nível de calor 10). Um molho potente da Wiltshire Chilli Farm que combina o calor extremo da Carolina Reaper com o sabor clássico das Habaneros vermelhas. Simples mas eficaz. Adequado para veganos.',
  ingredients_pt = 'Habanero vermelha, vinagre de sidra, açúcar mascavado, cebola, pimento vermelho, Carolina Reaper, paprica fumada, alho'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_pt = 'Sal de Chili com Alho (Nível de calor 3). Um sal aromático delicioso com um toque ligeiro de picante. Ideal para polvilhar sobre batatas, vegetais ou carnes para uma melhoria imediata do sabor. Adequado para veganos.',
  ingredients_pt = 'Sal marinho, alho, pimentas'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_pt = 'BLACK - Molho de Carolina Reaper e Mirtilo. Ingredientes: Pimentos, cebolas, vinagre de vinho branco, maçãs, mirtilos (10%), pimenta Carolina Reaper (8%), lima, azeite, sal marinho. Uma combinação invulgar mas fantástica onde o mirtilo ácido complementa maravilhosamente o calor extremo da Reaper. Nível de calor 10 Adequado para veganos.',
  ingredients_pt = 'Pimentos, cebolas, vinagre de vinho branco, maçãs, mirtilos (10%), pimenta Carolina Reaper (8%), lima, azeite, sal marinho'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_pt = 'BLUE - Molho de Scotch Bonnet e Especiarias das Caraíbas. Ingredientes: Pimentos, cebolas, vinagre de vinho branco, pimenta Scotch Bonnet (13%), gengibre, alho, lima, azeite, aipo, sal, mistura de especiarias. Sabor autêntico das Caraíbas com o calor característico da Scotch Bonnet. Nível de calor 5 Adequado para veganos.',
  ingredients_pt = 'Pimentos, cebolas, vinagre de vinho branco, pimenta Scotch Bonnet (13%), gengibre, alho, lima, azeite, aipo, sal, mistura de especiarias'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_pt = 'PINK - Molho de Chipotle e Ananás. Ingredientes: Cebolas, pimentos, ananás (17%), vinagre de vinho branco, pimenta Jalapeño vermelha, lima, pimenta Chipotle (1,7%), azeite, sal. Um equilíbrio delicioso entre doce e fumado. Nível de calor 4 Adequado para veganos.',
  ingredients_pt = 'Cebolas, pimentos, ananás (17%), vinagre de vinho branco, pimenta Jalapeño vermelha, lima, pimenta Chipotle (1,7%), azeite, sal'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_pt = 'Bagos de Carolina Reaper Secos (1,8 milhões - 2,2 milhões SHU). A pimenta mais picante do mundo em forma seca. Para os mais ousados que queiram criar os seus próprios molhos ou temperar pratos de forma extrema. Adequado para veganos.',
  ingredients_pt = 'Pimentas Carolina Reaper secas'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_pt = 'Molho "God Slayer" EXTREME (Nível de calor 15). Um dos molhos mais intensos da nossa gama. Apenas para amantes do picante muito experientes. Adequado para veganos.',
  ingredients_pt = 'Carolina Reaper, extratos de chili, vinagre, sal'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_pt = 'ORANGE - Molho de Ghost Pepper e Manga. Ingredientes: Pimentos, cebolas, vinagre de vinho branco, manga (12%), maçãs, pimenta Ghost Pepper Bhut Jolokia (7%), lima, azeite, cominhos, sal marinho. Um molho maravilhosamente equilibrado onde o calor da Ghost Pepper aumenta lentamente. Nível de calor 10 Adequado para veganos.',
  ingredients_pt = 'Pimentos, cebolas, vinagre de vinho branco, manga (12%), maçãs, pimenta Ghost Pepper Bhut Jolokia (7%), lima, azeite, cominhos, sal marinho'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_pt = 'Bagos de Chipotle Fumado Mexicano Secos (2500 - 8000 SHU). Jalapeños secos e fumados. Essencial para um sabor fumado autêntico em guisados e sopas. Adequado para veganos.',
  ingredients_pt = 'Pimentas Jalapeño secas e fumadas (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_pt = 'Tempero de Café e Ghost Pepper. Um rub único que combina o sabor profundo do café com o calor intenso da Ghost Pepper. Perfeito para o churrasco, especialmente com carne de vaca ou porco. Nível de calor 8.',
  ingredients_pt = 'Café, Ghost Pepper, açúcar, sal, especiarias'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_pt = 'Happy Hatter Hot Sauce – ORIGINAL. Como visto no popular programa de culinária "Dagelijkse Kost". Um molho à base de tomate com um toque de doçura de pêssego e pimentas Madame Jeanette para um golpe frutado e picante. Nível de calor 6 Adequado para veganos.',
  ingredients_pt = 'Tomate, pêssego, cebola vermelha, pimentas (Madame Jeanette, Birds eye), alho, maçã, vinagre, açúcar de cana, lima, sal, aipo, ervas'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_pt = 'Trinidad Scorpion - Como visto em "HOT ONES" (Nível de calor 10). Ingredientes: Vinagre de sidra, açúcar, pimenta Trinidad Scorpion, pimentos vermelhos, sal. Com uma dentada feroz, este molho super picante é uma verdadeira experiência. Doce no início, com um calor que aumenta para um ardor duradouro. Nível de calor 10 Adequado para veganos.',
  ingredients_pt = 'Vinagre de sidra, açúcar, pimenta Trinidad Scorpion, pimentos vermelhos, sal'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_pt = 'Molho "Regret" SUPER EXTREME (Nível de calor 20). O nome diz tudo... Com um nível de calor de 20, este é um dos molhos mais fortes que alguma vez tivemos. Apenas para autênticos "chiliheads" sem medo. Use por sua conta e risco!',
  ingredients_pt = 'Pimentas extremamente fortes (Carolina Reaper), extrato de chili, vinagre, sal'
WHERE slug = 'regret-extreme-hot-sauce';
