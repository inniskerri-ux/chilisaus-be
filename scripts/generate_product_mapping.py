#!/usr/bin/env python3
"""
Maps WooCommerce product IDs to Supabase product UUIDs by name matching,
then generates:
  supabase/migrations/0121_seed_legacy_order_items.sql
  supabase/migrations/0122_seed_reviews.sql

Run from project root:
  python3 scripts/generate_product_mapping.py
"""

import csv
import json
import urllib.request
from difflib import SequenceMatcher
from pathlib import Path

DOCS       = Path("docs")
MIGRATIONS = Path("supabase/migrations")

ORDERS_CSV   = DOCS / "orders.csv"
PRODUCTS_CSV = DOCS / "Products-Export-2026-March-20-1354.csv"
REVIEWS_CSV  = DOCS / "chilisaus.be-66efa221-9b79-40f0-927e-bfd8651c815c.csv"

SUPABASE_URL  = "https://hkflfhbzfsentkkwzqnd.supabase.co"
SUPABASE_ANON = (
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9"
    ".eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhrZmxmaGJ6ZnNlbnRra3d6cW5kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzE5MjEwODksImV4cCI6MjA4NzQ5NzA4OX0"
    ".Yj81ysR_luvT4oM6xR0KtWPIdStMpsjm2HcTr45LZus"
)

MATCH_THRESHOLD = 0.7  # minimum similarity score to auto-match


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------
def esc(val: str) -> str:
    v = val.strip()
    if not v:
        return "NULL"
    return "'" + v.replace("'", "''") + "'"


def to_cents(val: str) -> int:
    v = val.strip()
    if not v:
        return 0
    try:
        return round(float(v) * 100)
    except ValueError:
        return 0


def normalise(name: str) -> str:
    """Lowercase, strip HTML entities and extra whitespace for matching."""
    import re
    n = name.lower()
    n = n.replace("&amp;", "&").replace("&nbsp;", " ")
    n = re.sub(r"\s+", " ", n).strip()
    return n


def similarity(a: str, b: str) -> float:
    return SequenceMatcher(None, normalise(a), normalise(b)).ratio()


# ---------------------------------------------------------------------------
# 1. Fetch Supabase products
# ---------------------------------------------------------------------------
def fetch_supabase_products():
    url = f"{SUPABASE_URL}/rest/v1/products?select=id,name&limit=200"
    req = urllib.request.Request(url, headers={
        "apikey": SUPABASE_ANON,
        "Authorization": f"Bearer {SUPABASE_ANON}",
    })
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())  # [{id, name}, ...]


# ---------------------------------------------------------------------------
# 2. Build WC product ID → Supabase UUID mapping
# ---------------------------------------------------------------------------
def build_mapping(wc_products, sb_products):
    mapping = {}      # wc_id (str) -> {uuid, wc_name, sb_name, score}
    unmatched = []

    for wc in wc_products:
        wc_id   = wc["id"].strip()
        wc_name = wc["Title"].strip()

        best_score = 0
        best_sb    = None
        for sb in sb_products:
            s = similarity(wc_name, sb["name"])
            if s > best_score:
                best_score = s
                best_sb    = sb

        if best_sb and best_score >= MATCH_THRESHOLD:
            mapping[wc_id] = {
                "uuid":    best_sb["id"],
                "wc_name": wc_name,
                "sb_name": best_sb["name"],
                "score":   round(best_score, 3),
            }
        else:
            unmatched.append({"wc_id": wc_id, "wc_name": wc_name, "best_score": round(best_score, 3)})

    return mapping, unmatched


# ---------------------------------------------------------------------------
# 3. Generate legacy_order_items seed
# ---------------------------------------------------------------------------
def generate_order_items(mapping):
    lines = [
        "-- Seeded from WooCommerce orders export with line items",
        "-- product_id is NULL where WC product couldn't be matched to a Supabase product",
        "",
        "insert into public.legacy_order_items (",
        "  legacy_order_id, wc_product_id, product_id, product_name, quantity, price_cents",
        ") values",
    ]

    skip_statuses = {"failed", "pending"}
    values = []
    skipped_orders = 0

    with open(ORDERS_CSV, encoding="utf-8-sig") as f:
        rows = list(csv.DictReader(f))

    for r in rows:
        if r["status"].strip() in skip_statuses:
            skipped_orders += 1
            continue

        order_id = r["order_id"].strip()

        for i in range(1, 15):
            name = r.get(f"Product Item {i} Name", "").strip()
            if not name:
                break

            wc_pid  = r.get(f"Product Item {i} id", "").strip()
            qty     = r.get(f"Product Item {i} Quantity", "1").strip() or "1"
            total   = r.get(f"Product Item {i} Total", "0").strip()

            match   = mapping.get(wc_pid)
            sb_uuid = f"'{match['uuid']}'" if match else "NULL"
            wc_pid_sql = wc_pid if wc_pid else "NULL"

            values.append(
                f"  ((select id from public.legacy_orders where wc_order_id = {order_id}),\n"
                f"   {wc_pid_sql}, {sb_uuid}, {esc(name)}, {qty}, {to_cents(total)})"
            )

    lines.append(",\n".join(values) + ";")
    lines.append("")
    lines.append(f"-- {len(values)} order items inserted  ({skipped_orders} failed/pending orders skipped)")

    out = MIGRATIONS / "0121_seed_legacy_order_items.sql"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"Written {out}  ({len(values)} items)")


# ---------------------------------------------------------------------------
# 4. Generate reviews seed
# ---------------------------------------------------------------------------
def generate_reviews(mapping):
    lines = [
        "-- Seeded from WooCommerce reviews export",
        "-- product_id = -1 means store-level review (product_id set to NULL)",
        "",
        "insert into public.reviews (",
        "  rating, content, customer_name, product_id, is_verified, created_at",
        ") values",
    ]

    values = []
    skipped = 0

    with open(REVIEWS_CSV, encoding="utf-8-sig") as f:
        rows = list(csv.DictReader(f))

    for r in rows:
        content = r["review_content"].strip()
        if not content:
            skipped += 1
            continue  # skip empty reviews

        wc_pid   = r["product_id"].strip()
        score    = r["review_score"].strip() or "5"
        name     = r["display_name"].strip() or "Anonymous"
        date     = r["date"].strip()

        if wc_pid == "-1":
            # store-level review — no product
            sb_uuid = "NULL"
        else:
            match   = mapping.get(wc_pid)
            sb_uuid = f"'{match['uuid']}'" if match else "NULL"

        date_sql = f"'{date}'" if date else "now()"

        values.append(
            f"  ({score}, {esc(content)}, {esc(name)}, {sb_uuid}, true, {date_sql})"
        )

    lines.append(",\n".join(values) + ";")
    lines.append("")
    lines.append(f"-- {len(values)} reviews inserted  ({skipped} empty reviews skipped)")

    out = MIGRATIONS / "0122_seed_reviews.sql"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"Written {out}  ({len(values)} reviews)")


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
if __name__ == "__main__":
    print("Fetching Supabase products...")
    sb_products = fetch_supabase_products()
    print(f"  {len(sb_products)} products found")

    print("Loading WC products export...")
    with open(PRODUCTS_CSV, encoding="utf-8-sig") as f:
        wc_products = list(csv.DictReader(f))
    print(f"  {len(wc_products)} WC products")

    print("Matching products by name...")
    mapping, unmatched = build_mapping(wc_products, sb_products)
    print(f"  Matched:   {len(mapping)}")
    print(f"  Unmatched: {len(unmatched)}")

    if unmatched:
        print("\nUnmatched WC products (will have NULL product_id):")
        for u in unmatched:
            print(f"  WC {u['wc_id']:>5}  score={u['best_score']}  {u['wc_name'][:60]}")

    print("\nLow confidence matches (score < 0.85):")
    for wc_id, m in sorted(mapping.items(), key=lambda x: x[1]["score"]):
        if m["score"] < 0.85:
            print(f"  WC {wc_id:>5}  score={m['score']}  '{m['wc_name'][:40]}' → '{m['sb_name'][:40]}'")

    print()
    generate_order_items(mapping)
    generate_reviews(mapping)
    print("Done.")
