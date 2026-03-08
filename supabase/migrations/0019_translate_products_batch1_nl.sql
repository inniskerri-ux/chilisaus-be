-- Migration: Translate products batch 1 (Dutch)

-- Evil One
UPDATE public.products SET 
  description_nl = 'Evil One Ingrediënten; Rode paprika''s, appelazijn, Scotch Bonnet chili (15%), ui, oranje vruchtvlees, citroenpulp en -schil, Naga Ghost Pepper (3%), wortel, knoflook, bruine suiker, chili-extract (1%), zeezout. Boordevol Scotch Bonnets, Naga Ghost Peppers en een vleugje puur chili-capsaïcine voor dat superhete, langdurige branderige gevoel na afloop, maar zonder de bittere smaak die capsaïcine vaak geeft. Dit is een superhete, heerlijke saus met hints van citrus, een zeer slim gemaakte hete saus. Heerlijk in spaghetti, op een burger, wok, pizza of meng het met wat salsa voor een geweldige pittige dip. Heetheidsniveau 10 Geschikt voor veganisten',
  ingredients_nl = 'Rode paprika''s, appelazijn, Scotch Bonnet chili (15%), ui, oranje vruchtvlees, citroenpulp en -schil, Naga Ghost Pepper (3%), wortel, knoflook, bruine suiker, chili-extract (1%), zeezout'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_nl = 'Evil Twin (geen toegevoegde suiker) Ingrediënten; Groene paprika''s, azijn, Scotch Bonnet chili, ui, appel, limoen, Naga Ghost Pepper, wortel, kruiden, knoflook, chili-extract (1%), zout. Superhete saus met Scotch Bonnet pepers, Naga Ghost Peppers en 1% chili-extract. Heeft een geweldige hitte, mooi en fris door de toevoeging van limoen. Een zeer goed uitgebalanceerde saus die een geweldige aanhoudende hitte levert door dat scheutje pure capsaïcine. Heerlijk voor pittige spaghetti. Voeg toe aan mayo voor een pittige dipsaus. Goed in de wok of op een burger / vegaburger. Heetheidsniveau 10 Geschikt voor veganisten',
  ingredients_nl = 'Groene paprika''s, azijn, Scotch Bonnet chili, ui, appel, limoen, Naga Ghost Pepper, wortel, kruiden, knoflook, chili-extract (1%), zout'
WHERE slug = 'evil-twin';

-- Tempest
UPDATE public.products SET 
  description_nl = 'Tempest Knoflook Chili Olie 150ml Ingrediënten; Koudgeperste koolzaadolie, natuurlijk chili-extract, natuurlijk knoflookextract. Zeker een voor de knoflookliefhebbers. Rijke heerlijke knoflook, zijdezachte olie - dit zal snel verslavend worden. Voeg toe tijdens het koken of gebruik het als finishing olie. Perfect voor pizza, pasta, wok. Heerlijk bij gebakken kip, meng met mayo voor een pittige aioli dip. Heetheidsniveau 5 Geschikt voor veganisten',
  ingredients_nl = 'Koudgeperste koolzaadolie, natuurlijk chili-extract, natuurlijk knoflookextract'
WHERE slug = 'tempest';

-- Happy Hatter ORIGINAL
UPDATE public.products SET 
  description_nl = 'Happy Hatter Hot Sauce – ORIGINAL Zoals te zien in het populaire tv-kookprogramma “Dagelijkse Kost”. Persoonlijk gebruikt door tv-kok Jeroen Meus. Ingrediënten; Tomaat, perzik, rode ui, chilipepers (Madame Jeanette 75%, Birds eye 25%) knoflook, appel, azijn, rietsuiker, limoen, zout, selderij, kruiden. Trots om onze eerste in België geproduceerde hete saus op voorraad te hebben, van maker Wim Daans. Dit is een geweldig voorbeeld van hoe een hete saus gemaakt moet worden en we zijn blij The Happy Hatter aan boord te mogen verwelkomen! Een saus op basis van tomaten, met een vleugje perzikzoetheid en precies de juiste hoeveelheid Madame Jeanette pepers voor die fruitige, pittige kick. Het is zeer goed uitgebalanceerd en verwarmt je mond mooi zonder hem in brand te steken. Perfect voor spaghettisaus, heerlijk op een burger / vegaburger of een pizza. Voeg toe aan tomatensalsa of mayo om je dipsauzen een vliegende start te geven. Heerlijk in de wok, bij noedels / rijst of voeg een scheutje toe aan je smoothiemix. Een geweldige kleine boost om de dag te beginnen! Heetheidsniveau 6 Geschikt voor veganisten',
  ingredients_nl = 'Tomaat, perzik, rode ui, chilipepers (Madame Jeanette 75%, Birds eye 25%), knoflook, appel, azijn, rietsuiker, limoen, zout, selderij, kruiden'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_nl = 'Trinidad Scorpion Ingrediënten; Appelazijn, suiker, Trinidad Scorpion peper, rode paprika''s, zout. Met een steek in zijn staart is deze superhete Trinidad Scorpion Sauce een ware ervaring om te aanschouwen. Sappig en zoet om mee te beginnen, met opbouwende hitte en een geweldige langdurige brandwond. Niet voor bangeriken. Levendig rood van kleur, deze Scorpion heeft een beet! Heerlijk in spaghetti, geweldig bij gebakken kip, noedels, rijst of alle Aziatische gerechten. Zoals te zien op Hot Ones – de beroemde YouTube-show waar beroemdheden wings eten met verschillende heetheidsniveaus van hete sauzen erop, terwijl ze lastige vragen over hun leven beantwoorden! Onze Trinidad Scorpion was saus nummer 7 in de line-up van seizoen 9, met maar liefst 104.000 Scoville Heat Units. Officieel getest door de show zelf! Het verraste elke beroemdheid – je kunt alle clips op YouTube vinden! Beroemdheden die onze saus hebben geproefd zijn onder andere; Halle Berry, Idris Elba, Stone Cold Steve Austin, Trevor Noah, Kristen Bell en The Jonas Brothers. Heetheidsniveau 10 Geschikt voor veganisten',
  ingredients_nl = 'Appelazijn, suiker, Trinidad Scorpion peper, rode paprika''s, zout'
WHERE slug = 'trinidad-scorpion';

-- Happy Hatter SMOKED
UPDATE public.products SET 
  description_nl = 'Happy Hatter Hot Sauce – SMOKED Ingrediënten; Bosvruchten, rode port, rodewijnazijn, dadels, bloesemhoning, Ghost Peppers, rode ui, sjalotten, knoflook, chipotlepoeder, gerookt paprikapoeder, olijfol, zout. (Rodewijnazijn bevat sulfieten) Dit is de tweede creatie van onze nieuwe Belgische producent en we zijn erg enthousiast om het in ons assortiment te hebben. Deze keer heeft hij gekozen voor een rijke rokerige hete saus en we zijn blij dat hij dat gedaan heeft. Het is zoet, rokerig en heerlijk! Zijn eerste saus was een groot succes – ik weet zeker dat je niet kunt wachten om deze te proberen. Boordevol Ghost Peppers, Mexicaanse gerookte Chipotle en sappige bosvruchten. Decadent, vol van smaak, zijdezacht en soepel met een geweldige langdurige pittige afdronk. Dit is een werkelijk heerlijke saus, perfect uitgebalanceerde ingrediënten maken deze saus snel verslavend. Probeer met wild, biefstuk, pulled pork, chili con carne, BBQ, burger / vegaburger, Mexicaans eten. Heetheidsniveau 7 NIET geschikt voor veganisten (bevat honing)',
  ingredients_nl = 'Bosvruchten, rode port, rodewijnazijn, dadels, bloesemhoning, Ghost Peppers, rode ui, sjalotten, knoflook, chipotlepoeder, gerookt paprikapoeder, olijfol, zout'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_nl = '33% Pure Carolina Reaper Sambal Ingrediënten; Uien 40%, Carolina Reaper 33%, geraffineerde suiker 8%, zonnebloemolie 7,5%, zoete sojasaus 7,5%, witte azijn 0,5%, zout, kruiden. De beroemde Devon Chilli Man is een in het VK gevestigde chilipeperkweker en hete sausproducent. Zijn peperplantages in Devon produceren enkele van de heetste EN de beste in de branche! De Carolina Reaper-zaden die Cliff gebruikt om zijn gigantische Reapers te kweken, zijn rechtstreeks afkomstig van Ed Currie van The Puckerbutt Pepper Company, South Carolina, VS (de gekke man die verantwoordelijk is voor het kweken van de Carolina Reaper). Eerst een heerlijke zoete smaak dankzij de gekarameliseerde uien. Dan is het een achtbaanrit door de verse Carolina Reapers. Er gaat veel tijd, liefde en aandacht in de productie van deze Sambal. Je zult niet teleurgesteld zijn. Heetheidsniveau 12 Geschikt voor veganisten',
  ingredients_nl = 'Uien 40%, Carolina Reaper 33%, geraffineerde suiker 8%, zonnebloemolie 7,5%, zoete sojasaus 7,5%, witte azijn 0,5%, zout, kruiden'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';
