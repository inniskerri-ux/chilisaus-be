"use client";

import { useState, useEffect } from "react";
import { supabase } from "@/lib/supabase/client";
import { Card, CardContent } from "@/components/ui/card";
import { formatPrice } from "@/lib/format";
import { History, Loader2 } from "lucide-react";

interface Stats {
  completed_orders: number;
  total_revenue: number;
  avg_order_value: number;
  unique_customers: number;
}

interface LegacyStatsPanelProps {
  years: number[];
  reviewCount: number;
}

export default function LegacyStatsPanel({ years, reviewCount }: LegacyStatsPanelProps) {
  const [selectedYear, setSelectedYear] = useState<number | null>(null);
  const [stats, setStats] = useState<Stats | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function fetchStats() {
      setLoading(true);
      const { data } = await supabase.rpc("get_legacy_order_stats", {
        p_year: selectedYear,
      });
      const row = Array.isArray(data) ? data[0] : null;
      if (row) {
        setStats({
          completed_orders: Number(row.completed_orders),
          total_revenue: Number(row.total_revenue),
          avg_order_value: Number(row.avg_order_value),
          unique_customers: Number(row.unique_customers),
        });
      }
      setLoading(false);
    }

    fetchStats();
  }, [selectedYear]);

  const yearLabel = selectedYear ? String(selectedYear) : "All Time";

  return (
    <section className="space-y-4">
      <h2 className="text-lg font-bold flex items-center gap-2">
        <History className="h-5 w-5 text-purple-600" />
        Legacy History
      </h2>

      {/* Year selector */}
      <div className="flex gap-2 overflow-x-auto pb-1 scrollbar-none">
        <button
          onClick={() => setSelectedYear(null)}
          className={`px-3 py-1 rounded-full text-xs font-bold transition-colors whitespace-nowrap ${
            selectedYear === null
              ? "bg-zinc-900 text-white"
              : "bg-zinc-100 text-zinc-600 hover:bg-zinc-200"
          }`}
        >
          All Time
        </button>
        {years.map((year) => (
          <button
            key={year}
            onClick={() => setSelectedYear(year)}
            className={`px-3 py-1 rounded-full text-xs font-bold transition-colors whitespace-nowrap ${
              selectedYear === year
                ? "bg-zinc-900 text-white"
                : "bg-zinc-100 text-zinc-600 hover:bg-zinc-200"
            }`}
          >
            {year}
          </button>
        ))}
      </div>

      <Card>
        <CardContent className="pt-6">
          {loading ? (
            <div className="flex justify-center py-8">
              <Loader2 className="h-6 w-6 animate-spin text-zinc-400" />
            </div>
          ) : (
            <div className="space-y-5">
              {[
                { label: "Completed Orders", value: stats?.completed_orders.toLocaleString() ?? "—" },
                { label: "Revenue", value: stats ? formatPrice(stats.total_revenue) : "—" },
                { label: "Avg Order Value", value: stats?.avg_order_value ? formatPrice(stats.avg_order_value) : "—" },
                { label: "Unique Customers", value: stats?.unique_customers.toLocaleString() ?? "—" },
                ...(!selectedYear
                  ? [{ label: "Verified Reviews", value: reviewCount.toLocaleString() }]
                  : []),
              ].map(({ label, value }) => (
                <div key={label} className="flex items-center justify-between">
                  <span className="text-sm text-zinc-500">{label}</span>
                  <span className="font-bold text-sm text-zinc-900">{value}</span>
                </div>
              ))}
            </div>
          )}
        </CardContent>
      </Card>
    </section>
  );
}
