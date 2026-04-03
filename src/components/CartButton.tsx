"use client";

import { usePathname } from "next/navigation";
import Link from "next/link";

export default function CartButton({
  locale,
  label,
  cartCount,
}: {
  locale: string;
  label: string;
  cartCount?: number;
}) {
  const pathname = usePathname();
  if (pathname.includes("/admin")) return null;
  return (
    <Link
      href={`/${locale}/cart`}
      className="relative rounded-full bg-brand-black px-5 py-2 text-white hover:bg-brand-red transition-all"
    >
      {label}
      {cartCount != null && cartCount > 0 && (
        <span className="absolute -top-1.5 -right-1.5 flex h-5 w-5 items-center justify-center rounded-full bg-brand-red text-[10px] font-bold text-white leading-none ring-2 ring-white">
          {cartCount > 99 ? "99+" : cartCount}
        </span>
      )}
    </Link>
  );
}
