-- Migration: Translate base seeds (Polish)

-- Categories
UPDATE public.categories SET name_pl = 'Klasyczny Ostry Sos', description_pl = 'Codzienne sosy paprykowe do każdego posiłku.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_pl = 'Fermentowany', description_pl = 'Złożony smak dzięki powolnej fermentacji.' WHERE slug = 'fermented';
UPDATE public.categories SET name_pl = 'Wędzony', description_pl = 'Dymne sosy z papryczkami pieczonymi na ogniu.' WHERE slug = 'smoky';
UPDATE public.categories SET name_pl = 'Owocowy', description_pl = 'Jasne, soczyste mieszanki z owocami tropikalnymi.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_pl = 'Wyzwania Chili i Ostre Przekąski', description_pl = 'Sprawdź swoje granice z naszymi najostrzejszymi przekąskami.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_pl = 'Ekstrakty Chili', description_pl = 'Czyste ekstrakty kapsaicyny dla ekstremalnej ostrości.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_pl = 'Oliwa Chili', description_pl = 'Oliwy infuzowane do gotowania lub przyprawiania.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_pl = 'Suszone Chili', description_pl = 'Strąki, płatki i proszki do Twojej kuchni.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_pl = 'Zestawy Prezentowe', description_pl = 'Idealny prezent dla miłośników ostrości.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_pl = 'Ostry Miód', description_pl = 'Miód z dodatkiem chili dla słodko-ostrego akcentu.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_pl = 'Sole i Przyprawy', description_pl = 'Podkręć swoje dania naszymi mieszankami przypraw.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_pl = 'Jalapeño', description_pl = 'Zrównoważona ostrość zielonej papryczki.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_pl = 'Habanero', description_pl = 'Ognisty cytrusowy aromat i ostrość.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_pl = 'Ghost Pepper', description_pl = 'Intensywność Naga Jolokia dla poszukiwaczy wrażeń.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_pl = 'Carolina Reaper', description_pl = 'Rekordowa światowa ostrość z nutami owocowymi.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_pl = 'Scotch Bonnet', description_pl = 'Karaibska papryczka o owocowym i intensywnym smaku.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_pl = 'Trinidad Scorpion', description_pl = 'Potężne i trwałe uderzenie ostrości.' WHERE slug = 'trinidad-scorpion';
