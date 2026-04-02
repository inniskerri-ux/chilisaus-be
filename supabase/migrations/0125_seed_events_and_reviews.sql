-- Seed video_reviews
INSERT INTO public.video_reviews (title, reviewer, youtube_id, sort_order) VALUES
('Pepper X Taco Sauce', 'High River Sauces', '1AjhLiq7Etc', 10),
('Chilisaus.be 2023 Edition', 'Johnny Scoville (USA)', 'Yp_FWXXvkk4', 20),
('Chilisaus.be 2022 Edition', 'Johnny Scoville (USA)', '-YVTjMC0jD0', 30),
('Chilisaus.be 2020 & 2022', 'Frank (Inland Rabbit)', 'JF6qyIyoQmY', 40),
('Evil One (Heat Level 10)', 'Clifton Chilli Club (UK)', 'FCXfezz4BB8', 50),
('Trinidad Scorpion Feature', 'Hot Ones (First We Feast)', 'LNVuVQ8hsxc', 60),
('Trinidad Scorpion Reaction', 'Stone Cold Steve Austin', 'yqXeLYKxoDA', 70),
('Happy Hatter Original', 'Johnny Scoville & UK Queen', 'rx7-soriLjo', 80),
('White Whale Limonhello', 'Johnny Scoville', 'N-74HGH0wXM', 90);

-- Seed shop_events
INSERT INTO public.shop_events (name, location, date_info, sort_order) VALUES
('Brussels Winterpret', 'Brussels, BE', 'Winter Season', 10),
('Gentse Winterfeesten', 'Gent, BE', 'Winter Season', 20),
('Feel Good Market', 'Eindhoven, NL', '3rd Sunday of the month', 30),
('Pure Markt', 'Amsterdam, NL', 'Recurring (Amstel Park)', 40),
('Chilifest.be / Chilli Fair EU', 'Ham, BE', 'Annual', 50),
('Berlin Chili Fest', 'Berlin, DE', 'May & September', 60),
('Dutch Chili Fest', 'Eindhoven, NL', 'April 12th', 70),
('Chili & Beer Fest', 'Breda, NL', 'Specific Dates', 80),
('Antwerp Chili Fest', 'Antwerp, BE', 'October', 90),
('El Mundo Fantasia', 'Landgraaf, NL', 'Specific Dates', 100);
