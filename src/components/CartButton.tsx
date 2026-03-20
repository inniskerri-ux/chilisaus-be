"use client";

import { usePathname } from "next/navigation";
import Link from "next/link";

export default function CartButton({
  locale,
  label,
}: {
  locale: string;
  label: string;
}) {
  const pathname = usePathname();
  if (pathname.includes("/admin")) return null;
  return (
    <Link
      href={`/${locale}/cart`}
      className="rounded-full bg-brand-black px-5 py-2 text-white hover:bg-brand-red transition-all"
    >
      {label}
    </Link>
  );
}
