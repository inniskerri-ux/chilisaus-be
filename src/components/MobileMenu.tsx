"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { Menu, X, Instagram, MessageCircle } from "lucide-react";
import LocaleSwitcher from "./store/LocaleSwitcher";

interface MobileMenuProps {
  locale: string;
  isLoggedIn: boolean;
  isShopOwner: boolean;
  whatsappNumber?: string;
  labels: {
    shop: string;
    events: string;
    reviews: string;
    scoville: string;
    account: string;
    dashboard: string;
    signIn: string;
    signOut: string;
  };
}

export default function MobileMenu({
  locale,
  isLoggedIn,
  isShopOwner,
  whatsappNumber,
  labels,
}: MobileMenuProps) {
  const [isOpen, setIsOpen] = useState(false);
  const pathname = usePathname();

  // Close menu on route change
  useEffect(() => {
    setIsOpen(false);
  }, [pathname]);

  // Prevent body scroll when open
  useEffect(() => {
    if (isOpen) {
      document.body.style.overflow = "hidden";
    } else {
      document.body.style.overflow = "";
    }
    return () => { document.body.style.overflow = ""; };
  }, [isOpen]);

  const navLinks = [
    { href: `/${locale}/shop`, label: labels.shop },
    { href: `/${locale}/events`, label: labels.events },
    { href: `/${locale}/reviews`, label: labels.reviews },
    { href: `/${locale}/scoville-scale`, label: labels.scoville },
  ];

  return (
    <>
      {/* Hamburger button */}
      <button
        onClick={() => setIsOpen(true)}
        className="p-2 text-zinc-800 hover:text-brand-red transition-colors"
        aria-label="Open menu"
      >
        <Menu size={24} />
      </button>

      {/* Overlay */}
      {isOpen && (
        <div
          className="fixed inset-0 bg-black/40 z-40"
          onClick={() => setIsOpen(false)}
        />
      )}

      {/* Drawer — slides in from the right */}
      <div
        className={`fixed top-0 right-0 h-screen w-4/5 max-w-sm bg-white z-50 shadow-2xl flex flex-col transition-transform duration-300 ease-in-out ${
          isOpen ? "translate-x-0" : "translate-x-full"
        }`}
      >
        {/* Drawer header */}
        <div className="flex items-center justify-between px-6 py-5 border-b border-zinc-100">
          <span className="text-sm font-bold uppercase tracking-widest text-zinc-400">
            Menu
          </span>
          <button
            onClick={() => setIsOpen(false)}
            className="p-2 text-zinc-500 hover:text-brand-red transition-colors"
            aria-label="Close menu"
          >
            <X size={22} />
          </button>
        </div>

        {/* Nav links */}
        <nav className="flex-1 overflow-y-auto px-6 py-6 flex flex-col gap-1">
          {navLinks.map((link) => (
            <Link
              key={link.href}
              href={link.href}
              onClick={() => setIsOpen(false)}
              className={`py-3 text-lg font-bold uppercase tracking-widest border-b border-zinc-50 transition-colors ${
                pathname.startsWith(link.href)
                  ? "text-brand-red"
                  : "text-zinc-800 hover:text-brand-red"
              }`}
            >
              {link.label}
            </Link>
          ))}

          {/* Auth links */}
          <div className="mt-4 pt-4 border-t border-zinc-100 flex flex-col gap-1">
            {isLoggedIn ? (
              <>
                <Link
                  href={isShopOwner ? `/${locale}/admin` : `/${locale}/account`}
                  onClick={() => setIsOpen(false)}
                  className="py-3 text-base font-semibold text-zinc-700 hover:text-brand-red transition-colors"
                >
                  {isShopOwner ? labels.dashboard : labels.account}
                </Link>
                <form action="/api/auth/sign-out" method="POST">
                  <button
                    type="submit"
                    className="py-3 text-base font-semibold text-zinc-400 hover:text-brand-red transition-colors"
                  >
                    {labels.signOut}
                  </button>
                </form>
              </>
            ) : (
              <Link
                href={`/${locale}/auth/sign-in`}
                onClick={() => setIsOpen(false)}
                className="py-3 text-base font-semibold text-zinc-700 hover:text-brand-red transition-colors"
              >
                {labels.signIn}
              </Link>
            )}
          </div>
        </nav>

        {/* Drawer footer: locale switcher + socials */}
        <div className="px-6 py-5 border-t border-zinc-100 flex items-center justify-between">
          <LocaleSwitcher />
          <div className="flex items-center gap-2">
            <a
              href="https://www.instagram.com/chilisaus.be"
              target="_blank"
              rel="noopener noreferrer"
              className="p-2 transition-colors"
              style={{ color: "#E1306C" }}
              aria-label="Instagram"
            >
              <Instagram size={20} className="hover:opacity-80 transition-opacity" />
            </a>
            {whatsappNumber && (
              <a
                href={`https://wa.me/${whatsappNumber}`}
                target="_blank"
                rel="noopener noreferrer"
                className="p-2 transition-colors"
                style={{ color: "#25D366" }}
                aria-label="WhatsApp"
              >
                <MessageCircle size={20} className="hover:opacity-80 transition-opacity" />
              </a>
            )}
          </div>
        </div>
      </div>
    </>
  );
}
