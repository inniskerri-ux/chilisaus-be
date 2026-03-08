-- Migration: Translate products batch 4 (Arabic)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_ar = 'تحدي Death Nut الجديد كلياً - الإصدار 3.0. المكونات ؛ فول سوداني جامبو إكس إل فيرجينيا، سكر قصب نقي، فلفل كارولينا ريبر، فلفل 7-بوت بريمو، فلفل (داتيل، سكوتش بونيت، غوست، برين سترين، دوغلاه، ترينيداد موروجا سكوربيون)، بلورات كابسيسين نقية 16M SHU، ملح البحر، توابل. خمسة مستويات من الفول السوداني تزداد حرارة تدريجياً. هل تجرؤ على الوصول للمستوى 5؟ مستوى الحرارة: خارج المقياس.',
  ingredients_ar = 'فول سوداني جامبو إكس إل، سكر، كارولينا ريبر، 7-بوت بريمو، فلفل غوست، سكوربيون، بلورات كابسيسين نقية 16M SHU، ملح البحر، توابل'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_ar = 'مجموعة الإصدار المحدود من Chilisaus.be. مزيج لذيذ من فلفل 7Pot والهابانيرو والأناناس. تم إنشاؤه بالتعاون مع العم بول (Uncle Paul). مستوى الحرارة 6.',
  ingredients_ar = 'فلفل 7Pot، هابانيرو، أناناس، خل، ملح'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_ar = 'مجموعة الإصدار المحدود من Chilisaus.be. شيراراشا مكثفة بفلفل غوست بالتعاون مع العم بول (Uncle Paul). للباحثين عن لسعة قوية. مستوى الحرارة 10.',
  ingredients_ar = 'فلفل غوست، ثوم، خل، سكر، ملح'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_ar = 'رقائق سكوتش بونيت (100,000 – 350,000 SHU). فلفل سكوتش بونيت من عائلة هابانيرو، ويستخدم بكثرة في المطبخ الكاريبي. طعم فاكهي ومشرق مع لمسة من الحلاوة. مثالي للدجاج المشوي (Jerk Chicken). مناسب للنباتيين.',
  ingredients_ar = 'رقائق فلفل سكوتش بونيت مجففة'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_ar = 'قرون سكوتش بونيت (100,000 – 350,000 SHU). فلفل سكوتش بونيت كامل مجفف. استخدمها كاملة، أو مطحونة، أو بعد إعادة ترطيبها في الماء الساخن. تضفي نكهة كاريبية وغرب أفريقية أصيلة على أطباقك. مناسب للنباتيين.',
  ingredients_ar = 'فلفل سكوتش بونيت مجفف'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_ar = 'Chilisaus.be – إصدار 2024 – معجون كاري جوز الهند بلمسة مميزة. المكونات ؛ فلفل (عين الطائر، مدام جانيت، لومبوك)، طماطم، حليب جوز الهند، بصل، خل جوز الهند، ماء، فول سوداني، ثوم، كزبرة، سكر جوز الهند، زنجبيل، أعشاب وتوابل (خردل)، ملح. بالتعاون مع White Whale Sauces. مستوى الحرارة 8.',
  ingredients_ar = 'فلفل (عين الطائر، مدام جانيت، لومبوك)، طماطم، حليب جوز الهند، بصل، خل جوز الهند، ماء، فول سوداني، ثوم، كزبرة، سكر جوز الهند، زنجبيل، أعشاب (خردل)، ملح'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_ar = 'أحر نودلز رامين في العالم. المكونات ؛ نودلز (دقيق قمح، ماء، بيض)، رامين (فلفل ناغا جولوكيا، كارولينا ريبر، معجون ميسو، صلصة صويا، زيت سمسم، أعشاب، توابل). تقدر الحرارة بأكثر من مليون وحدة سكوفيل. حظاً موفقاً!',
  ingredients_ar = 'نودلز (قمح، بيض)، ناغا جولوكيا، كارولينا ريبر، معجون ميسو، زيت سمسم، توابل'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_ar = 'زيت زيتون مع ثوم مقرمش وفلفل حار. المكونات ؛ فلفل حار، ثوم، زيت زيتون، توابل، سكر، ملح مدعم باليود. صنع في الفلبين، هذا الزيت يسبب الإدمان حقاً. ثوم مقرمش، حرارة رائعة ونكهات محمصة عميقة. حائز على الميدالية الذهبية في جوائز كليفتون الوطنية للفلفل الحار 2023. مستوى الحرارة 7 مناسب للنباتيين.',
  ingredients_ar = 'فلفل حار، ثوم، زيت زيتون، توابل، سكر، ملح مدعم باليود'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_ar = 'أحدث وأحر فلفل في العالم: PEPPER X (2.693 مليون SHU). SIZZLING STEAK المكونات: ملح البحر، توابل (تشمل الفلفل الأسود والفلفل الأحمر)، ثوم، بصل، زيت عباد الشمس، بيبر إكس. امنح شرائح اللحم أو التوفو أو الخضار حرارة فائقة. اخترعه إد كيري. مناسب للنباتيين.',
  ingredients_ar = 'ملح البحر، فلفل أسود، فلفل أحمر، ثوم، بصل، زيت عباد الشمس، بيبر إكس'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_ar = 'توابل إيطالية حارة مع بيبر إكس (Pepper X). ارفع مستوى البيتزا أو الباستا أو التتبيلات بهذا المزيج الذي يحتوي على فلفل بيبر إكس الشهير. ابتكره إد كيري، مبتكر كارولينا ريبر. مناسب للنباتيين.',
  ingredients_ar = 'أعشاب إيطالية، بودرة بيبر إكس'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_ar = 'توابل الثوم الحارة مع بيبر إكس (Pepper X). مزيج توابل غني بالثوم مع حرارة هائلة من بيبر إكس. مثالي لتحويل أي وجبة إلى تحدي حار. مناسب للنباتيين.',
  ingredients_ar = 'ملح، ثوم، بودرة فلفل حار، بيبر إكس'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_ar = 'مزيج توابل الكاجن (حرارة 4). مزيج كلاسيكي على طراز لويزيانا، مثالي للسمك أو الدجاج أو الخضار. يضفي حرارة خفيفة ونكهة عميقة. مناسب للنباتيين.',
  ingredients_ar = 'بابريكا، ثوم، بصل، فلفل أسود، كايين، أوريغانو، زعتر'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_ar = 'توابل بليزين إنفيرنو (Blazin'' Inferno) بفلفل الشبح (مستوى الحرارة 10). مزيج قوي لأولئك الذين يبحثون عن حرارة فورية ومكثفة. مثالي للشواء والتتبيلات. مناسب للنباتيين.',
  ingredients_ar = 'فلفل غوست، ملح البحر، ثوم، توابل'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_ar = '"FOGO" (وتعني نار بالبرتغالية) مع كارولينا ريبر وترينيداد موروجا سكوربيون. المكونات: كارولينا ريبر، أناناس، ماء، خل تفاح، ليكور بروتال، مانجو أخضر، فلفل موروجا، سكر موسكوفادو، ملح، نعناع، صمغ الزانثان. طازجة وحيوية وفاكهية مع لمسة مفاجئة من النعناع قبل أن تضرب الحرارة القصوى. مستوى الحرارة 12.',
  ingredients_ar = 'كارولينا ريبر، أناناس، ماء، خل تفاح، ليكور بروتال، مانجو أخضر، فلفل موروجا، سكر موسكوفادو، ملح، نعناع، صمغ الزانثان'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_ar = 'سالسا خضراء طازجة على الطراز المكسيكي. المكونات ؛ توماتيلو، هالبينو، ثوم، عصير ليمون، زيت عباد الشمس، بودرة بصل، ملح البحر. "سالسا الإفطار" الخاصة بنا - خفيفة وطازجة وحامضة قليلاً بسبب التوماتيلو. سالسا فيردي كلاسيكية أتقنها إل جيفي. مستوى الحرارة 4. مناسبة للنباتيين.',
  ingredients_ar = 'توماتيلو، هالبينو، ثوم، عصير ليمون، زيت عباد الشمس، بودرة بصل، ملح البحر'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_ar = 'شوكولاتة بلجيكية داكنة 70٪ مع فلفل غوست ونعناع وسكر فرقعة. المكونات ؛ شوكولاتة داكنة (كتلة كاكاو 70٪، سكر، زبدة كاكاو، مستحلب - ليسيثين صويا، فانيليا طبيعية)، سكر فرقعة (2٪)، بودرة فلفل ناغا (0.1٪)، زيت نعناع أساسي. تجربة فريدة. حرارة خفيفة إلى متوسطة. مناسب للنباتيين.',
  ingredients_ar = 'شوكولاتة داكنة (70٪ كاكاو)، سكر فرقعة، بودرة فلفل ناغا، زيت نعناع'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_ar = 'المكونات ؛ معجون طماطم، ماء، خل تفاح، بصل، سكر، بذور سمسم، توابل، شيبوتلي، هابانيرو، فلفل غواخيلو، ثوم مدخن، ملح. منتج رائع لمحبي نكهات التدخين والثوم القوية! كثيفة ومليئة بالنكهة. مستوى الحرارة 5. مناسبة للنباتيين.',
  ingredients_ar = 'معجون طماطم، ماء، خل تفاح، بصل، سكر، بذور سمسم، توابل، شيبوتلي، هابانيرو، فلفل غواخيلو، ثوم مدخن، ملح'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_ar = 'صلصة بوفالو من Singularity. المكونات ؛ خل كومبوتشا، هريس كايين (فلفل كايين، ملح، حمض الأسيتيك)، زبدة نباتية، سكر بني، بودرة ثوم، ملح، بابريكا مدخنة، صمغ الزانثان. النسخة الاسكتلندية من صلصة البوفالو الكلاسيكية. رائعة مع أجنحة الدجاج. مستوى الحرارة 4. مناسبة للنباتيين.',
  ingredients_ar = 'خل كومبوتشا، فلفل كايين، زبدة نباتية، سكر بني، بودرة ثوم، ملح، بابريكا مدخنة، صمغ الزانثان'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_ar = 'صلصة ديفز إنسانيتي (Dave''s Insanity) الأصلية - كما ظهرت في الموسم الأول من Hot Ones. المكونات ؛ فلفل حار، ماء، معجون طماطم، مستخلص الفلفل الحار، خل قصب السكر، ملح، بصل، ثوم، توابل. قطرة واحدة تكفي! الصلصة التي بدأت سوق الصلصات الحارة جداً. مستوى الحرارة: مرتفع جداً. مناسبة للنباتيين.',
  ingredients_ar = 'فلفل حار، ماء، معجون طماطم، مستخلص الفلفل الحار، خل قصب السكر، ملح، بصل، ثوم، توابل'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_ar = 'أحلام الكاريبي من ديرتي ديكس (Dirty Dick''s) - المكونات ؛ فلفل هابانيرو، إجاص، خوخ، عصير أناناس، خل تفاح، خردل، عصير تفاح، سكر بني، عسل وتوابل مطحونة طازجة. صلصة تعتمد على الخردل على الطراز الكاريبي. نكهات جريئة، متوازنة تماماً. مستوى الحرارة 6 غير مناسب للنباتيين (يحتوي على العسل).',
  ingredients_ar = 'فلفل هابانيرو، إجاص، خوخ، عصير أناناس، خل تفاح، خردل، عصير تفاح، سكر بني، عسل، توابل'
WHERE slug = 'dirty-dicks-caribbean-dreams';
