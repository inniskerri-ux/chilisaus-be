-- Update products.created_at from WooCommerce product dates
-- and store historical total sales count

alter table public.products add column if not exists wc_total_sales integer default 0;

update public.products set created_at = '2018-06-26', wc_total_sales = 176 where id = '1f56e24d-77ab-4ec5-a97b-8065ba34d805'; -- Evil One (Heat Level 10) 150ml
update public.products set created_at = '2018-06-26', wc_total_sales = 157 where id = '518d76c2-6082-4c86-85c7-94059ac7e79b'; -- Evil Twin - (Heat Level 10) 150ml
update public.products set created_at = '2018-06-26', wc_total_sales = 323 where id = '0d01f1b8-bbfd-4aa5-bb63-570a242a8454'; -- Naga Chilli Sauce (Heat Level 10) 140ml
update public.products set created_at = '2018-06-26', wc_total_sales = 248 where id = '3df553a6-ed1c-411e-9160-e04d09e47de1'; -- Caribbean Chilli Sauce (Heat Level 9) 140ml
update public.products set created_at = '2018-07-10', wc_total_sales = 134 where id = 'c74bd2ea-e5ee-4306-8a63-850c4ce4f261'; -- Tempest Garlic Chili Oil, NEW 150ml bottles (Heat 
update public.products set created_at = '2018-07-10', wc_total_sales = 272 where id = 'f7d57783-ad45-499f-a8e2-034efbaeedf6'; -- Mango Chilli Sauce (Heat Level 7) 140ml
update public.products set created_at = '2018-07-10', wc_total_sales = 52 where id = '317ae465-af57-42d6-9ab8-dadcc5adced1'; -- Sweet Chilli Sauce (Heat Level 1) 140ml
update public.products set created_at = '2018-07-10', wc_total_sales = 306 where id = 'ae529247-8462-4c4e-b6b3-5e827a550506'; -- Reaper Habanero (Heat Level 10) 140ml
update public.products set created_at = '2018-07-10', wc_total_sales = 145 where id = '1f76bc62-a0b6-435f-88c1-16f2bc58dd45'; -- Garlic Chilli Salt (Heat Level 3) 65g
update public.products set created_at = '2018-07-10', wc_total_sales = 164 where id = '51f504a4-1062-4b7d-83f1-52438a7c77da'; -- BLACK - Carolina Reaper &amp; Blueberry Hot Sauce 
update public.products set created_at = '2018-07-10', wc_total_sales = 78 where id = '9e91d8b1-df54-463d-a8d5-fa2d2e07ccd0'; -- BLUE - Scotch Bonnet &amp; Caribbean Spices Hot Sa
update public.products set created_at = '2018-07-10', wc_total_sales = 101 where id = '8191bea5-5309-4f65-9fde-efe3ee782dd7'; -- PINK - Chipotle and Pineapple Hot Sauce (Heat Leve
update public.products set created_at = '2018-08-28', wc_total_sales = 256 where id = '5a859ff3-1193-43e9-9412-e934e4c0b79f'; -- Carolina Reaper Dried Pods (1.8 million - 2.2milli
update public.products set created_at = '2018-11-17', wc_total_sales = 145 where id = 'a1d017c4-3b2b-4e9e-a801-2242fe14d3e0'; -- "God Slayer" EXTREME Hot Sauce (Heat Level 15)
update public.products set created_at = '2018-11-17', wc_total_sales = 100 where id = '4abb70e2-62a6-482b-a1ba-9f33775c6701'; -- ORANGE - Ghost Pepper & Mango Hot Sauce (Heat Leve
update public.products set created_at = '2019-04-15', wc_total_sales = 40 where id = '4bc6552c-a0c7-45eb-8fed-e260dedef929'; -- Mexican Smoked Chipotle Dried Pods (2500 - 8000 Sc
update public.products set created_at = '2019-04-22', wc_total_sales = 88 where id = '973a1785-edd0-4dab-b827-55c2014794f5'; -- Coffee &amp; Ghost Pepper Seasoning Rub BACK IN ST
update public.products set created_at = '2019-04-23', wc_total_sales = 325 where id = '512dd492-c274-45a5-bd50-81137a9c6042'; -- Happy Hatter Hot Sauce - ORIGINAL  (Heat Level 6)
update public.products set created_at = '2019-05-04', wc_total_sales = 250 where id = 'efd8c122-cd39-4967-8de0-76c3f873e554'; -- Trinidad Scorpion - AS FEATURED ON "HOT ONES" (Hea
update public.products set created_at = '2019-09-03', wc_total_sales = 279 where id = '9ef0a1db-b055-465d-b8fd-a3c2d95545bf'; -- "Regret" SUPER EXTREME Hot Sauce (Heat Level 20)
update public.products set created_at = '2019-11-23', wc_total_sales = 148 where id = '3d7b7b2c-04a5-4ad2-8d53-f80169bbc502'; -- Happy Hatter Hot Sauce - SMOKED (Heat Level 6)
update public.products set created_at = '2020-03-17', wc_total_sales = 167 where id = 'bef6afba-a99a-4d31-aaec-339708642603'; -- Carolina Reaper Powder 10g (1.8 Million – 2.2 Mill
update public.products set created_at = '2020-04-09', wc_total_sales = 28 where id = '0ea5b9c1-e28b-4a1a-957a-fb91efebb607'; -- Mexican Habanero Chili Flakes 20g (100,000 -350,00
update public.products set created_at = '2020-04-10', wc_total_sales = 38 where id = '96ae0c3c-9a66-4d65-b9c8-1c5d03a8e008'; -- Mexican Habanero Dried Pods (100,000 - 350,000 Sco
update public.products set created_at = '2020-04-14', wc_total_sales = 44 where id = '9db56431-f5a0-4157-9c23-a06655692945'; -- Naga / Ghost Pepper Dried Pods (855,000 - 1 Millio
update public.products set created_at = '2020-05-25', wc_total_sales = 61 where id = 'aeeed48d-898e-4a6e-a1f4-1f5a2956c3c9'; -- Mexican Smoked Chipotle Flakes - 20g (2500 - 8000 
update public.products set created_at = '2020-06-12', wc_total_sales = 54 where id = '0fbb99f0-fcb9-4577-8304-80b9d6e29e84'; -- Mexican Habanero Powder 30g (100,000 -350,000 Scov
update public.products set created_at = '2020-06-25', wc_total_sales = 305 where id = '15f98d4b-74c1-4028-a563-483f740c84a7'; -- 33% Pure Carolina Reaper Sambal - BACK IN APRIL (H
update public.products set created_at = '2020-07-15', wc_total_sales = 561 where id = '58678952-a869-4066-85aa-6919c770e914'; -- Chilisaus.be - The 2020 Edition - Garlic Italian -
update public.products set created_at = '2020-09-22', wc_total_sales = 43 where id = 'ce27157b-1f05-47f0-906c-2a65690fb0b6'; -- Carolina Reaper Flakes 10g (1.8 Million - 2.2 Mill
update public.products set created_at = '2020-10-15', wc_total_sales = 89 where id = '94a91b8f-2dd1-42dc-8acc-2c986f24f1f6'; -- Happy Hatter Hot Sauce - BOMBAY - (Heat Level 7)
update public.products set created_at = '2020-10-24', wc_total_sales = 33 where id = 'a3e0d1c2-2d42-469d-b220-da2d5a254c24'; -- Naga / Ghost Pepper Powder 10g (855,000 - 1 Millio
update public.products set created_at = '2020-10-24', wc_total_sales = 52 where id = '87e6cc8e-9cc9-499d-9261-4d273e697fe5'; -- Naga / Ghost Pepper Flakes 10g (855,000 - 1 Millio
update public.products set created_at = '2020-11-12', wc_total_sales = 48 where id = 'ad897221-3aee-46aa-b440-6b0fd74fccf7'; -- Happy Hatter Gift Box - 3 Sauces - Original, Smoke
update public.products set created_at = '2020-12-11', wc_total_sales = 17 where id = '7c82b4dd-b486-437a-b293-93076f613099'; -- The Carolina Reaper Essentials Kit (Heat Level - E
update public.products set created_at = '2021-06-01', wc_total_sales = 51 where id = '82897161-72c7-48f4-85ef-c1f581f3c800'; -- White Whale Sauces - Limonhello Hot Sauce (Heat Le
update public.products set created_at = '2021-11-18', wc_total_sales = 236 where id = 'e6c5f260-95d3-4fef-bcfc-57e06a4c9633'; -- "The Ripper" Carolina Reaper Extreme Hot Sauce - (
update public.products set created_at = '2021-08-06', wc_total_sales = 41 where id = '3c99e218-2a07-4d1b-83aa-edba88d9544e'; -- Crazy Bastard - FULL Collection X7 Sauces (Heat Le
update public.products set created_at = '2021-08-06', wc_total_sales = 56 where id = '350205ae-3f3e-4c09-af4b-c054ca457c93'; -- Crazy Bastard HOT BOX - x3 Hottest (Heat Level 10)
update public.products set created_at = '2021-12-02', wc_total_sales = 44 where id = '852dfe0b-0775-400e-9f24-f76122b17991'; -- RED - Trinidad Scorpion & Clementine (Heat Level 1
update public.products set created_at = '2021-12-02', wc_total_sales = 58 where id = '1bcbff87-4787-4e34-88f6-f67aa0fcda4b'; -- "Slasher" - Scotch Bonnet, Pineapple & Beer Hot Sa
update public.products set created_at = '2021-12-15', wc_total_sales = 42 where id = '3142ef48-c008-4d1f-b8c6-f2c7851e334a'; -- Crazy Bastard Sauce - x3 Best Sellers - (Heat Leve
update public.products set created_at = '2022-04-12', wc_total_sales = 120 where id = '88734f6b-ff5b-4c8f-9f89-385b063a6df3'; -- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
update public.products set created_at = '2022-06-01', wc_total_sales = 52 where id = '8dafa8a0-6b77-4519-adfa-d23e1ca6f530'; -- Venus - Carolina Reaper Mayonnaise - (Heat Level 9
update public.products set created_at = '2022-10-28', wc_total_sales = 80 where id = 'efb58efe-610b-47a5-b3f9-8a094fa96f4c'; -- Johnny Scoville - Tube of Terror Challenge V2.0 (H
update public.products set created_at = '2022-11-23', wc_total_sales = 23 where id = '0f283988-30ef-4b94-9f2c-346aad580109'; -- Trinidad Scorpion Powder 10g (1.2 Million Scoville
update public.products set created_at = '2023-04-02', wc_total_sales = 41 where id = 'e306015a-a5b3-4db4-8a17-4e752f6439ac'; -- White Whale Sauces - "Gnarlicky" - 148ml (Heat Lev
update public.products set created_at = '2023-07-05', wc_total_sales = 32 where id = 'fad97629-c150-4beb-a968-4855872ac7a6'; -- Sweet Heat Hot Honey (NL) - (Heat Level 4) 250g
update public.products set created_at = '2023-08-03', wc_total_sales = 106 where id = '156523cc-ea33-4cd3-848c-7e1c9ce28dea'; -- Chilisaus.be - The 2023 Edition - "ASIAN MANGO" (H
update public.products set created_at = '2023-08-03', wc_total_sales = 68 where id = '8a010cf4-331d-43c3-ad6c-fb1a17fcacee'; -- Chilisaus.be TRIO - 3 of our own Hot Sauces (Heat 
update public.products set created_at = '2023-09-23', wc_total_sales = 26 where id = '8ab93592-73d1-44c3-97f4-8fde424d3c99'; -- Happy Hatter Hot Sauce - SHAKIRA (Heat Level 3)
update public.products set created_at = '2023-09-23', wc_total_sales = 21 where id = 'c0b94fa6-f4e7-4ed6-b543-e0531797fa1c'; -- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE (He
update public.products set created_at = '2023-09-23', wc_total_sales = 38 where id = '9378ee53-1947-42f1-bd08-a574203bf203'; -- Happy Hatter Hot Sauce - THE WHOLE FAMILY - x6 Sau
update public.products set created_at = '2023-09-24', wc_total_sales = 17 where id = '70b8b372-4c17-4f49-a7bf-919d56fc657e'; -- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin - (
update public.products set created_at = '2023-09-24', wc_total_sales = 6 where id = '7c81d958-e06f-44a2-83b5-64fc86d20349'; -- OBLIVION - 500,000 Scoville PURE Capsaicin (Heat L
update public.products set created_at = '2025-05-10', wc_total_sales = 27 where id = '398a55ea-d141-4276-a037-fd5c711bea83'; -- El Jefe - PICANTE- Mexican Hot Sauce (Heat Level 6
update public.products set created_at = '2023-10-21', wc_total_sales = 56 where id = '58fe1343-f843-43e2-82f4-36648d83848b'; -- Satan's Spawn Gummy Bears - 125g
update public.products set created_at = '2023-10-21', wc_total_sales = 47 where id = 'd4010980-99d5-4fba-aa4c-80df9efd6d12'; -- Lord Reaper (UK) - Carolina Reaper Hot Sauce (Heat
update public.products set created_at = '2023-11-14', wc_total_sales = 16 where id = 'b2bb8fad-c843-45f7-809f-61ec77c7dff7'; -- Johnny Scoville - Tube Of Terror Challenge V1.0 Pe
update public.products set created_at = '2023-11-25', wc_total_sales = 73 where id = '06b9bc77-3772-4407-bbed-c97675cbeb28'; -- The Level 20, Shit That's Hot - SUPER EXTREME Hot 
update public.products set created_at = '2024-08-01', wc_total_sales = 13 where id = '9364b492-da28-465a-ada3-7d595f8cc9c1'; -- Chipotle Adobo Seasoning (Heat Level 5) 65g
update public.products set created_at = '2023-11-25', wc_total_sales = 6 where id = '97a9a5e9-60a6-4cae-8ffa-93565440c515'; -- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil (Hea
update public.products set created_at = '2023-11-26', wc_total_sales = 47 where id = 'cb9ba98f-75ee-4995-8762-eea6c718539d'; -- Piri Piri & Co, PORTUGAL - x6 Sauce Gift Box (All 
update public.products set created_at = '2024-04-16', wc_total_sales = 9 where id = 'd988d2c5-df48-4df4-8316-a09c661c69bd'; -- Blazing Foods - Death Nut Challenge 3.0 (Heat Leve
update public.products set created_at = '2024-04-16', wc_total_sales = 48 where id = 'ca38a752-7edf-4384-b77b-57b242900a64'; -- Chilisaus.be - Limited Edition Range - 7Pot Habane
update public.products set created_at = '2024-04-19', wc_total_sales = 47 where id = '7f3b73ff-5686-490e-aa47-6121f8b74beb'; -- Chilisaus.be - Limited Edition Range - Hurtberry G
update public.products set created_at = '2024-05-11', wc_total_sales = 4 where id = 'd7be327e-9288-4056-9f1e-0f0aaf540d99'; -- Scotch Bonnet Flakes - 30g (100,000–350,000 Scovil
update public.products set created_at = '2024-05-11', wc_total_sales = 3 where id = '39b95329-912b-4152-ac28-007e80ee22f4'; -- Scotch Bonnet Pods 20g (100,000–350,000 Scoville H
update public.products set created_at = '2024-06-21', wc_total_sales = 36 where id = '5a50bea0-d4c5-4e2f-acde-ad2405b2f72d'; -- Chilisaus.be - The 2024 Edition - Kokos Kerrie / C
update public.products set created_at = '2024-09-29', wc_total_sales = 7 where id = '01abadea-4d8f-4657-8ace-1dde0eb323a2'; -- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
update public.products set created_at = '2024-08-27', wc_total_sales = 77 where id = '78b57320-6d65-473b-b94e-d9b3e25b6138'; -- Germano's (PHL) - Crispy Garlic and Chili Olive Oi
update public.products set created_at = '2024-10-31', wc_total_sales = 10 where id = '74579813-966a-429a-aac1-8621d764efce'; -- Smokin’ Ed’s - Pepper X - Sizzling Steak Seasoning
update public.products set created_at = '2024-09-23', wc_total_sales = 8 where id = 'de830134-e2c9-4136-aaa7-51773a214e89'; -- Smokin’ Ed’s - Pepper X - Spicy Italian Seasoning
update public.products set created_at = '2024-09-23', wc_total_sales = 7 where id = '9bd3d936-22fc-4090-92bc-a2922072f518'; -- Smokin’ Ed’s - Pepper X - Spicy Garlicious Seasoni
update public.products set created_at = '2024-09-23', wc_total_sales = 10 where id = '8ab5b5f2-7ac7-49cb-b561-51801d3084ee'; -- Cajun Spice Seasoning  (Heat Level 4)
update public.products set created_at = '2024-09-23', wc_total_sales = 23 where id = 'db235de5-a78f-4b27-b908-9a2d4ad5d53c'; -- Blazin' Inferno Ghost Pepper Seasoning  (Heat Leve
update public.products set created_at = '2024-11-06', wc_total_sales = 5 where id = '53f20add-f868-4876-bae3-c12f78b8bd22'; -- Piri Piri & Co, PORTUGAL - FOGO (Heat Level 12)
update public.products set created_at = '2025-02-10', wc_total_sales = 9 where id = '9856b8a8-24fb-40ca-8356-a13185b2cdec'; -- El Jefe - Verde - Mexican Salsa - (Heat Level 4)
update public.products set created_at = '2025-03-06', wc_total_sales = 4 where id = 'c49b057b-b469-4422-8df1-4a25cf641764'; -- The Chilli Alchemist (UK) - "Dark Matter" Belgian 
update public.products set created_at = '2025-03-27', wc_total_sales = 34 where id = 'a052be3f-20d9-4a4a-9adf-348e32a39d62'; -- Hot Headz - Smoked Chilli + Garlic BACK IN APRIL (
update public.products set created_at = '2025-03-27', wc_total_sales = 3 where id = '2c7be9fe-67ff-41a8-bd9a-02fd4b2b226e'; -- Singularity Sauce Co (UK) - Buffalo Hot Sauce (Hea
update public.products set created_at = '2025-04-15', wc_total_sales = 10 where id = '71a0a495-4a29-4bc7-852a-6c8b16f8b3ca'; -- Dave's Insanity Sauce (USA) The Original - HOT AS 
update public.products set created_at = '2025-04-15', wc_total_sales = 19 where id = 'd4a125ab-ef17-443c-917b-480479712598'; -- Dirty Dick's (USA) Caribbean Dreams - (Heat Level 
update public.products set created_at = '2025-04-15', wc_total_sales = 16 where id = '37b22441-530b-45f4-9be5-bfe7f1f2fb51'; -- Naga Chili Salt - (Heat Level 9) - 65g
update public.products set created_at = '2025-04-16', wc_total_sales = 10 where id = '6289b0c0-c89c-42a6-983b-c1bad8a05208'; -- Chardy's Hot Sauce (NL) - Habañero, Jalapeño & Fir
update public.products set created_at = '2025-04-16', wc_total_sales = 9 where id = '2d6eb26b-015d-41da-bb95-6ee2d889b40a'; -- Chardy's Hot Sauce (NL) - Madame Jeanette + Adjuma
update public.products set created_at = '2025-04-18', wc_total_sales = 10 where id = '7a493cc0-e618-4ba5-bd2e-82c5ad5d60b4'; -- El Jefe's Primo Salsa - 7Pot Brainstrain & Papaya 
update public.products set created_at = '2025-04-18', wc_total_sales = 11 where id = '68dce95f-0d38-4e58-b100-80411a38ebae'; -- Hot Headz - Naga Hot Sauce BACK IN APRIL (Heat Lev
update public.products set created_at = '2025-04-18', wc_total_sales = 4 where id = '92cefa84-f6fd-4ac9-9bbc-fb4356797981'; -- Hot Headz - Chipotle Hot Sauce (Heat Level 5) 148m
update public.products set created_at = '2025-04-18', wc_total_sales = 5 where id = '614a004b-711b-43c6-8239-243376d00259'; -- Dave's Insanity Sauce (USA) Carolina Reaper - HOT 
update public.products set created_at = '2025-05-28', wc_total_sales = 29 where id = '1b4d9dad-ceba-488e-8d32-7b706fd0a747'; -- Chilisaus.be - The 2025 Edition - ROASTED HABANERO
update public.products set created_at = '2025-05-19', wc_total_sales = 2 where id = '1a823512-6a40-434d-89ca-ec0f850a4573'; -- Yellow - Habanero & Tomatillo Hot Sauce (Heat Leve
update public.products set created_at = '2025-06-11', wc_total_sales = 12 where id = '6afe40bf-dc6b-4286-ae61-0f45ea0b4798'; -- Chilisaus.be - Our Own 5 Hot Sauces (Heat Levels 7
update public.products set created_at = '2025-05-20', wc_total_sales = 2 where id = 'ad4c7e8a-4498-498c-aa1c-4b6dd85f2c5e'; -- SWET Hot Sauce Co - FUMADO, Smoked - (Heat Level 5
update public.products set created_at = '2025-05-20', wc_total_sales = 0 where id = '8351be7a-0501-4340-876f-c6668a3fd120'; -- SWET Hot Sauce Co - SUNBURN - Mango + Ginger - (He
update public.products set created_at = '2025-05-20', wc_total_sales = 3 where id = 'ecf8de13-04af-4ab4-a1db-fc5249423059'; -- SWET Hot Sauce Co - Coffee & Black Garlic :-) (Hea
update public.products set created_at = '2025-05-20', wc_total_sales = 2 where id = 'de3a4e71-1faa-4806-8a7a-da445077d992'; -- Swet Hot Sauce Co - TEARS - Carolina Reaper + Pear
update public.products set created_at = '2025-05-20', wc_total_sales = 2 where id = '4e0851f6-ba06-4ffb-b54c-bbb7d0a7f547'; -- Swet Hot Sauce Co - NaNa - Trinidad Scorpion + Pin
update public.products set created_at = '2025-09-11', wc_total_sales = 1 where id = '2021ebab-5e8b-49eb-984a-7129ba36f0a6'; -- Hot Chip Challenge V2 / 16+
update public.products set created_at = '2025-09-24', wc_total_sales = 14 where id = 'ff985656-9036-4436-8fb8-dcbbd9d0c826'; -- Skånsk - Swedish Black Garlic Hot Honey Original -
update public.products set created_at = '2025-09-24', wc_total_sales = 9 where id = '77cda6ee-ad3a-4651-a74e-eec64325195a'; -- Skånsk - Swedish Black Garlic Hot Honey - EXTRA He
update public.products set created_at = '2025-09-25', wc_total_sales = 3 where id = 'dbf8ef1d-e087-425d-8ab0-5a4b24a62338'; -- Skånsk, Swedish Hot Sauce Set - (Heat Levels 8 -12
update public.products set created_at = '2025-09-25', wc_total_sales = 5 where id = '59d291f5-424a-4f7d-8233-b42d6949d02a'; -- Jelly Beans - Spicy Fruit Flavours (Mild Heat) 60g
update public.products set created_at = '2025-09-25', wc_total_sales = 1 where id = 'ac6c561a-03cf-4761-823c-1e550f139d1c'; -- Burning Angel Chili Farm - FU2 Carolina Reaper - (
update public.products set created_at = '2025-09-26', wc_total_sales = 7 where id = '24bc2664-664b-436d-a4b7-8530585b6a4e'; -- Burning Angel Chili Farm - Tears of a Vampire Hot 
update public.products set created_at = '2025-09-26', wc_total_sales = 6 where id = 'a1605fa7-e65b-4dc4-b790-abfb1a2be821'; -- Spicy Caramel Popcorn - (Medium Heat) 120g
update public.products set created_at = '2025-10-22', wc_total_sales = 6 where id = '5115c5e4-06ac-464f-abad-3b6c697b0553'; -- Hot Headz - Trinidad Scorpion Hot Sauce (Heat Leve
update public.products set created_at = '2025-10-27', wc_total_sales = 2 where id = 'df972c93-330e-43b2-a1cd-9fbac7b9fc9e'; -- Black Death - Carolina Reaper + Black Garlic BACK 
update public.products set created_at = '2025-11-28', wc_total_sales = 0 where id = '9026e327-45cc-4c95-8484-0d073765fc60'; -- Marie Sharp's - Berry Habanero (Heat Level 3)
update public.products set created_at = '2025-11-28', wc_total_sales = 3 where id = '0530b443-423e-4b9a-8450-10191639522a'; -- Crazy Bastard Sauce - Caribbean Edition (Heat Leve
update public.products set created_at = '2025-11-29', wc_total_sales = 10 where id = 'b0804545-5b6e-4d4c-8bf4-6a9503dfbf76'; -- Chilisaus.be - Limited Edition Range - Bad Decisio
update public.products set created_at = '2026-01-25', wc_total_sales = 0 where id = '88944a8d-6c2e-4136-a46e-a2afddd219fe'; -- Chardy's Hot Jam - Jalapeño, Lime + Mezcal (Heat L
update public.products set created_at = '2026-01-20', wc_total_sales = 3 where id = '8d8fd82f-9077-4a01-9bea-7b8decebf61e'; -- El Jefe's Madame Piña - Pineapple & Ginger (Heat L
update public.products set created_at = '2026-01-25', wc_total_sales = 1 where id = '39ce2aba-deb3-4d2d-ac7c-9f1db463549a'; -- Chardy's Hot Jam - Habanero, Red Pepper + Whisky (
update public.products set created_at = '2026-01-25', wc_total_sales = 1 where id = 'ad4004ae-f1b8-4de2-ac1c-a14d045d0ac8'; -- Chardy's Hot Jam - Glühwein, Cranberry & Armagnac 
update public.products set created_at = '2026-01-25', wc_total_sales = 0 where id = '3457e8c4-4d5b-4d4c-ae1b-ce98ffe4b606'; -- Dirty Dick’s (USA) Tropical Twist – (Heat Level 6)
update public.products set created_at = '2026-02-13', wc_total_sales = 2 where id = '2582bd11-03eb-4878-aeb6-e8e60126586a'; -- Firelli - Italian Hot Sauce with Porcini Mushrooms
update public.products set created_at = '2026-02-16', wc_total_sales = 1 where id = 'c2f2a24a-8ccd-4cfa-a575-94d222396cbd'; -- Firelli - Italian Hot Sauce with Truffles (Heat Le
update public.products set created_at = '2026-02-19', wc_total_sales = 1 where id = 'a6c70d5f-e18b-4290-a633-9df916075503'; -- High River Sauces - Pepper X - Taco Sauce (Heat Le
update public.products set created_at = '2026-02-07', wc_total_sales = 0 where id = '32f54ac8-6795-420c-a664-393496d4a8e4'; -- Smoky Pepper Seasoning (Heat Level 6) 65g
update public.products set created_at = '2026-02-16', wc_total_sales = 0 where id = '7bed8f61-580f-4d51-acc0-8d3c93e24fbf'; -- Melinda's Hot Sauce, USA - Hot Sauce Mini's Box (M