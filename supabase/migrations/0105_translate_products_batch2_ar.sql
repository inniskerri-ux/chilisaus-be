-- Migration: Translate products batch 2 (Arabic)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_ar = 'Happy Hatter Hot Sauce – SMOKED. المكونات ؛ ثمار الغابة، نبيذ بورت أحمر، خل نبيذ أحمر، تمر، عسل زهور، فلفل غوست، بصل أحمر، كراث، ثوم، بودرة شيبوتلي، بابريكا مدخنة، زيت زيتون، ملح. صلصة مدخنة غنية، حلوة ولذيذة. مليئة بفلفل غوست، وشيبوتلي مدخن مكسيكي وفواكه الغابة المنعشة. قوية وحريرية مع نهاية حارة رائعة تدوم طويلاً. مثالية مع لحم الغزال أو الستيك أو البرجر. مستوى الحرارة 7 غير مناسب للنباتيين (يحتوي على العسل)',
  ingredients_ar = 'ثمار الغابة، نبيذ بورت أحمر، خل نبيذ أحمر، تمر، عسل زهور، فلفل غوست، بصل أحمر، كراث، ثوم، بودرة شيبوتلي، بابريكا مدخنة، زيت زيتون، ملح'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_ar = 'بودرة كارولينا ريبر 10 جم. 1.8 مليون - 2.2 مليون SHU. أحر بودرة فلفل في العالم. استخدمها بحذر شديد. مثالية لإضافة حرارة فورية لأي طبق. مناسبة للنباتيين.',
  ingredients_ar = 'فلفل كارولينا ريبر'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_ar = 'رقائق فلفل هابانيرو 100,000 - 350,000 SHU. التوازن المثالي بين الحرارة والنكهة. تشتهر برائحتها الفاكهية، تضفي هذه الرقائق لسعة حارة لذيذة على وجباتك. فلفل هابانيرو أحمر طازج مزروع في المكسيك، مجفف بالفرن ومسحوق. مناسبة للنباتيين.',
  ingredients_ar = 'فلفل هابانيرو مجفف'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_ar = 'قرون هابانيرو مكسيكية مجففة (100,000 - 350,000 SHU). الحرارة الفاكهية الكلاسيكية من المكسيك. مثالية للسالسا والتتبيلات واليخنات. مناسبة للنباتيين.',
  ingredients_ar = 'فلفل هابانيرو مجفف'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_ar = 'قرون فلفل ناغا / غوست مجففة 855,000 - 1 مليون SHU. ثالث أحر فلفل في العالم. كيس يحتوي على 12 حبة فلفل غوست مجففة. طعم مدخن وحلو تقريباً في البداية، ثم تبدأ الحرارة بالظهور بعد 30 ثانية. استخدمها مجففة أو مطحونة أو بعد نقعها في الماء الساخن. مناسبة للنباتيين.',
  ingredients_ar = 'فلفل غوست مجفف (بهوت جولوكيا)'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_ar = 'رقائق شيبوتلي مدخنة مكسيكية - 20 جم (2500 - 8000 SHU). رقائق هالبينو مدخنة لذيذة. ضرورية في المطبخ المكسيكي لنكهة الشواء العميقة والأصيلة. مناسبة للنباتيين.',
  ingredients_ar = 'فلفل هالبينو مجفف ومدخن (شيبوتلي)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_ar = 'بودرة هابانيرو 100,000 - 350,000 SHU. مصنوعة من قرون هابانيرو مجففة ومطحونة ناعماً. مثالية للأطباق المكسيكية أو الشواء. امزجها مع المايونيز أو الزبادي للحصول على غمسة حارة. مناسبة للنباتيين.',
  ingredients_ar = 'بودرة فلفل هابانيرو'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_ar = 'سامبال كارولينا ريبر نقي بنسبة 33٪. المكونات ؛ بصل 40٪، كارولينا ريبر 33٪، سكر مكرر 8٪، زيت عباد الشمس 7.5٪، صلصة صويا حلوة 7.5٪، خل أبيض 0.5٪، ملح، توابل. من إنتاج Devon Chilli Man الشهير في المملكة المتحدة. طعم حلو لذيذ في البداية بفضل البصل المكرمل، ثم تجربة مثيرة من حرارة كارولينا ريبر الطازجة. مستوى الحرارة 12 مناسب للنباتيين',
  ingredients_ar = 'بصل 40٪، كارولينا ريبر 33٪، سكر مكرر 8٪، زيت عباد الشمس 7.5٪، صلصة صويا حلوة 7.5٪، خل أبيض 0.5٪، ملح، توابل'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_ar = 'Garlic Italian (بدون سكر مضاف) مثالية للسباغيتي. المكونات ؛ زيت بذور اللفت، ماء، خل النبيذ الأبيض، زيت زيتون، فلفل أحمر، فلفل ناغا (3٪)، هريس الثوم، ملح، توابل، أعشاب. أول صلصة خاصة بنا على الإطلاق! مكونات عالية الجودة، زيت زيتون حريري، فلفل ناغا غوست طازج، الكثير من الثوم وأعشاب إيطالية. بسيطة ولذيذة. مستوى الحرارة 8 مناسبة للنباتيين',
  ingredients_ar = 'زيت بذور اللفت، ماء، خل النبيذ الأبيض، زيت زيتون، فلفل أحمر، فلفل ناغا (3٪)، هريس الثوم، ملح، توابل، أعشاب'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_ar = 'رقائق كارولينا ريبر 1.8 مليون - 2.2 مليون SHU. أحر فلفل في العالم، مجفف ومسحوق إلى رقائق نارية جميلة (تشمل البذور). رشة صغيرة كافية لإعطاء تلك اللسعة القوية للشوربات أو الكاري أو الباستا. استخدمها بحذر. مناسبة للنباتيين.',
  ingredients_ar = 'رقائق فلفل كارولينا ريبر'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_ar = 'Happy Hatter Hot Sauce – BOMBAY. المكونات ؛ مانجو، أناناس، فلفل هابانيرو أصفر، بصل، خل النبيذ الأبيض، سكر قصب، موز، ثوم، عصير ليمون حامض، زيت زيتون، مزيج توابل (يحتوي على الكرفس)، ملح. صلصة طازجة وفاكهية مع الكركم وتوابل آسيوية. متوازنة تماماً مع حرارة جيدة من الهابانيرو الأصفر. مثالية للووك أو أطباق الأرز. مستوى الحرارة 8 مناسبة للنباتيين',
  ingredients_ar = 'مانجو، أناناس، فلفل هابانيرو أصفر، بصل، خل النبيذ الأبيض، سكر قصب، موز، ثوم، عصير ليمون حامض، زيت زيتون، مزيج توابل (يحتوي على الكرفس)، ملح'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_ar = 'بودرة ناغا / غوست 855,000 - 1 مليون SHU. مباشرة من ناغالاند، الهند. طعم مدخن وحلو تقريباً في البداية، لكن الحرارة المكثفة تفاجئك بعد 30-40 ثانية. استخدمها بعناية. مناسبة للنباتيين.',
  ingredients_ar = 'بودرة فلفل غوست بيبير'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_ar = 'رقائق فلفل ناغا / غوست 855,000 - 1 مليون SHU. مباشرة من ناغالاند، تعد هذه الرقائق بديلاً رائعاً للفلفل الطازج لإعطاء حرارة فائقة لأطباقك. مناسبة للنباتيين.',
  ingredients_ar = 'رقائق فلفل غوست بيبير'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_ar = 'عائلة هابي هاتر – 3 صلصات – مقدمة في صندوق هدايا مصنوع يدوياً. تحتوي على ORIGINAL (حرارة 6) و SMOKED (حرارة 7) و BOMBAY (حرارة 7). جودة 100٪ من المنتج البلجيكي Wim Daans.',
  details_ar = 'تحتوي على 3 زجاجات سعة 100 مل: أوريجينال، مدخنة، وبومباي.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_ar = 'مجموعة كارولينا ريبر الأساسية: قرون، بودرة، سامبال وصلصة. كل ما تحتاجه لتجربة أحر فلفل في العالم بـ 4 أشكال مختلفة. ضمان أقصى درجات الحرارة! مناسبة للنباتيين.',
  details_ar = 'تشمل: صلصة واحدة، وسامبال واحد، وبودرة واحدة، وقرون مجففة.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_ar = '"Limon-hello" تستخدم فقط أفضل ليمون "Sfusato" من ساحل أمالفي الإيطالي. المكونات ؛ فلفل مدام جانيت، ليمون سفوساتو، جزر، بصل، فلفل أصفر، ثوم، زنجبيل، خل تفاح، كركم، ملح. صلصة طازجة وحيوية، غنية بفيتامين سي. رائعة مع السمك أو التاكو أو في الكوكتيلات. خالية من الغلوتين وبدون سكر مضاف. مستوى الحرارة 8 مناسبة للنباتيين',
  ingredients_ar = 'فلفل مدام جانيت، ليمون سفوساتو، جزر، بصل، فلفل أصفر، ثوم، زنجبيل، خل تفاح، كركم، ملح'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_ar = 'The Ripper (بدون سكر مضاف). المكونات: فلفل سكوتش بونيت، فلفل أحمر، فلفل كارولينا ريبر، خل تفاح، ملح، بودرة فلفل حار، مستخلص الفلفل الحار. مزيج لذيذ وخطير من سكوتش بونيت الفاكهي وأحر فلفل في العالم كارولينا ريبر. حرق أقصى! مستوى الحرارة 12 مناسبة للنباتيين',
  ingredients_ar = 'فلفل سكوتش بونيت، فلفل أحمر، فلفل كارولينا ريبر، خل تفاح، ملح، بودرة فلفل حار، مستخلص الفلفل الحار'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_ar = 'مجموعة كريزي باستارد الكاملة - 7 صلصات في صندوق هدايا. مصنوعة يدوياً في برلين من فلفل مشوي في الفرن ومكونات طبيعية طازجة. بدون سكر مكرر أو مستخلصات. تحتوي على جميع الأنواع من الهالبينو إلى كارولينا ريبر.',
  details_ar = 'تحتوي على 7 زجاجات سعة 100 مل: الأخضر، الوردي، الأزرق، الأصفر، البرتقالي، الأحمر، والأسود.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_ar = 'Crazy Bastard Hot Box - أحر 3 صلصات في المجموعة: البرتقالية (فلفل غوست والمانجو)، الحمراء (ترينيداد سكوربيون والكلمنتينا)، والسوداء (كارولينا ريبر والتوت الأزرق). لعشاق الإثارة الحقيقيين. مناسبة للنباتيين.',
  details_ar = 'تحتوي على 3 زجاجات سعة 100 مل: فلفل غوست، ترينيداد سكوربيون، وكارولينا ريبر.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_ar = 'RED - صلصة ترينيداد سكوربيون والكلمنتينا. المكونات: فلفل حلو، تفاح، بصل، خل النبيذ الأبيض، كلمنتينا (10٪)، فلفل ترينيداد سكوربيون (6٪)، ثوم، ليمون حامض، زيت زيتون، ملح البحر. ثاني أحر صلصة في المجموعة. رائعة مع السمك المشوي أو الروبيان. مستوى الحرارة 10 مناسبة للنباتيين',
  ingredients_ar = 'فلفل حلو، تفاح، بصل، خل النبيذ الأبيض، كلمنتينا (10٪)، فلفل ترينيداد سكوربيون (6٪)، ثوم، ليمون حامض، زيت زيتون، ملح البحر'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
