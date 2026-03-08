-- Migration: Translate base seeds (Spanish)

-- Categories
UPDATE public.categories SET name_es = 'Salsa Picante Clásica', description_es = 'Salsas de chile de uso diario para cualquier comida.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_es = 'Fermentada', description_es = 'Sabor complejo de fermentación lenta.' WHERE slug = 'fermented';
UPDATE public.categories SET name_es = 'Ahumada', description_es = 'Salsas humeantes con chiles asados al fuego.' WHERE slug = 'smoky';
UPDATE public.categories SET name_es = 'Frutal', description_es = 'Mezclas brillantes y jugosas con frutas tropicales.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_es = 'Retos de Chile y Snacks Picantes', description_es = 'Pon a prueba tus límites con nuestros snacks más picantes.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_es = 'Extractos de Chile', description_es = 'Extractos puros de capsaicina para un calor extremo.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_es = 'Aceite de Chile', description_es = 'Aceites infusionados para cocinar o condimentar.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_es = 'Chiles Secos', description_es = 'Vainas, copos y polvos para tu cocina.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_es = 'Cajas de Regalo', description_es = 'El regalo perfecto para los amantes del picante.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_es = 'Miel Picante', description_es = 'Miel infusionada con chile para un toque dulce y picante.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_es = 'Sales y Sazonadores', description_es = 'Eleva tus platos con nuestras mezclas de especias.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_es = 'Jalapeño', description_es = 'Picante equilibrado del chile verde.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_es = 'Habanero', description_es = 'Aroma cítrico ardiente y picante.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_es = 'Ghost Pepper', description_es = 'Intensidad Naga Jolokia para buscadores de emociones.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_es = 'Carolina Reaper', description_es = 'Picante récord mundial con notas frutales.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_es = 'Scotch Bonnet', description_es = 'Chile caribeño con sabor frutal e intenso.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_es = 'Trinidad Scorpion', description_es = 'Una mordida potente y duradera.' WHERE slug = 'trinidad-scorpion';
