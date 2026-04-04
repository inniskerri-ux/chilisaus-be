"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import CartButton from "./CartButton";
import MobileMenu from "./MobileMenu";

interface SessionData {
  isLoggedIn: boolean;
  isShopOwner: boolean;
  cartCount: number;
}

interface HeaderActionsProps {
  locale: string;
  whatsappNumber?: string;
  labels: {
    cart: string;
    account: string;
    dashboard: string;
    signIn: string;
    signOut: string;
    shop: string;
    events: string;
    reviews: string;
    scoville: string;
  };
}

export default function HeaderActions({
  locale,
  whatsappNumber,
  labels,
}: HeaderActionsProps) {
  const [session, setSession] = useState<SessionData>({
    isLoggedIn: false,
    isShopOwner: false,
    cartCount: 0,
  });

  useEffect(() => {
    fetch("/api/session")
      .then((r) => r.json())
      .then(setSession)
      .catch(() => {});
  }, []);

  const { isLoggedIn, isShopOwner, cartCount } = session;

  return (
    <>
      {/* Desktop auth + cart */}
      <nav className="hidden lg:flex items-center gap-4 text-sm font-bold uppercase tracking-wider">
        {isLoggedIn ? (
          <>
            <Link
              href={isShopOwner ? `/${locale}/admin` : `/${locale}/account`}
              className="text-zinc-900 hover:text-brand-red transition-colors"
            >
              {isShopOwner ? labels.dashboard : labels.account}
            </Link>
            <form action="/api/auth/sign-out" method="POST">
              <button
                type="submit"
                className="text-zinc-500 hover:text-brand-red transition-colors"
              >
                {labels.signOut}
              </button>
            </form>
          </>
        ) : (
          <Link
            href={`/${locale}/auth/sign-in`}
            className="text-zinc-900 hover:text-brand-red transition-colors"
          >
            {labels.signIn}
          </Link>
        )}

        <CartButton
          locale={locale}
          label={labels.cart}
          cartCount={cartCount}
        />
      </nav>

      {/* Mobile cart + menu */}
      <div className="flex lg:hidden items-center gap-1">
        <CartButton
          locale={locale}
          label={labels.cart}
          cartCount={cartCount}
          iconOnly
        />
        <MobileMenu
          locale={locale}
          isLoggedIn={isLoggedIn}
          isShopOwner={isShopOwner}
          whatsappNumber={whatsappNumber}
          labels={labels}
        />
      </div>
    </>
  );
}
