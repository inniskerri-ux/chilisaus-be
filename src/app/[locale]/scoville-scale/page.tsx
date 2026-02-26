import { setRequestLocale, getTranslations } from 'next-intl/server';
import Image from 'next/image';
import { Flame, AlertTriangle, Info } from 'lucide-react';

export default async function ScovilleScalePage({
  params,
}: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  setRequestLocale(locale);
  const t = await getTranslations('Scoville');

  const heatLevels = [
    { key: 'mild', color: 'bg-green-100 text-green-800 border-green-200' },
    { key: 'medium', color: 'bg-yellow-100 text-yellow-800 border-yellow-200' },
    { key: 'hot', color: 'bg-orange-100 text-orange-800 border-orange-200' },
    { key: 'extraHot', color: 'bg-red-100 text-red-800 border-red-200' },
    { key: 'volcanic', color: 'bg-red-200 text-red-900 border-red-300' },
    { key: 'superhot', color: 'bg-black text-white border-zinc-800' },
  ];

  return (
    <div className="mx-auto max-w-5xl px-6 py-12 md:py-20">
      <div className="mb-12 text-center">
        <h1 className="mb-4 text-4xl font-black uppercase tracking-tight md:text-6xl">
          {t('title')}
        </h1>
        <p className="mx-auto max-w-2xl text-lg text-zinc-600">
          {t('intro')}
        </p>
      </div>

      {/* Main Scoville Image */}
      <div className="relative mb-16 overflow-hidden rounded-3xl border border-zinc-100 bg-zinc-50 shadow-2xl">
        <Image
          src="/images/scoville new.jpg"
          alt="Scoville Scale Heat Chart"
          width={1200}
          height={800}
          className="h-auto w-full object-cover"
          priority
        />
        <div className="absolute bottom-6 left-6 right-6 flex items-center gap-2 rounded-xl bg-white/90 p-4 backdrop-blur-sm md:bottom-10 md:left-10 md:right-auto">
          <Info className="text-brand-red" size={24} />
          <p className="text-sm font-bold text-zinc-900">
            SHU = Scoville Heat Units
          </p>
        </div>
      </div>

      <div className="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
        {heatLevels.map((level) => (
          <div
            key={level.key}
            className="group flex flex-col rounded-2xl border border-zinc-100 bg-white p-8 transition-all hover:shadow-xl hover:-translate-y-1"
          >
            <div className={`mb-4 inline-flex w-fit items-center gap-2 rounded-full px-3 py-1 text-xs font-black uppercase tracking-widest border ${level.color}`}>
              <Flame size={14} />
              {t(`levels.${level.key}.title`)}
            </div>
            <p className="text-sm leading-relaxed text-zinc-600">
              {t(`levels.${level.key}.description`)}
            </p>
          </div>
        ))}
      </div>

      <div className="mt-16 flex flex-col items-center gap-6 rounded-3xl bg-zinc-900 p-8 text-center text-white md:p-12">
        <AlertTriangle size={48} className="text-brand-red" />
        <h2 className="text-2xl font-black uppercase tracking-tight md:text-3xl">
          Handle with Care
        </h2>
        <p className="max-w-2xl text-zinc-400">
          When dealing with superhot peppers and sauces, remember that capsaicin is an oil. Always wear gloves, avoid touching your eyes, and keep some milk or bread handy to tame the fire!
        </p>
        <div className="mt-4 flex flex-wrap justify-center gap-4">
          <div className="rounded-lg bg-zinc-800 px-4 py-2 text-xs font-bold uppercase tracking-widest text-zinc-400">
            Protect your eyes
          </div>
          <div className="rounded-lg bg-zinc-800 px-4 py-2 text-xs font-bold uppercase tracking-widest text-zinc-400">
            Use gloves
          </div>
          <div className="rounded-lg bg-zinc-800 px-4 py-2 text-xs font-bold uppercase tracking-widest text-zinc-400">
            Keep out of reach of children
          </div>
        </div>
      </div>
    </div>
  );
}
