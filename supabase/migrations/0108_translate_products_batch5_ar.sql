-- Migration: Translate products batch 5 (Arabic)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_ar = 'صلصة طبيعية حارة جداً مع كارولينا ريبر والثوم الأسود. المكونات ؛ خل بلسميك، دبس السكر، ثوم أسود (8.5٪)، كارولينا ريبر (5.5٪)، بودرة طماطم، ماء، بصل، ملح، فلفل أسود. نجم هذه الصلصة هو الثوم الأسود المخمر لمدة 14 يوماً، مما يعطي قواماً حلواً وشبيهًا بالشراب مع نغمات من الصويا والبلسميك. مستوى الحرارة 15. مناسبة للنباتيين.',
  ingredients_ar = 'خل بلسميك، دبس السكر، ثوم أسود (8.5٪)، كارولينا ريبر (5.5٪)، بودرة طماطم، ماء، بصل، ملح، فلفل أسود'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_ar = 'صندوق الكاريبي - 3 صلصات مع 3 أنواع مختلفة من الفلفل الكاريبي الفاكهي. رحلة استوائية عبر حرارة جزر الأنتيل. مناسبة للنباتيين.',
  details_ar = 'يحتوي على 3 زجاجات سعة 100 مل بنكهات كاريبية.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_ar = 'مجموعتنا الجديدة ذات الإصدار المحدود - "باد ديسيجن" (Bad Decision). صلصة فلفل مخمرة بلسعة قوية جداً. أحياناً يكون القرار السيئ هو الأكثر لذة. مستوى الحرارة 11.',
  ingredients_ar = 'فلفل مخمر، خل، ملح'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_ar = 'كما ظهر في برنامج HOT ONES. واحدة من أفضل ثلاث صلصات حارة في الولايات المتحدة. لمسة استوائية مع طعم حائز على جوائز. ابتكره شيف شواء حائز على جوائز. مستوى الحرارة 6.',
  ingredients_ar = 'فلفل هابانيرو، فواكه استوائية، بصل، خل، توابل'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_ar = 'إيطالية بكل فخر - صلصة حارة مع فطر البورشيني. مصنوعة يدوياً في بارما، إيطاليا. نكهة غنية ومعقدة مع فلفل كالابريا وخل البلسميك وأعشاب إيطالية. غنية بنكهة الأمامي. مستوى الحرارة 6. مناسبة للنباتيين.',
  ingredients_ar = 'فلفل أحمر مشوي، ماء، خل بلسميك من مودينا (11٪)، خل تفاح، فلفل كالابريا، عصير ليمون، سكر، فلفل كايين، توابل، ملح، فطر بورشيني مجفف، ثوم'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_ar = 'إيطالية بكل فخر - صلصة التفل (الكمأة) الحارة. رائحة التفل الإيطالي المذهلة ممزوجة مع فلفل كالابريا وخل البلسميك. إضافة فاخرة لأي طبق. مستوى الحرارة 5.',
  ingredients_ar = 'فلفل أحمر مشوي، ماء، خل بلسميك، نكهة التفل، فلفل كالابريا، توابل'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_ar = 'صلصة التاكو ببيبر إكس (Pepper X) من الولايات المتحدة. بيبر إكس معترف به كأحر فلفل في العالم. هذه الصلصة تجلب تلك الحرارة القصوى إلى أطباقك المكسيكية المفضلة. مستوى الحرارة 15.',
  ingredients_ar = 'فلفل بيبر إكس، خل، طماطم، توابل'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_ar = 'مزيج توابل الفلفل المدخن مع الشيبوتلي والثوم. المكونات ؛ ملح، فلفل أسود، ثوم، حبوب فلفل أبيض، رقائق شيبوتلي، قشر ليمون، إكليل الجبل، ريحان، حمض الستريك، زعتر، لويزة ليمونية، فلفل مجفف. مكون سري يرفع مستوى أي وجبة. مدخن مع نهاية منعشة بالليمون. مناسب للنباتيين.',
  ingredients_ar = 'ملح، فلفل أسود، ثوم، فلفل أبيض، شيبوتلي، قشر ليمون، إكليل الجبل، ريحان، حمض الستريك، زعتر، لويزة ليمونية، فلفل مجفف'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
