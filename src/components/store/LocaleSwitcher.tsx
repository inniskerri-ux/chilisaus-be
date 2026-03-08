"use client";

import { useLocale } from "next-intl";
import { Link, usePathname } from "@/i18n/navigation";
import { ChevronDown } from "lucide-react";
import { useState, useRef, useEffect } from "react";

const LANGUAGES = [
  { code: "en", label: "ENG", flag: "🇬🇧" },
  { code: "nl", label: "NLD", flag: "🇳🇱" },
  { code: "fr", label: "FRA", flag: "🇫🇷" },
  { code: "de", label: "DEU", flag: "🇩🇪" },
  { code: "es", label: "ESP", flag: "🇪🇸" },
  { code: "it", label: "ITA", flag: "🇮🇹" },
  { code: "pt", label: "PRT", flag: "🇵🇹" },
  { code: "cs", label: "CZE", flag: "🇨🇿" },
  { code: "pl", label: "POL", flag: "🇵🇱" },
  { code: "da", label: "DNK", flag: "🇩🇰" },
  { code: "no", label: "NOR", flag: "🇳🇴" },
  { code: "sv", label: "SWE", flag: "🇸🇪" },
  { code: "uk", label: "UKR", flag: "🇺🇦" },
  { code: "ar", label: "ARA", flag: "🇦🇪" },
  { code: "bg", label: "BGR", flag: "🇧🇬" },
];

export default function LocaleSwitcher() {
  const locale = useLocale();
  const pathname = usePathname();
  const [isOpen, setIsOpen] = useState(false);
  const dropdownRef = useRef<HTMLDivElement>(null);

  const currentLang =
    LANGUAGES.find((lang) => lang.code === locale) || LANGUAGES[0];

  useEffect(() => {
    function handleClickOutside(event: MouseEvent) {
      if (
        dropdownRef.current &&
        !dropdownRef.current.contains(event.target as Node)
      ) {
        setIsOpen(false);
      }
    }
    document.addEventListener("mousedown", handleClickOutside);
    return () => document.removeEventListener("mousedown", handleClickOutside);
  }, []);

  return (
    <div className="relative" ref={dropdownRef}>
      <button
        onClick={() => setIsOpen(!isOpen)}
        className="flex items-center gap-2 rounded-full border border-zinc-100 bg-white px-3 py-1.5 text-xs font-bold transition-all hover:border-brand-red"
        aria-label="Select Language"
      >
        <span>{currentLang.flag}</span>
        <span className="hidden sm:inline">{currentLang.label}</span>
        <ChevronDown
          size={14}
          className={`transition-transform duration-200 ${isOpen ? "rotate-180" : ""}`}
        />
      </button>

      {isOpen && (
        <div className="absolute right-0 mt-2 w-48 max-h-96 overflow-y-auto rounded-2xl border border-zinc-100 bg-white p-2 shadow-2xl animate-in fade-in zoom-in-95 duration-200 z-[60]">
          <div className="grid grid-cols-1 gap-1">
            {LANGUAGES.map((lang) => (
              <Link
                key={lang.code}
                href={pathname}
                locale={lang.code}
                onClick={() => setIsOpen(false)}
                className={`flex items-center gap-3 rounded-xl px-4 py-2.5 text-sm font-medium transition-colors hover:bg-zinc-50 ${
                  locale === lang.code
                    ? "bg-zinc-50 text-brand-red font-bold"
                    : "text-zinc-600"
                }`}
              >
                <span className="text-lg leading-none">{lang.flag}</span>
                <span className="flex-grow">{lang.label}</span>
                {locale === lang.code && (
                  <div className="h-1.5 w-1.5 rounded-full bg-brand-red" />
                )}
              </Link>
            ))}
          </div>
        </div>
      )}
    </div>
  );
}
