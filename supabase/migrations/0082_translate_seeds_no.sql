-- Migration: Translate base seeds (Norwegian)

-- Categories
UPDATE public.categories SET name_no = 'Klassisk sterke sauser', description_no = 'Hverdags chilisauser til ethvert måltid.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_no = 'Fermentert', description_no = 'Kompleks syrlighet fra langsom fermentering.' WHERE slug = 'fermented';
UPDATE public.categories SET name_no = 'Røkt', description_no = 'Rykende sauser med flamberte chilier.' WHERE slug = 'smoky';
UPDATE public.categories SET name_no = 'Fruktig', description_no = 'Friske, saftige blandinger med tropiske frukter.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_no = 'Chili-utfordringer og sterke snacks', description_no = 'Test dine grenser med våre sterkeste snacks.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_no = 'Chili-ekstrakter', description_no = 'Rene capsaicin-ekstrakter for ekstrem varme.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_no = 'Chiliolje', description_no = 'Infuserte oljer til matlaging eller smaksforsterker.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_no = 'Tørket chili', description_no = 'Belger, flak og pulver til kjøkkenet ditt.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_no = 'Gaveesker', description_no = 'Den perfekte gaven til chili-elskere.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_no = 'Sterk honning', description_no = 'Honning med chili for et søtt-sterkt piff.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_no = 'Salt og krydder', description_no = 'Hev rettene dine med våre krydderblandinger.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_no = 'Jalapeño', description_no = 'Balansert styrke fra den grønne chilien.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_no = 'Habanero', description_no = 'Brennende sitrusaroma og varme.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_no = 'Ghost Pepper', description_no = 'Naga Jolokia-intensitet for spenningssøkere.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_no = 'Carolina Reaper', description_no = 'Verdensrekord-styrke med fruktige noter.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_no = 'Scotch Bonnet', description_no = 'Karibisk chili med fruktig og intens smak.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_no = 'Trinidad Scorpion', description_no = 'Et kraftfullt og vedvarende bitt.' WHERE slug = 'trinidad-scorpion';
