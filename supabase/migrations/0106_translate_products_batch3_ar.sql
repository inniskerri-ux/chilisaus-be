-- Migration: Translate products batch 3 (Arabic)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_ar = 'Chilisaus.be - إصدار 2022 - "CHOCOLATE SMOKED" (بدون سكر مضاف). المكونات ؛ فلفل مشوي، خل نبيذ أحمر، كارولينا ريبر، شيبوتلي مدخن، بصل أحمر، ثوم مشوي، ليمون حامض، كاكاو خام، زنجبيل، زيت زيتون، ملح، أعشاب بروفانس. انفجار حقيقي من النكهات الفاكهية والمدخنة مع لمسة نهائية مخملية من الشوكولاتة. مستوى الحرارة 10 مناسبة للنباتيين',
  ingredients_ar = 'فلفل مشوي، خل نبيذ أحمر، كارولينا ريبر، شيبوتلي مدخن، بصل أحمر، ثوم مشوي، ليمون حامض، كاكاو خام، زنجبيل، زيت زيتون، ملح، أعشاب بروفانس'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_ar = 'مايونيز كارولينا ريبر - 180 جم. المكونات ؛ زيت بذور اللفت، صفار بيض مبستر من دجاج حر، خردل ديجون، هريس كارولينا ريبر، خل تفاح، عصير ليمون، سكر، نشا بطاطس، ملح، فلفل. كريمي، كثيف وحار بشكل مذهل. استبدل المايونيز العادي بهذا الإصدار من الريبر لإضافة لسعة لكل طبق. مستوى الحرارة 9 غير مناسب للنباتيين',
  ingredients_ar = 'زيت بذور اللفت، صفار بيض مبستر، خردل ديجون، هريس كارولينا ريبر، خل تفاح، عصير ليمون، سكر، نشا بطاطس، ملح، فلفل'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_ar = 'تحدي تيوب أوف تيرور (Tube of Terror) - الإصدار 2.0. المكونات ؛ ذرة، زيت ذرة، فلفل حار (كارولينا ريبر، موروجا سكوربيون، 7-بوت بريمو، 7-بوت دوغلاه، غوست)، ملح البحر، توابل. حار بجنون! حبات ذرة محمصة مغطاة بمزيج من أحر أنواع الفلفل في العالم. هل تقبل التحدي؟',
  ingredients_ar = 'ذرة، زيت ذرة، فلفل حار (كارولينا ريبر، موروجا سكوربيون، 7-بوت بريمو، 7-بوت دوغلاه، غوست)، ملح البحر، توابل'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_ar = 'بودرة ترينيداد سكوربيون 10 جم. 1.2 مليون SHU. ثاني أحر فلفل في العالم. مجفف ومطحون إلى بودرة ناعمة. مثالي لإضافة حرارة قوية جداً وتدريجية لوجباتك. استخدمه بحذر.',
  ingredients_ar = 'فلفل ترينيداد سكوربيون'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_ar = 'Gnarlicky المكونات ؛ ثوم، فلفل هابانيرو، بصل، عصير ليمون حامض، خل، زيت زيتون، ملح، بذور خردل، زعتر، إكليل الجبل، فحم نشط. كمية لا تصدق من الثوم المحلى والثوم الأسود المخمر تشكل قاعدة هذه الصلصة. مسببة للإدمان لعشاق الثوم. مستوى الحرارة 6 مناسبة للنباتيين',
  ingredients_ar = 'ثوم، فلفل هابانيرو، بصل، عصير ليمون حامض، خل، زيت زيتون، ملح، بذور خردل، زعتر، إكليل الجبل، فحم نشط'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_ar = 'العسل الحار – الأصلي. المكونات ؛ عسل 90٪، 10٪ فلفل حار. لذيذ ومسبب للإدمان، حلو وحار. تم إنتاجه في أمستردام من أجود أنواع عسل الزهور ومزيج سري من الفلفل الحار. مثالي على البيتزا، الدجاج المقلي أو الأجبان. مستوى الحرارة 4 غير مناسب للنباتيين (يحتوي على العسل)',
  ingredients_ar = 'عسل 90٪، فلفل حار 10٪'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_ar = 'إصدار 2023 - "ASIAN MANGO". المكونات ؛ مانجو، ليمون حامض، فلفل برتقالي، فلفل غوست، فلفل مدام جانيت، خل تفاح، كراث، عصير برتقال، عشب الليمون، أعشاب، توابل، ملح. طازجة، عصارية ومسببة جداً للإدمان. مثالية مع المطبخ الآسيوي، الأرز، الدجاج أو السمك. مستوى الحرارة 10 مناسبة للنباتيين',
  ingredients_ar = 'مانجو، ليمون حامض، فلفل برتقالي، فلفل غوست، فلفل مدام جانيت، خل تفاح، كراث، عصير برتقال، عشب الليمون، أعشاب، توابل، ملح'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_ar = 'ثلاثي Chilisaus.be - الصلصات الثلاث الخاصة بنا: Garlic Italian (2020)، Chocolate Smoked (2022) و Asian Mango (2023). رحلة تذوق من خلال ابتكاراتنا السنوية. مكونات طبيعية 100٪. مناسبة للنباتيين.',
  details_ar = 'تحتوي على 3 زجاجات: Garlic Italian (حرارة 8)، Chocolate Smoked (حرارة 10)، Asian Mango (حرارة 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_ar = 'Happy Hatter Hot Sauce – SHAKIRA. المكونات ؛ فلفل شاكيرا، فلفل سيرانو، خل تفاح، سكر قصب، بصل، ثوم، عصير ليمون حامض، ملح، زنجبيل، زيت زيتون. صلصة خضراء خفيفة وطازجة وحمضية تستخدم فلفل شاكيرا من أصل عربي. مستوى الحرارة 3 مناسبة للنباتيين',
  ingredients_ar = 'فلفل شاكيرا، فلفل سيرانو، خل تفاح، سكر قصب، بصل، ثوم، عصير ليمون حامض، ملح، زنجبيل، زيت زيتون'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_ar = 'Happy Hatter – PICKLE PUMPKIN PIRATE. المكونات ؛ يقطين، مخلل، فلفل آجي أماريلو، ترينيداد سكوربيون، بصل، خل، سكر قصب، رم متبل، ثوم، ليمون حامض، ملح، أعشاب، زيت زيتون، خردل. صلصة دسمة للقراصنة الحقيقيين مع لمسة من الرم. مستوى الحرارة 8 مناسبة للنباتيين',
  ingredients_ar = 'يقطين، مخلل، فلفل آجي أماريلو، ترينيداد سكوربيون، بصل، خل، سكر قصب، رم متبل، ثوم، ليمون حامض، ملح، أعشاب، زيت زيتون، خردل'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_ar = 'عائلة هابي هاتر الكاملة - مجموعة من 6 صلصات سعة 100 مل. من مستوى الحرارة 3 إلى 10. تحتوي على: أوريجينال، مدخنة، بومباي، شاكيرا، بيكل بامبكن بايرت، وشوكليت سموكت. هدية مثالية لاستكشاف المجموعة الكاملة.',
  details_ar = 'تحتوي على 6 زجاجات سعة 100 مل بمستويات حرارة مختلفة.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_ar = 'DOOMSDAY - كابسيسين نقي 1.6 مليون SHU - 30 مل. المكونات ؛ مستخلص الفلفل الحار بقوة 1.6 مليون وحدة سكوفيل. يستخدم فقط كإضافة للأطعمة أو المشروبات. حرارة فورية ودائمة. تحذير، منتج قوي للغاية!',
  ingredients_ar = 'مستخلص الفلفل الحار بقوة 1.6 مليون SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_ar = 'OBLIVION - كابسيسين نقي 500,000 SHU - 30 مل. مستخلص شفاف تماماً، مثالي لإضافة الحرارة للأطباق دون تغيير لونها أو طعمها الأصلي. استخدمه بحذر.',
  ingredients_ar = 'مستخلص الفلفل الحار بقوة 500,000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_ar = 'El Jefe - PICANTE. المكونات ؛ طماطم، فلفل حار، ثوم، عصير ليمون، زيت عباد الشمس، ملح البحر. سالسا على الطراز المكسيكي مع فلفل مدخن وثوم مشوي. نكهات عميقة وقوام غني. مستوى الحرارة 6 مناسبة للنباتيين',
  ingredients_ar = 'طماطم، فلفل حار، ثوم، عصير ليمون، زيت عباد الشمس، ملح البحر'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_ar = 'حلوى الجيلي سيتان سباون (Satan''s Spawn) - 125 جم. هذه الدببة الصغيرة لها جانب مظلم: فهي منكهة بفلفل هابانيرو الحار. لذيذة وفاكهية مع حرق قوي. غير مناسبة للنباتيين.',
  ingredients_ar = 'شراب جلوكوز، سكر، جيلاتين (خنزير)، حمض الستريك، نكهات، بودرة هابانيرو (0.3٪)، مركزات عصائر الفاكهة'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_ar = 'لورد ريبر (Lord Reaper) - صلصة كارولينا ريبر المخمرة 100 مل. المكونات ؛ ماء، زيت بذور اللفت، كارولينا ريبر (20٪)، خل، صلصة صويا، برتقال، سكر قصب، توابل، ملح، زنجبيل، ثوم، ليمون. قوام كثيف ولزج وحار جداً. مستوى الحرارة 10 مناسبة للنباتيين',
  ingredients_ar = 'ماء، زيت بذور اللفت، كارولينا ريبر (20٪)، خل، صلصة صويا، برتقال، سكر قصب، توابل، ملح، زنجبيل، ثوم، ليمون'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_ar = 'تحدي تيوب أوف تيرور (TUBE OF TERROR) الإصدار 1.0. فول سوداني مغطى بأحر أنواع الفلفل في العالم: كارولينا ريبر، ترينيداد سكوربيون، 7-بوت برين سترين، دوغلاه، وغوست، بالإضافة إلى بلورات كابسيسين نقية بقوة 13 مليون SHU. حظاً موفقاً!',
  ingredients_ar = 'فول سوداني، كارولينا ريبر، ترينيداد سكوربيون، 7-بوت برين سترين، دوغلاه، غوست، بلورات كابسيسين نقية'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_ar = 'LEVEL 20 - Shit that''s Hot! صلصة حارة جداً. المكونات ؛ طماطم، خل تفاح، ثوم، شيبوتلي، هابانيرو ليمون، بصل، عصير ليمون حامض، شراب الصبار (أغاف)، كابسيسين نقي 9 مليون SHU، أعشاب، توابل، ملح. توازن مثالي بين النكهة والحرارة القصوى. مستوى الحرارة 20 مناسبة للنباتيين',
  ingredients_ar = 'طماطم، خل تفاح، ثوم، شيبوتلي، هابانيرو ليمون، بصل، عصير ليمون حامض، شراب الصبار، كابسيسين نقي 9 مليون SHU، أعشاب، توابل، ملح'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_ar = 'توابل شيبوتلي أدوبو - 65 جم. المكونات: كمون، بابريكا، ثوم، بصل، شيبوتلي، أوريغانو، فلفل، طماطم، ملح. مستوحاة من المطبخ المكسيكي التقليدي. ترابية، مدخنة وغنية. مستوى الحرارة 5 مناسبة للنباتيين.',
  ingredients_ar = 'كمون، بابريكا، ثوم، بصل، شيبوتلي، أوريغانو، فلفل، طماطم، ملح'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_ar = 'زيت فلفل سكوربيون - البرتغال. المكونات: زيت عباد الشمس، ترينيداد سكوربيون، فلفل غوست، هابانيرو، فلفل مالاغيتا، ليمون، ملح. نكهة الفلفل تبرز بوضوح في هذا الزيت الحريري. مستوى الحرارة 8 مناسبة للنباتيين.',
  ingredients_ar = 'زيت عباد الشمس، ترينيداد سكوربيون، فلفل غوست، هابانيرو، فلفل مالاغيتا، ليمون، ملح'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
