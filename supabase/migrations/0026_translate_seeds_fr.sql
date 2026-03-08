-- Migration: Translate base seeds (French)

-- Categories
UPDATE public.categories SET name_fr = 'Sauce Piquante Classique', description_fr = 'Sauces au piment de tous les jours pour tous les repas.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_fr = 'Fermenté', description_fr = 'Tang complexe issu d''une fermentation lente.' WHERE slug = 'fermented';
UPDATE public.categories SET name_fr = 'Fumé', description_fr = 'Sauces fumantes aux piments rôtis au feu.' WHERE slug = 'smoky';
UPDATE public.categories SET name_fr = 'Fruitée', description_fr = 'Mélanges vifs et juteux avec des fruits tropicaux.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_fr = 'Défis Chili & Snacks Épicés', description_fr = 'Testez vos limites avec nos snacks les plus piquants.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_fr = 'Extraits de Chili', description_fr = 'Extraits de capsaïcine pure pour une chaleur extrême.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_fr = 'Huile de Chili', description_fr = 'Huiles infusées pour cuisiner ou assaisonner.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_fr = 'Piments Séchés', description_fr = 'Gousses, flocons et poudres pour votre cuisine.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_fr = 'Coffrets Cadeaux', description_fr = 'Le cadeau parfait pour les amateurs de piment.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_fr = 'Miel Piquant', description_fr = 'Miel infusé au piment pour une touche sucrée-salée.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_fr = 'Sels & Assaisonnements', description_fr = 'Relevez vos plats avec nos mélanges d''épices.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_fr = 'Jalapeño', description_fr = 'Chaleur équilibrée du piment vert.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_fr = 'Habanero', description_fr = 'Arôme d''agrumes ardent et chaleur.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_fr = 'Ghost Pepper', description_fr = 'Intensité Naga Jolokia pour les amateurs de sensations fortes.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_fr = 'Carolina Reaper', description_fr = 'Chaleur record mondiale avec des notes fruitées.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_fr = 'Scotch Bonnet', description_fr = 'Piment des Caraïbes au goût fruité et intense.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_fr = 'Trinidad Scorpion', description_fr = 'Une morsure puissante et persistante.' WHERE slug = 'trinidad-scorpion';
