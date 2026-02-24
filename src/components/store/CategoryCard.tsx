import Link from 'next/link';
import Image from 'next/image';
import type { Category } from './types';

interface CategoryCardProps {
  category: Category & { image_url?: string | null };
  locale: string;
}

export default function CategoryCard({ category, locale }: CategoryCardProps) {
  return (
    <Link
      href={`/${locale}/shop?category=${category.slug}`}
      className="group relative overflow-hidden rounded-2xl bg-zinc-100 transition-all hover:ring-2 hover:ring-orange-500 active:scale-95"
    >
      <div className="aspect-[4/5] w-full overflow-hidden">
        {category.image_url ? (
          <Image
            src={category.image_url}
            alt={category.name}
            fill
            className="object-cover transition-transform duration-500 group-hover:scale-110"
            sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
          />
        ) : (
          <div className="flex h-full w-full items-center justify-center bg-zinc-200">
            <span className="text-4xl">🌶️</span>
          </div>
        )}
        {/* Overlay */}
        <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/20 to-transparent" />
      </div>

      <div className="absolute bottom-0 left-0 right-0 p-6">
        <h3 className="text-xl font-bold text-white transition-colors group-hover:text-orange-400">
          {category.name}
        </h3>
        <p className="mt-2 text-sm text-zinc-300 opacity-0 transition-all duration-300 group-hover:opacity-100">
          Explore all products &rarr;
        </p>
      </div>
    </Link>
  );
}
