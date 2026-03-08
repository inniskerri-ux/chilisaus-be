-- Migration: Translate base seeds (Portuguese)

-- Categories
UPDATE public.categories SET name_pt = 'Molho Picante Clássico', description_pt = 'Molhos de pimenta para o dia a dia em qualquer refeição.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_pt = 'Fermentado', description_pt = 'Sabor complexo proveniente de uma fermentação lenta.' WHERE slug = 'fermented';
UPDATE public.categories SET name_pt = 'Fumado', description_pt = 'Molhos fumegantes com pimentas assadas no fogo.' WHERE slug = 'smoky';
UPDATE public.categories SET name_pt = 'Frutado', description_pt = 'Misturas vibrantes e sumarentas com frutas tropicais.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_pt = 'Desafios de Chili e Snacks Picantes', description_pt = 'Teste os seus limites com os nossos snacks mais picantes.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_pt = 'Extratos de Chili', description_pt = 'Extratos puros de capsaicina para um calor extremo.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_pt = 'Óleo de Chili', description_pt = 'Óleos infusionados para cozinhar ou temperar.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_pt = 'Pimentas Secas', description_pt = 'Bagos, flocos e pós para a sua cozinha.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_pt = 'Caixas de Presente', description_pt = 'O presente perfeito para os amantes do picante.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_pt = 'Mel Picante', description_pt = 'Mel com infusão de pimenta para um toque doce-picante.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_pt = 'Sais e Temperos', description_pt = 'Eleve os seus pratos com as nossas misturas de especiarias.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_pt = 'Jalapeño', description_pt = 'Picante equilibrado da pimenta verde.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_pt = 'Habanero', description_pt = 'Aroma cítrico ardente e calor.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_pt = 'Ghost Pepper', description_pt = 'Intensidade Naga Jolokia para quem procura emoções fortes.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_pt = 'Carolina Reaper', description_pt = 'Calor recorde mundial com notas frutadas.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_pt = 'Scotch Bonnet', description_pt = 'Pimenta das Caraíbas com sabor frutado e intenso.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_pt = 'Trinidad Scorpion', description_pt = 'Uma dentada potente e persistente.' WHERE slug = 'trinidad-scorpion';
