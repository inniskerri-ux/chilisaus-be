-- Migration: Translate products batch 1 (Spanish)

-- Evil One
UPDATE public.products SET 
  description_es = 'Evil One Ingredientes ; Pimientos rojos, vinagre de sidra, chile Scotch Bonnet (15%), cebolla, pulpa de naranja, pulpa y ralladura de limón, pimiento Naga Ghost (3%), zanahoria, ajo, azúcar morena, extracto de chile (1%), sal marina. Cargado con Scotch Bonnets, pimientos Naga Ghost y un toque de capsaicina pura para esa sensación de ardor súper intensa y duradera, pero sin el sabor amargo que suelen dar los extractos. Es una salsa súper picante y deliciosa con toques cítricos. Ideal en espaguetis, en una hamburguesa, wok, pizza o mezclada con salsa para un dip picante increíble. Nivel de picante 10 Apta para veganos',
  ingredients_es = 'Pimientos rojos, vinagre de sidra, chile Scotch Bonnet (15%), cebolla, pulpa de naranja, pulpa y ralladura de limón, pimiento Naga Ghost (3%), zanahoria, ajo, azúcar morena, extracto de chile (1%), sal marina'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_es = 'Evil Twin (sin azúcar añadida) Ingredientes ; Pimientos verdes, vinagre, chile Scotch Bonnet, cebolla, manzana, lima, pimiento Naga Ghost, zanahoria, especias, ajo, extracto de chile (1%), sal. Salsa súper picante con chiles Scotch Bonnet, pimientos Naga Ghost y 1% de extracto de chile. Tiene un gran picante, hermoso y fresco gracias a la adición de lima. Muy bien equilibrada, ofrece un calor persistente. Perfecta para espaguetis picantes, añadir a mayonesa o en el wok. Nivel de picante 10 Apta para veganos',
  ingredients_es = 'Pimientos verdes, vinagre, chile Scotch Bonnet, cebolla, manzana, lima, pimiento Naga Ghost, zanahoria, especias, ajo, extracto de chile (1%), sal'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_es = 'Salsa de Chile Naga (Nivel de picante 10). Una salsa potente de Wiltshire Chilli Farm que utiliza el famoso pimiento Naga Ghost para un calor intenso y duradero que aumenta gradualmente. Para comedores de chile experimentados. Apta para veganos.',
  ingredients_es = 'Pimientos Naga Ghost, vinagre, sal, especias'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_es = 'Salsa de Chile del Caribe (Nivel de picante 9). Una explosión tropical de calor y sabor. Inspirada en las salsas tradicionales de las islas, rica en pimientos y aromas soleados. Apta para veganos.',
  ingredients_es = 'Chiles caribeños, vinagre, especias, sal'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_es = 'Aceite de Chile con Ajo Tempest 150ml Ingredientes ; Aceite de colza prensado en frío, extracto natural de chile, extracto natural de ajo. Definitivamente para los amantes del ajo. Un aceite sedoso y rico que se volverá adictivo rápidamente. Añádelo mientras cocinas o úsalo como toque final en pizza, pasta o wok. Delicioso con pollo frito o mezclado con mayonesa para un dip de alioli picante. Nivel de picante 5 Apta para veganos',
  ingredients_es = 'Aceite de colza prensado en frío, extracto natural de chile, extracto natural de ajo'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_es = 'Salsa de Chile y Mango (Nivel de picante 7). Una salsa deliciosamente frutal donde la dulzura de los mangos maduros combina perfectamente con un toque picante de chile. Ideal con pollo, ensaladas o como salsa dip. Apta para veganos.',
  ingredients_es = 'Mango, chiles, vinagre, azúcar, sal'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_es = 'Salsa de Chile Dulce (Nivel de picante 1). El clásico dip suave que a todos les encanta. Equilibrio perfecto entre dulce y un toque muy ligero de picante. Excelente con rollitos de primavera o como salsa de mesa para todo uso. Apta para veganos.',
  ingredients_es = 'Chiles, azúcar, vinagre, ajo, sal'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_es = 'Reaper Habanero (Nivel de picante 10). Una salsa potente de Wiltshire Chilli Farm que combina el calor extremo del Carolina Reaper con el sabor clásico de los Habaneros rojos. Simple pero efectiva. Apta para veganos.',
  ingredients_es = 'Habanero rojo, vinagre de sidra, azúcar morena, cebolla, pimiento rojo, Carolina Reaper, pimentón ahumado, ajo'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_es = 'Sal de Chile con Ajo (Nivel de picante 3). Una sal aromática deliciosa con un toque ligero de picante. Ideal para espolvorear sobre patatas, verduras o carnes para una mejora inmediata del sabor. Apta para veganos.',
  ingredients_es = 'Sal marina, ajo, chiles'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_es = 'BLACK - Salsa de Carolina Reaper y Arándanos. Ingredientes: Pimientos, cebollas, vinagre de vino blanco, manzanas, arándanos (10%), chile Carolina Reaper (8%), lima, aceite de oliva, sal marina. Una combinación inusual pero fantástica donde el arándano ácido complementa maravillosamente el calor extremo del Reaper. Nivel de picante 10 Apta para veganos.',
  ingredients_es = 'Pimientos, cebollas, vinagre de vino blanco, manzanas, arándanos (10%), chile Carolina Reaper (8%), lima, aceite de oliva, sal marina'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_es = 'BLUE - Salsa de Scotch Bonnet y Especias del Caribe. Ingredientes: Pimientos, cebollas, vinagre de vino blanco, chile Scotch Bonnet (13%), jengibre, ajo, lima, aceite de oliva, apio, sal, mezcla de especias. Sabor auténtico del Caribe con el calor característico del Scotch Bonnet. Nivel de picante 5 Apta para veganos.',
  ingredients_es = 'Pimientos, cebollas, vinagre de vino blanco, chile Scotch Bonnet (13%), jengibre, ajo, lima, aceite de oliva, apio, sal, mezcla de especias'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_es = 'PINK - Salsa de Chipotle y Piña. Ingredientes: Cebollas, pimientos, piña (17%), vinagre de vino blanco, chile Jalapeño rojo, lima, chile Chipotle (1,7%), aceite de oliva, sal. Un equilibrio delicioso entre dulce y ahumado. Nivel de picante 4 Apta para veganos.',
  ingredients_es = 'Cebollas, pimientos, piña (17%), vinagre de vino blanco, chile Jalapeño rojo, lima, chile Chipotle (1,7%), aceite de oliva, sal'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_es = 'Vainas de Carolina Reaper Secas (1,8 millones - 2,2 millones SHU). El chile más picante del mundo en forma seca. Para los más atrevidos que quieran crear sus propias salsas o platos extremadamente picantes. Apta para veganos.',
  ingredients_es = 'Chiles Carolina Reaper secos'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_es = 'Salsa "God Slayer" EXTREME (Nivel de picante 15). Una de las salsas más intensas de nuestra gama. Solo para amantes del picante muy experimentados. Apta para veganos.',
  ingredients_es = 'Carolina Reaper, extractos de chile, vinagre, sal'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_es = 'ORANGE - Salsa de Ghost Pepper y Mango. Ingredientes: Pimientos, cebollas, vinagre de vino blanco, mango (12%), manzanas, chile Bhut Jolokia "Ghost" (7%), lima, aceite de oliva, comino, sal marina. Una salsa maravillosamente equilibrada donde el calor del Ghost Pepper aumenta lentamente. Nivel de picante 10 Apta para veganos.',
  ingredients_es = 'Pimientos, cebollas, vinagre de vino blanco, mango (12%), manzanas, chile Bhut Jolokia "Ghost" (7%), lima, aceite de oliva, comino, sal marina'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_es = 'Vainas de Chipotle Ahumado Mexicano Secas (2500 - 8000 SHU). Jalapeños secos y ahumados. Esencial para un sabor ahumado auténtico en guisos y sopas. Apta para veganos.',
  ingredients_es = 'Chiles Jalapeño secos y ahumados (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_es = 'Sazonador de Café y Ghost Pepper. Un rub único que combina el sabor profundo del café con el calor intenso del Ghost Pepper. Perfecto para la barbacoa, especialmente con carne de res o cerdo. Nivel de picante 8.',
  ingredients_es = 'Café, Ghost Pepper, azúcar, sal, especias'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_es = 'Happy Hatter Hot Sauce – ORIGINAL. Como se ve en el popular programa de cocina "Dagelijkse Kost". Una salsa a base de tomate con un toque de dulzura de melocotón y chiles Madame Jeanette para un golpe frutal y picante. Nivel de picante 6 Apta para veganos.',
  ingredients_es = 'Tomate, melocotón, cebolla roja, chiles (Madame Jeanette, Birds eye), ajo, manzana, vinagre, azúcar de caña, lima, sal, apio, hierbas'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_es = 'Trinidad Scorpion - Como se ve en "HOT ONES" (Nivel de picante 10). Ingredientes: Vinagre de sidra, azúcar, chile Trinidad Scorpion, pimientos rojos, sal. Con una mordida feroz, esta salsa súper fuerte es una verdadera experiencia. Dulce al principio, con un calor que aumenta para un ardor duradero. Nivel de picante 10 Apta para veganos.',
  ingredients_es = 'Vinagre de sidra, azúcar, chile Trinidad Scorpion, pimientos rojos, sal'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_es = 'Salsa "Regret" SUPER EXTREME (Nivel de picante 20). El nombre lo dice todo... Con un nivel de picante de 20, esta es una de las salsas más fuertes que hemos tenido. Solo para auténticos "chiliheads" sin miedo. ¡Úsela bajo su propio riesgo!',
  ingredients_es = 'Chiles extremadamente fuertes (Carolina Reaper), extracto de chile, vinagre, sal'
WHERE slug = 'regret-extreme-hot-sauce';
