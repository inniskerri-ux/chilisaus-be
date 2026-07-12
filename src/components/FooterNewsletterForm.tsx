"use client";

import { useState } from "react";
import { useTranslations } from "next-intl";
import { Loader2 } from "lucide-react";
import { subscribeToNewsletter } from "@/app/[locale]/actions/newsletter";

export default function FooterNewsletterForm({ locale }: { locale: string }) {
  const t = useTranslations("Newsletter");
  const [email, setEmail] = useState("");
  const [isPending, setIsPending] = useState(false);
  const [isSuccess, setIsSuccess] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsPending(true);
    setError(null);

    try {
      const result = await subscribeToNewsletter(email, locale);
      if (result.success) {
        setIsSuccess(true);
        document.cookie = `newsletter_signed_up=true; path=/; max-age=${60 * 60 * 24 * 365}; SameSite=Lax`;
        setEmail("");
      } else {
        setError(result.error || "Failed to subscribe");
      }
    } catch {
      setError("Something went wrong. Please try again.");
    } finally {
      setIsPending(false);
    }
  };

  if (isSuccess) {
    return (
      <p className="mt-4 text-sm text-zinc-600">{t("successDescription")}</p>
    );
  }

  return (
    <form onSubmit={handleSubmit} className="mt-4 flex gap-2">
      <input
        type="email"
        placeholder={t("placeholder")}
        value={email}
        onChange={(e) => setEmail(e.target.value)}
        required
        disabled={isPending}
        className="min-w-0 flex-1 rounded-lg border border-zinc-200 bg-white px-3 py-2 text-sm text-zinc-900 placeholder:text-zinc-400 focus:outline-none focus:ring-2 focus:ring-brand-red"
      />
      <button
        type="submit"
        disabled={isPending}
        className="shrink-0 rounded-lg bg-brand-red px-4 py-2 text-sm font-bold text-white transition-colors hover:bg-red-700 disabled:opacity-60"
      >
        {isPending ? (
          <Loader2 className="h-4 w-4 animate-spin" />
        ) : (
          t("cta")
        )}
      </button>
      {error && <p className="text-xs text-red-500">{error}</p>}
    </form>
  );
}
