"use client";

import { useState } from "react";
import { useLocale, useTranslations } from "next-intl";
import { formatPrice } from "@/lib/format";
import AddToCartButton from "./AddToCartButton";
import type { ProductVariant } from "./types";

interface ProductVariantSelectorProps {
  productId: string;
  variants: ProductVariant[];
  basePriceCents: number;
  currency: string;
  outOfStock?: boolean;
}

export default function ProductVariantSelector({
  productId,
  variants,
  basePriceCents,
  currency,
  outOfStock = false,
}: ProductVariantSelectorProps) {
  const locale = useLocale();
  const t = useTranslations("ProductPage");

  const activeVariants = variants.filter((v) => v.stock > 0 || v.stock === 0);
  const [selectedVariantId, setSelectedVariantId] = useState<string>(
    activeVariants[0]?.id ?? "",
  );

  const selectedVariant = activeVariants.find((v) => v.id === selectedVariantId);
  const displayPrice = selectedVariant?.price_cents ?? basePriceCents;
  const variantOutOfStock = outOfStock || (selectedVariant ? selectedVariant.stock === 0 : false);

  if (activeVariants.length === 0) {
    return (
      <AddToCartButton
        productId={productId}
        outOfStock={outOfStock}
        label={t("addToCart")}
        outOfStockLabel={t("outOfStock")}
        className="w-full sm:w-auto bg-brand-red hover:bg-brand-red/90 text-white"
      />
    );
  }

  return (
    <div className="space-y-4">
      <p className="text-3xl font-bold text-foreground">
        {formatPrice(displayPrice, currency, locale)}
      </p>

      <div className="space-y-2">
        <p className="text-sm font-medium text-foreground">{t("selectSize")}</p>
        <div className="flex flex-wrap gap-2">
          {activeVariants.map((variant) => (
            <button
              key={variant.id}
              type="button"
              onClick={() => setSelectedVariantId(variant.id)}
              className={`px-4 py-2 rounded-lg border text-sm font-medium transition-all ${
                selectedVariantId === variant.id
                  ? "border-brand-red bg-brand-red text-white"
                  : variant.stock === 0
                    ? "border-zinc-200 text-zinc-400 cursor-not-allowed opacity-60"
                    : "border-zinc-300 text-foreground hover:border-brand-red"
              }`}
              disabled={variant.stock === 0 && selectedVariantId !== variant.id}
            >
              {variant.label}
            </button>
          ))}
        </div>
      </div>

      <AddToCartButton
        productId={productId}
        variantId={selectedVariantId}
        outOfStock={variantOutOfStock}
        label={t("addToCart")}
        outOfStockLabel={t("outOfStock")}
        className="w-full sm:w-auto bg-brand-red hover:bg-brand-red/90 text-white"
      />
    </div>
  );
}
