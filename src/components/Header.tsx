import Link from "next/link";
import Image from "next/image";
import { createClient } from "@/lib/supabase/server";
import { Instagram, MessageCircle, Search } from "lucide-react";
import { getTranslations } from "next-intl/server";
import LocaleSwitcher from "./store/LocaleSwitcher";
import CartButton from "./CartButton";

export default async function Header({ locale }: { locale: string }) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  const tAuth = await getTranslations("Auth");
  const tNav = await getTranslations("Nav");

  let isShopOwner = false;
  if (user) {
    const { data: profile } = await supabase
      .from("profiles")
      .select("role")
      .eq("id", user.id)
      .single();
    isShopOwner = profile?.role === "shop_owner";
  }

  return (
    <header className="sticky top-0 z-50 border-b border-zinc-100 bg-white/80 backdrop-blur-md">
      <div className="mx-auto max-w-7xl flex items-center justify-between px-6 py-4">
        <Link href={`/${locale}`} className="flex items-center">
          <Image
            src="/images/logo.png"
            alt="Chilisaus.be / eu Logo"
            width={123}
            height={48}
            quality={100}
            style={{ height: "48px", width: "auto" }}
            className="object-contain"
            priority
          />
        </Link>

        <nav className="hidden md:flex items-center gap-8 text-sm font-bold uppercase tracking-widest">
          <Link
            href={`/${locale}/shop`}
            className="text-zinc-600 hover:text-brand-red transition-colors"
          >
            {tNav("Shop")}
          </Link>
          <Link
            href={`/${locale}/scoville-scale`}
            className="text-zinc-600 hover:text-brand-red transition-colors"
          >
            {tNav("Scoville")}
          </Link>
        </nav>

        <div className="flex items-center gap-4">
          <div className="flex items-center gap-2 border-r border-zinc-100 pr-4 mr-2">
            <Link
              href={`/${locale}/shop`}
              className="p-2 text-zinc-400 hover:text-brand-red transition-colors"
              aria-label="Search"
            >
              <Search size={20} />
            </Link>
            <a
              href="https://www.instagram.com/chilisaus.be"
              target="_blank"
              rel="noopener noreferrer"
              className="p-2 transition-colors"
              style={{ color: "#E1306C" }}
            >
              <Instagram
                size={20}
                className="hover:opacity-80 transition-opacity"
              />
            </a>
            <a
              href={`https://wa.me/${process.env.NEXT_PUBLIC_WHATSAPP_NUMBER}`}
              target="_blank"
              rel="noopener noreferrer"
              className="p-2 transition-colors"
              style={{ color: "#25D366" }}
            >
              <MessageCircle
                size={20}
                className="hover:opacity-80 transition-opacity"
              />
            </a>
          </div>

          <nav className="flex items-center gap-4 text-sm font-bold uppercase tracking-wider">
            {user ? (
              <>
                <Link
                  href={isShopOwner ? `/${locale}/admin` : `/${locale}/account`}
                  className="text-zinc-900 hover:text-brand-red transition-colors"
                >
                  {isShopOwner ? tNav("Dashboard") : tNav("Account")}
                </Link>
                <form action={`/api/auth/sign-out`} method="POST">
                  <button
                    type="submit"
                    className="text-zinc-500 hover:text-brand-red transition-colors"
                  >
                    {tAuth("SignOut")}
                  </button>
                </form>
              </>
            ) : (
              <Link
                href={`/${locale}/auth/sign-in`}
                className="text-zinc-900 hover:text-brand-red transition-colors"
              >
                {tAuth("SignIn")}
              </Link>
            )}

            <LocaleSwitcher />

            <CartButton locale={locale} label={tNav("Cart")} />
          </nav>
        </div>
      </div>
    </header>
  );
}
