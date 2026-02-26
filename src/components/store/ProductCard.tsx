'use client';

import { useLocale, useTranslations } from 'next-intl';
import Image from 'next/image';
import Link from 'next/link';
import { Card, CardContent, CardHeader } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { formatPrice } from '@/lib/format';
import type { StoreProduct } from './types';

interface ProductCardProps {
  product: StoreProduct;
  specialPrice?: number | null;
}

const getCategoryColor = (slug?: string) => {
  if (!slug) return 'bg-zinc-100 text-zinc-800 border-zinc-200';
  
  const colors: Record<string, string> = {
    'classic-hot-sauce': 'bg-red-100 text-red-800 border-red-200',
    'fermented': 'bg-amber-100 text-amber-800 border-amber-200',
    'smoky': 'bg-orange-100 text-orange-800 border-orange-200',
    'fruit-forward': 'bg-lime-100 text-lime-800 border-lime-200',
    'chili-challenges-spicy-snacks': 'bg-purple-100 text-purple-800 border-purple-200',
    'chili-extracts': 'bg-rose-100 text-rose-800 border-rose-200',
    'chili-oil': 'bg-yellow-100 text-yellow-800 border-yellow-200',
    'dried-chilies-pods-flakes-powders': 'bg-emerald-100 text-emerald-800 border-emerald-200',
    'gift-boxes-sets': 'bg-blue-100 text-blue-800 border-blue-200',
    'hot-honey': 'bg-orange-100 text-orange-800 border-orange-200',
    'salts-seasonings-rubs': 'bg-cyan-100 text-cyan-800 border-cyan-200',
  };

  return colors[slug] || 'bg-zinc-100 text-zinc-800 border-zinc-200';
};

export default function ProductCard({ product, specialPrice }: ProductCardProps) {
  const locale = useLocale();
  const t = useTranslations('UI');

  const displayPrice = specialPrice ?? product.price_cents;
  const hasDiscount = specialPrice && specialPrice < product.price_cents;
  const productUrl = `/${locale}/shop/${product.slug}`;

  return (
    <Link href={productUrl}>
      <Card className="group overflow-hidden transition-all hover:shadow-lg h-full flex flex-col">
        <CardHeader className="p-0">
          <div className="relative aspect-square w-full overflow-hidden bg-zinc-100 dark:bg-zinc-800">
            {product.image_url ? (
              <Image
                src={product.image_url}
                alt={product.name}
                fill
                className="object-contain p-4 transition-transform group-hover:scale-105"
                sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
              />
            ) : (
              <div className="flex h-full items-center justify-center text-zinc-300">
                <span className="text-4xl">🌶️</span>
              </div>
            )}
          </div>
        </CardHeader>
        <CardContent className="p-4 flex flex-col flex-1">
          <div className="space-y-2 flex-1">
            <div className="flex items-center justify-between gap-2">
              {product.category && (
                <Badge 
                  variant="outline" 
                  className={`font-normal border ${getCategoryColor(product.category.slug)}`}
                >
                  {product.category.name}
                </Badge>
              )}
              {product.heatLevel && (
                <span className="text-xs font-bold text-orange-600 uppercase">
                  Level {product.heatLevel}
                </span>
              )}
            </div>
            
            <h3 className="text-lg font-semibold line-clamp-1 group-hover:text-orange-600 transition-colors">
              {product.name}
            </h3>
            
            {product.description && (
              <p className="line-clamp-2 text-sm text-zinc-600 dark:text-zinc-400">
                {product.description}
              </p>
            )}
          </div>
          
          <div className="mt-4 flex items-center gap-2">
            {hasDiscount && (
              <span className="text-sm text-zinc-500 line-through">
                {formatPrice(product.price_cents, product.currency, locale)}
              </span>
            )}
            <span className={`text-lg font-bold ${hasDiscount ? 'text-orange-600' : ''}`}>
              {formatPrice(displayPrice, product.currency, locale)}
            </span>
          </div>
        </CardContent>
      </Card>
    </Link>
  );
}
