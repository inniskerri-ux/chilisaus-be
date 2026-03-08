"use client";

import { useState, useEffect } from "react";
import { Star, CheckCircle2, User } from "lucide-react";
import { supabase } from "@/lib/supabase/client";
import { useTranslations } from "next-intl";

interface Review {
  id: string;
  rating: number;
  title: string | null;
  content: string;
  customer_name: string;
  is_verified: boolean;
  created_at: string;
}

interface ProductReviewsProps {
  productId: string;
  locale: string;
}

export default function ProductReviews({
  productId,
  locale,
}: ProductReviewsProps) {
  const t = useTranslations("ProductPage");
  const [reviews, setReviews] = useState<Review[]>([]);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    async function fetchReviews() {
      const { data, error } = await supabase
        .from("reviews")
        .select("*")
        .eq("product_id", productId)
        .order("created_at", { ascending: false });

      if (data) {
        setReviews(data);
      }
      setIsLoading(false);
    }

    fetchReviews();
  }, [productId]);

  const averageRating =
    reviews.length > 0
      ? reviews.reduce((acc, rev) => acc + rev.rating, 0) / reviews.length
      : 0;

  if (isLoading) {
    return (
      <div className="animate-pulse h-40 bg-zinc-50 rounded-2xl border border-zinc-100 mt-12" />
    );
  }

  return (
    <section className="mt-16 border-t border-zinc-100 pt-12">
      <div className="flex flex-col md:flex-row md:items-center justify-between gap-6 mb-10">
        <div>
          <h2 className="text-2xl font-bold text-foreground mb-2">
            {t("reviewsTitle") || "Customer Reviews"}
          </h2>
          <div className="flex items-center gap-4">
            <div className="flex items-center text-brand-red">
              {[...Array(5)].map((_, i) => (
                <Star
                  key={i}
                  size={20}
                  fill={i < Math.round(averageRating) ? "currentColor" : "none"}
                  className={
                    i < Math.round(averageRating) ? "" : "text-zinc-200"
                  }
                />
              ))}
            </div>
            <p className="text-sm font-medium text-zinc-600">
              {reviews.length}{" "}
              {reviews.length === 1
                ? t("reviewCount") || "review"
                : t("reviewsCount") || "reviews"}
            </p>
          </div>
        </div>

        <button
          className="inline-flex items-center justify-center rounded-xl px-6 py-3 text-sm font-bold uppercase tracking-widest bg-brand-black text-white hover:bg-brand-red transition-all"
          onClick={() => alert("Review form coming soon!")}
        >
          {t("writeReview") || "Write a Review"}
        </button>
      </div>

      {reviews.length === 0 ? (
        <div className="text-center py-12 bg-zinc-50 rounded-2xl border border-dashed border-zinc-200">
          <p className="text-zinc-500 italic">
            {t("noReviews") ||
              "No reviews yet. Be the first to share your experience!"}
          </p>
        </div>
      ) : (
        <div className="grid gap-6">
          {reviews.map((review) => (
            <div
              key={review.id}
              className="p-6 bg-white rounded-2xl border border-zinc-100 shadow-sm hover:shadow-md transition-shadow"
            >
              <div className="flex items-start justify-between mb-4">
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 rounded-full bg-zinc-100 flex items-center justify-center text-zinc-400">
                    <User size={20} />
                  </div>
                  <div>
                    <div className="flex items-center gap-2">
                      <span className="font-bold text-zinc-900">
                        {review.customer_name}
                      </span>
                      {review.is_verified && (
                        <span className="flex items-center gap-1 text-[10px] font-bold uppercase tracking-wider text-green-600 bg-green-50 px-2 py-0.5 rounded-full">
                          <CheckCircle2 size={10} />
                          {t("verifiedPurchase") || "Verified"}
                        </span>
                      )}
                    </div>
                    <div className="flex text-brand-red mt-0.5">
                      {[...Array(5)].map((_, i) => (
                        <Star
                          key={i}
                          size={14}
                          fill={i < review.rating ? "currentColor" : "none"}
                          className={i < review.rating ? "" : "text-zinc-200"}
                        />
                      ))}
                    </div>
                  </div>
                </div>
                <time className="text-xs text-zinc-400">
                  {new Date(review.created_at).toLocaleDateString(locale, {
                    year: "numeric",
                    month: "long",
                    day: "numeric",
                  })}
                </time>
              </div>

              {review.title && (
                <h3 className="font-bold text-zinc-900 mb-2">{review.title}</h3>
              )}
              <p className="text-zinc-600 text-sm leading-relaxed">
                {review.content}
              </p>
            </div>
          ))}
        </div>
      )}
    </section>
  );
}
