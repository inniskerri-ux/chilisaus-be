-- Migration 0012: fix miscategorized products and set missing heat levels

-- Dave's Insanity Sauces: set heat level 10 + Very Hot category
UPDATE public.products
SET heat_level = 10,
    category_id = (SELECT id FROM public.categories WHERE slug = 'very-hot' LIMIT 1)
WHERE slug IN ('daves-insanity-sauce-carolina-reaper-hot-as-hell-148ml', 'daves-insanity-sauce-the-original-148ml-hot-as-hell');

-- High River Pepper X Taco Sauce: it's a hot sauce (Level 15), not a challenge
UPDATE public.products
SET category_id = (SELECT id FROM public.categories WHERE slug = 'superhot' LIMIT 1)
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Salt products: move from Seasonings & Rubs to Hot Salt
UPDATE public.products
SET category_id = (SELECT id FROM public.categories WHERE slug = 'hot-salt' LIMIT 1)
WHERE slug IN (
  'burning-angel-tears-of-a-vampire-hot-salt-heat-level-4-90g',
  'garlic-chilli-salt',
  'naga-chili-salt-heat-level-9-65g'
);

-- Chili Chocolate: move from Medium Chili Sauce to Chili Chocolate
UPDATE public.products
SET category_id = (SELECT id FROM public.categories WHERE slug = 'chili-chocolate' LIMIT 1)
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Spicy snacks/candy: move from Chili Challenges to Spicy Chips, Nuts & Candy
UPDATE public.products
SET category_id = (SELECT id FROM public.categories WHERE slug = 'spicy-chips-nuts-candy' LIMIT 1)
WHERE slug IN (
  'jelly-beans-spicy-fruit-flavours-60g',
  'satans-spawn-gummy-bears-125g',
  'spicy-caramel-popcorn-medium-heat-120g'
);

-- Carolina Reaper Essentials Kit: it's a bundle, move to Gift Boxes & Sets
UPDATE public.products
SET category_id = (SELECT id FROM public.categories WHERE slug = 'gift-boxes-sets' LIMIT 1)
WHERE slug = 'the-ultimate-reaper-pack';
