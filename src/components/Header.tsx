import Link from "next/link";
import Image from "next/image";
import { Instagram, MessageCircle, Search } from "lucide-react";
import { getTranslations } from "next-intl/server";
import { createClient } from "@/lib/supabase/server";
import HeaderActions from "./HeaderActions";
import LocaleSwitcher from "./store/LocaleSwitcher";

export default async function Header({ locale }: { locale: string }) {
  const tAuth = await getTranslations("Auth");
  const tNav = await getTranslations("Nav");

  const supabase = await createClient();
  const { data: { user } } = await supabase.auth.getUser();
  let isShopOwner = false;
  if (user) {
    const { data: profile } = await supabase
      .from("profiles")
      .select("role")
      .eq("id", user.id)
      .single();
    isShopOwner = profile?.role === "shop_owner";
  }
  const initialSession = { isLoggedIn: !!user, isShopOwner };

  return (
    <header className="sticky top-0 z-50 border-b border-zinc-100 bg-white/80 backdrop-blur-md pt-[env(safe-area-inset-top)]">
      <div className="mx-auto max-w-7xl flex items-center justify-between px-6 py-4">
        {/* Logo */}
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

        {/* Desktop nav */}
        <nav className="hidden lg:flex items-center gap-8 text-sm font-bold uppercase tracking-widest">
          <Link href={`/${locale}/shop`} className="text-zinc-600 hover:text-brand-red transition-colors">
            {tNav("Shop")}
          </Link>
          <Link href={`/${locale}/events`} className="text-zinc-600 hover:text-brand-red transition-colors">
            {tNav("Events")}
          </Link>
          <Link href={`/${locale}/reviews`} className="text-zinc-600 hover:text-brand-red transition-colors">
            {tNav("Reviews")}
          </Link>
          <Link href={`/${locale}/scoville-scale`} className="text-zinc-600 hover:text-brand-red transition-colors">
            {tNav("Scoville")}
          </Link>
        </nav>

        {/* Desktop social icons */}
        <div className="hidden lg:flex items-center gap-4">
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
              <Instagram size={20} className="hover:opacity-80 transition-opacity" />
            </a>
            <a
              href={`https://wa.me/${process.env.NEXT_PUBLIC_WHATSAPP_NUMBER}`}
              target="_blank"
              rel="noopener noreferrer"
              className="p-2 transition-colors"
              style={{ color: "#25D366" }}
            >
              <MessageCircle size={20} className="hover:opacity-80 transition-opacity" />
            </a>
          </div>

          <LocaleSwitcher />

          <HeaderActions
            locale={locale}
            initialSession={initialSession}
            whatsappNumber={process.env.NEXT_PUBLIC_WHATSAPP_NUMBER}
            labels={{
              cart: tNav("Cart"),
              account: tNav("Account"),
              dashboard: tNav("Dashboard"),
              signIn: tAuth("SignIn"),
              signOut: tAuth("SignOut"),
              shop: tNav("Shop"),
              events: tNav("Events"),
              reviews: tNav("Reviews"),
              scoville: tNav("Scoville"),
            }}
          />
        </div>

        {/* Mobile — HeaderActions handles cart icon + hamburger */}
        <div className="flex lg:hidden">
          <HeaderActions
            locale={locale}
            initialSession={initialSession}
            whatsappNumber={process.env.NEXT_PUBLIC_WHATSAPP_NUMBER}
            labels={{
              cart: tNav("Cart"),
              account: tNav("Account"),
              dashboard: tNav("Dashboard"),
              signIn: tAuth("SignIn"),
              signOut: tAuth("SignOut"),
              shop: tNav("Shop"),
              events: tNav("Events"),
              reviews: tNav("Reviews"),
              scoville: tNav("Scoville"),
            }}
          />
        </div>
      </div>
    </header>
  );
}
