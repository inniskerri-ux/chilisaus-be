-- Migration: Translate products batch 2 (Portuguese)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_pt = 'Happy Hatter Hot Sauce – SMOKED. Ingredientes ; Frutos do bosque, vinho do Porto tinto, vinagre de vinho tinto, dâmaras, mel de flores, pimentas Ghost, cebola vermelha, chalotas, alho, pó de chipotle, paprica fumada, azeite, sal. Um molho rico e fumado, doce e delicioso. Repleto de pimentas Ghost, chipotle mexicano fumado e frutos do bosque sumarentos. Decadente, encorpado e sedoso com um grande final picante duradouro. Perfeito com veado, bife, porco desfiado ou um hambúrguer. Nível de calor 7 Não adequado para veganos (contém mel)',
  ingredients_pt = 'Frutos do bosque, vinho do Porto tinto, vinagre de vinho tinto, dâmaras, mel de flores, pimentas Ghost, cebola vermelha, chalotas, alho, pó de chipotle, paprica fumada, azeite, sal'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_pt = 'Carolina Reaper em Pó 10g. 1,8 milhões – 2,2 milhões SHU. O pó de chili mais picante do mundo. Use com extrema cautela. Perfeito para adicionar calor instantâneo a qualquer prato. Adequado para veganos.',
  ingredients_pt = 'Pimentas Carolina Reaper'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_pt = 'Flocos de pimenta Habanero 100.000 – 350.000 SHU. O equilíbrio perfeito entre calor e sabor. Conhecidos pelo seu aroma frutado, estes flocos dão um toque picante delicioso às suas refeições. Pimentas habanero vermelhas frescas cultivadas no México, secas no forno e trituradas. Adequado para veganos.',
  ingredients_pt = 'Pimentas Habanero secas'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_pt = 'Bagos de Habanero Mexicano Secos (100.000 - 350.000 SHU). O clássico picante frutado do México. Ideal para molhos, marinadas e guisados. Adequado para veganos.',
  ingredients_pt = 'Pimentas Habanero secas'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_pt = 'Bagos de Pimenta Naga / Ghost Pepper Secos 855.000 – 1 milhão SHU. A 3ª pimenta mais picante do mundo. Saco de 12 pimentas Ghost secas. Sabor fumado e quase doce ao início, o calor surge após 30 segundos. Use-as secas, trituradas ou reidratadas em água quente. Adequado para veganos.',
  ingredients_pt = 'Pimentas Ghost Pepper (Bhut Jolokia) secas'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_pt = 'Flocos de Chipotle Fumado Mexicano - 20g (2500 - 8000 SHU). Deliciosos flocos de Jalapeño fumado. Essencial na cozinha mexicana para aquele sabor a churrasco profundo e autêntico. Adequado para veganos.',
  ingredients_pt = 'Pimentas Jalapeño secas e fumadas (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_pt = 'Habanero em Pó 100.000 – 350.000 SHU. Produzido a partir de bagos de Habanero secos e finamente moídos. Ideal para pratos mexicanos ou churrasco. Misture com maionese ou iogurte para um dip picante. Adequado para veganos.',
  ingredients_pt = 'Pimenta habanero em pó'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_pt = 'Sambal 33% Carolina Reaper Puro. Ingredientes ; Cebolas 40%, Carolina Reaper 33%, açúcar refinado 8%, óleo de girassol 7,5%, molho de soja doce 7,5%, vinagre branco 0,5%, sal, especiarias. Produzido pelo famoso Devon Chilli Man do Reino Unido. Primeiro um sabor doce delicioso graças às cebolas caramelizadas, depois uma montanha-russa de calor das Carolina Reapers frescas. Nível de calor 12 Adequado para veganos',
  ingredients_pt = 'Cebolas 40%, Carolina Reaper 33%, açúcar refinado 8%, óleo de girassol 7,5%, molho de soja doce 7,5%, vinagre branco 0,5%, sal, especiarias'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_pt = 'Garlic Italian (sem adição de açúcar) Perfeito para esparguete. Ingredientes ; Óleo de colza, água, vinagre de vinho branco, azeite, chili vermelho, chili Naga (3%), puré de alho, sal, especiarias, ervas. O nosso primeiríssimo molho próprio! Ingredientes de alta qualidade, azeite sedoso, pimentas Naga Ghost frescas, MUITO alho e ervas italianas. Simples e delicioso. Nível de calor 8 Adequado para veganos',
  ingredients_pt = 'Óleo de colza, água, vinagre de vinho branco, azeite, chili vermelho, chili Naga (3%), puré de alho, sal, especiarias, ervas'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_pt = 'Flocos de Carolina Reaper 1,8 milhões – 2,2 milhões SHU. A pimenta mais picante do mundo, seca e triturada em belos flocos de fogo (sementes incluídas). Uma pitada é suficiente para dar aquele toque Reaper a sopas, caris ou massa. Use com precaução. Adequado para veganos.',
  ingredients_pt = 'Flocos de pimenta Carolina Reaper'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_pt = 'Happy Hatter Hot Sauce – BOMBAY. Ingredientes ; Manga, ananás, pimenta habanero amarela, cebola, vinagre de vinho branco, açúcar de cana, bananas, alho, sumo de lima, azeite, mistura de especiarias (contém aipo), sal. Um molho fresco e frutado com curcuma e especiarias asiáticas. Perfeitamente equilibrado com um bom calor da Habanero amarela. Ideal para wok ou pratos de arroz. Nível de calor 8 Adequado para veganos',
  ingredients_pt = 'Manga, ananás, pimenta habanero amarela, cebola, vinagre de vinho branco, açúcar de cana, bananas, alho, sumo de lima, azeite, mistura de especiarias (contém aipo), sal'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_pt = 'Naga / Ghost em Pó 855.000 - 1 milhão SHU. Direto de Nagaland, Índia. Sabor fumado e quase doce ao início, mas o calor intenso surpreende após 30-40 segundos. Use com cuidado. Adequado para veganos.',
  ingredients_pt = 'Pimenta Ghost Pepper em pó'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_pt = 'Flocos de pimenta Naga / Ghost 855.000 - 1 milhão SHU. Direto de Nagaland, estes flocos são uma excelente alternativa às pimentas frescas para dar um calor extremo aos seus pratos. Adequado para veganos.',
  ingredients_pt = 'Flocos de pimenta Ghost Pepper'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_pt = 'Família Happy Hatter – 3 Molhos – Apresentados numa caixa de presente artesanal. Contém ORIGINAL (Picante 6), SMOKED (Picante 7) e BOMBAY (Picante 7). 100% qualidade do produtor belga Wim Daans.',
  details_pt = 'Contém 3 garrafas de 100ml: Original, Smoked e Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_pt = 'O kit essencial Carolina Reaper: Bagos, Pó, Sambal e Molho. Tudo o que precisa para experimentar a pimenta mais picante do mundo em 4 formas diferentes. Máximo picante garantido! Adequado para veganos.',
  details_pt = 'Inclui: 1x Molho, 1x Sambal, 1x Pó, 1x Bagos secos.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_pt = '"Limon-hello" Utiliza apenas os melhores limões "Sfusato" da costa amalfitana em Itália. Ingredientes ; Pimentas Madame Jeanette, limões Sfusato, cenoura, cebola, pimento amarelo, alho, gengibre, vinagre de sidra, curcuma, sal. Um molho fresco e vibrante, rico em vitamina C. Fantástico com peixe, tacos ou num cocktail. Sem glúten, sem adição de açúcar. Nível de calor 8 Adequado para veganos',
  ingredients_pt = 'Pimentas Madame Jeanette, limões Sfusato, cenoura, cebola, pimento amarelo, alho, gengibre, vinagre de sidra, curcuma, sal'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_pt = 'The Ripper (sem adição de açúcar). Ingredientes: Pimenta Scotch Bonnet, pimento vermelho, pimenta Carolina Reaper, vinagre de sidra, sal, chili em pó, extrato de chili. Uma combinação perigosamente deliciosa de Scotch Bonnet frutado e o Carolina Reaper mais picante do mundo. Ardor máximo! Nível de calor 12 Adequado para veganos',
  ingredients_pt = 'Pimenta Scotch Bonnet, pimento vermelho, pimenta Carolina Reaper, vinagre de sidra, sal, chili em pó, extrato de chili'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_pt = 'A coleção completa Crazy Bastard - 7 molhos numa caixa de presente. Feitos à mão em Berlim com pimentas assadas no forno e ingredientes naturais frescos. Sem açúcares refinados ou extratos. Contém todas as variantes, de Jalapeño a Carolina Reaper.',
  details_pt = 'Contiene 7 garrafas de 100ml: Verde, Rosa, Azul, Amarela, Laranja, Vermelha e Preta.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_pt = 'Crazy Bastard Hot Box - Os 3 molhos mais picantes da coleção: Laranja (Ghost Pepper e Manga), Vermelho (Trinidad Scorpion e Clementina) e Preto (Carolina Reaper e Mirtilo). Para os verdadeiros amantes de emoções fortes. Adequado para veganos.',
  details_pt = 'Contém 3 garrafas de 100ml: Ghost Pepper, Trinidad Scorpion e Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_pt = 'RED - Molho de Trinidad Scorpion e Clementina. Ingredientes: Pimentos, maçã, cebola, vinagre de vinho branco, clementinas (10%), pimenta Trinidad Scorpion (6%), alho, lima, azeite, sal marinho. O segundo molho mais picante da coleção. Ideal com peixe grelhado ou gambas. Nível de calor 10 Adequado para veganos',
  ingredients_pt = 'Pimentos, maçã, cebola, vinagre de vinho branco, clementinas (10%), pimenta Trinidad Scorpion (6%), alho, lima, azeite, sal marinho'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
