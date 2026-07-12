import Link from "next/link";
import { cookies } from "next/headers";
import { getTranslations } from "next-intl/server";
import { createClient } from "@/lib/supabase/server";
import { isEmailSubscribed } from "@/lib/marketing/mailing-list";
import FooterNewsletterForm from "@/components/FooterNewsletterForm";

async function getInitialSubscribed(email: string | null): Promise<boolean> {
  if (email) {
    return isEmailSubscribed(email);
  }

  const cookieStore = await cookies();
  return cookieStore.get("newsletter_signed_up")?.value === "true";
}

export default async function Footer({ locale }: { locale: string }) {
  const t = await getTranslations({ locale, namespace: "Nav" });
  const currentYear = new Date().getFullYear();

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  const initialSubscribed = await getInitialSubscribed(user?.email ?? null);
  const accountHref = user ? `/${locale}/account` : `/${locale}/auth/sign-in`;

  return (
    <footer className="border-t border-zinc-100 bg-zinc-50 py-12">
      <div className="mx-auto max-w-7xl px-6 lg:px-8">
        <div className="mb-12 flex flex-col gap-6 border-b border-zinc-200 pb-12 lg:flex-row lg:items-center lg:justify-between">
          <div>
            <h3 className="text-lg font-bold text-zinc-900">
              Join Our Mailing List
            </h3>
            <p className="mt-1 text-sm text-zinc-500 max-w-sm">
              Get the latest hot sauce drops, restocks, and updates straight
              to your inbox.
            </p>
          </div>
          <FooterNewsletterForm locale={locale} initialSubscribed={initialSubscribed} />
        </div>

        <div className="grid grid-cols-1 gap-12 sm:grid-cols-2 lg:grid-cols-4">
          <div className="flex flex-col gap-4">
            <Link
              href={`/${locale}`}
              className="flex items-center gap-2 font-black text-xl tracking-tighter uppercase"
            >
              <span className="text-brand-red">🌶️</span>
              <span>Chilisaus.be / eu</span>
            </Link>
            <p className="text-sm text-zinc-500 max-w-xs">
              Hand-picked hot sauces from around the world. Personal service,
              shipping across Europe.
            </p>
          </div>

          <div>
            <h3 className="text-sm font-bold uppercase tracking-widest text-zinc-900">
              Shop
            </h3>
            <ul className="mt-4 space-y-2 text-sm text-zinc-600">
              <li>
                <Link
                  href={`/${locale}/shop`}
                  className="hover:text-brand-red transition-colors"
                >
                  All Sauces
                </Link>
              </li>
              <li>
                <Link
                  href={`/${locale}/shop?category=gift-boxes-sets`}
                  className="hover:text-brand-red transition-colors"
                >
                  Gift Boxes & Sets
                </Link>
              </li>
              <li>
                <Link
                  href={`/${locale}/shop?category=superhot`}
                  className="hover:text-brand-red transition-colors"
                >
                  Superhot
                </Link>
              </li>
            </ul>
          </div>

          <div>
            <h3 className="text-sm font-bold uppercase tracking-widest text-zinc-900">
              Information
            </h3>
            <ul className="mt-4 space-y-2 text-sm text-zinc-600">
              <li>
                <Link
                  href={`/${locale}/shipping-returns`}
                  className="hover:text-brand-red transition-colors"
                >
                  Shipping & Returns
                </Link>
              </li>
              <li>
                <Link
                  href={`/${locale}/terms`}
                  className="hover:text-brand-red transition-colors"
                >
                  Terms of Service
                </Link>
              </li>
              <li>
                <Link
                  href={`/${locale}/privacy`}
                  className="hover:text-brand-red transition-colors"
                >
                  Privacy Policy
                </Link>
              </li>
              <li>
                <Link
                  href={`/${locale}/legal`}
                  className="hover:text-brand-red transition-colors"
                >
                  Legal Notice
                </Link>
              </li>
            </ul>
          </div>

          <div>
            <h3 className="text-sm font-bold uppercase tracking-widest text-zinc-900">
              Support
            </h3>
            <ul className="mt-4 space-y-2 text-sm text-zinc-600">
              <li>
                <a
                  href="mailto:sales@chilisaus.be"
                  className="hover:text-brand-red transition-colors"
                >
                  sales@chilisaus.be
                </a>
              </li>
              <li>
                <a
                  href={`https://wa.me/${process.env.NEXT_PUBLIC_WHATSAPP_NUMBER}`}
                  className="hover:text-brand-red transition-colors"
                >
                  WhatsApp Support
                </a>
              </li>
              <li>
                <a
                  href="https://www.instagram.com/chilisaus.be"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="hover:text-brand-red transition-colors"
                >
                  Instagram
                </a>
              </li>
              <li>
                <Link
                  href={accountHref}
                  className="hover:text-brand-red transition-colors"
                >
                  My Account
                </Link>
              </li>
            </ul>
          </div>
        </div>

        <div className="mt-12 border-t border-zinc-200 pt-8 flex flex-col sm:flex-row justify-between items-center gap-4">
          <p className="text-xs text-zinc-400">
            © {currentYear} Chilisaus. All rights reserved.
          </p>
          <div className="flex gap-4 grayscale opacity-50">
            {/* Payment icons placeholder */}
            <span className="text-xs font-bold uppercase tracking-tighter">
              Stripe
            </span>
            <span className="text-xs font-bold uppercase tracking-tighter">
              Bancontact
            </span>
            <span className="text-xs font-bold uppercase tracking-tighter">
              Ideal
            </span>
          </div>
        </div>
      </div>
    </footer>
  );
}
