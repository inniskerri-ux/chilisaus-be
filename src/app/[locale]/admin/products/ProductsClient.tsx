"use client";

import { useState, useMemo } from "react";
import Link from "next/link";
import type { StoreProduct } from "@/components/store/types";

interface Category {
  id: number;
  name: string;
  slug: string;
}

interface ProductsClientProps {
  products: StoreProduct[];
  categories: Category[];
  locale: string;
  labels: {
    name: string;
    category: string;
    brand: string;
    heat: string;
    price: string;
    actions: string;
    edit: string;
    notSet: string;
    empty: string;
    newProduct: string;
    heading: string;
    subheading: string;
  };
}

export default function ProductsClient({
  products,
  categories,
  locale,
  labels,
}: ProductsClientProps) {
  const [search, setSearch] = useState("");
  const [selectedCategory, setSelectedCategory] = useState("");

  const filtered = useMemo(() => {
    const q = search.toLowerCase();
    return products.filter((p) => {
      const matchesSearch =
        !q ||
        p.name.toLowerCase().includes(q) ||
        p.brand?.name?.toLowerCase().includes(q);
      const matchesCategory =
        !selectedCategory ||
        p.category?.id?.toString() === selectedCategory ||
        p.category?.slug === selectedCategory;
      return matchesSearch && matchesCategory;
    });
  }, [products, search, selectedCategory]);

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h2 className="text-xl font-semibold text-foreground">
            {labels.heading}
          </h2>
          <p className="text-sm text-text-muted">{labels.subheading}</p>
        </div>
        <Link
          href={`/${locale}/admin/products/new`}
          className="inline-flex items-center rounded-full bg-brand-red px-4 py-2 text-sm font-semibold text-white"
        >
          {labels.newProduct}
        </Link>
      </div>

      {/* Search + filter bar */}
      <div className="flex flex-col gap-3 sm:flex-row">
        <input
          type="search"
          placeholder="Search by name or brand…"
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          className="flex-1 rounded-lg border border-border bg-white px-3 py-2 text-sm text-foreground focus:outline-none focus:ring-2 focus:ring-brand-red"
        />
        <select
          value={selectedCategory}
          onChange={(e) => setSelectedCategory(e.target.value)}
          className="rounded-lg border border-border bg-white px-3 py-2 text-sm text-foreground focus:outline-none focus:ring-2 focus:ring-brand-red sm:w-56"
        >
          <option value="">All Categories</option>
          {categories.map((cat) => (
            <option key={cat.id} value={cat.id.toString()}>
              {cat.name}
            </option>
          ))}
        </select>
        {(search || selectedCategory) && (
          <button
            onClick={() => { setSearch(""); setSelectedCategory(""); }}
            className="text-xs font-semibold text-brand-red hover:underline whitespace-nowrap"
          >
            Clear
          </button>
        )}
      </div>

      <p className="text-xs text-text-muted">
        Showing {filtered.length} of {products.length} products
      </p>

      <div className="overflow-x-auto rounded-2xl border border-border bg-white shadow-sm">
        <table className="min-w-full divide-y divide-border">
          <thead className="bg-roh-dust-white text-left text-sm font-semibold text-text-secondary">
            <tr>
              <th className="px-4 py-3">{labels.name}</th>
              <th className="px-4 py-3">{labels.category}</th>
              <th className="px-4 py-3">{labels.brand}</th>
              <th className="px-4 py-3">{labels.heat}</th>
              <th className="px-4 py-3">{labels.price}</th>
              <th className="px-4 py-3 text-right">{labels.actions}</th>
            </tr>
          </thead>
          <tbody className="divide-y divide-border text-sm">
            {filtered.map((product) => (
              <tr key={product.id}>
                <td className="px-4 py-3 font-medium text-foreground">
                  {product.name}
                </td>
                <td className="px-4 py-3 text-text-muted">
                  {product.category?.name || labels.notSet}
                </td>
                <td className="px-4 py-3 text-text-muted">
                  {product.brand?.name || "—"}
                </td>
                <td className="px-4 py-3">{product.heatLevel || "—"}</td>
                <td className="px-4 py-3 font-semibold">
                  {(product.price_cents / 100).toLocaleString(locale, {
                    style: "currency",
                    currency: product.currency,
                  })}
                </td>
                <td className="px-4 py-3 text-right">
                  <Link
                    href={`/${locale}/admin/products/${product.id}`}
                    className="text-sm font-semibold text-brand-red hover:underline"
                  >
                    {labels.edit}
                  </Link>
                </td>
              </tr>
            ))}
            {filtered.length === 0 && (
              <tr>
                <td colSpan={6} className="px-4 py-6 text-center text-text-muted">
                  {products.length === 0 ? labels.empty : "No products match your search."}
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
}
