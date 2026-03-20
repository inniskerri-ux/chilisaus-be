#!/usr/bin/env python3
"""
Generates SQL migration files for legacy WooCommerce customers and orders.
Run from the project root:
  python3 scripts/generate_legacy_data.py
Outputs:
  supabase/migrations/0119_seed_legacy_customers.sql
  supabase/migrations/0120_seed_legacy_orders.sql
"""

import csv
import re
from pathlib import Path

DOCS = Path("docs")
MIGRATIONS = Path("supabase/migrations")

USERS_CSV  = DOCS / "user-export-2026-03-19-14-57-21.csv"
ORDERS_CSV = DOCS / "Orders-Export-2026-March-19-1442.csv"


def esc(val: str) -> str:
    """Escape a string value for SQL — returns NULL for empty strings."""
    v = val.strip()
    if not v:
        return "NULL"
    return "'" + v.replace("'", "''") + "'"


def to_cents(val: str) -> int:
    """Convert a decimal string like '26.99' to integer cents (2699)."""
    v = val.strip()
    if not v:
        return 0
    try:
        return round(float(v) * 100)
    except ValueError:
        return 0


def to_date(val: str) -> str:
    """Return a SQL date literal or NULL."""
    v = val.strip()
    if not v:
        return "NULL"
    # Expect YYYY-MM-DD
    if re.match(r"^\d{4}-\d{2}-\d{2}", v):
        return f"'{v[:10]}'"
    return "NULL"


def to_ts(val: str) -> str:
    """Return a SQL timestamptz literal or NULL."""
    v = val.strip()
    if not v:
        return "NULL"
    if re.match(r"^\d{4}-\d{2}-\d{2}", v):
        return f"'{v}'"
    return "NULL"


# ---------------------------------------------------------------------------
# 0119 — legacy_customers
# ---------------------------------------------------------------------------
def generate_customers():
    lines = [
        "-- Seeded from WooCommerce user export (2026-03-19)",
        "-- Skips administrator accounts",
        "",
        "insert into public.legacy_customers (",
        "  wc_customer_id, email, first_name, last_name,",
        "  billing_company, billing_phone,",
        "  billing_address_1, billing_address_2, billing_city, billing_postcode, billing_state, billing_country,",
        "  shipping_first_name, shipping_last_name, shipping_company,",
        "  shipping_address_1, shipping_address_2, shipping_city, shipping_postcode, shipping_state, shipping_country,",
        "  total_spent, order_count, wc_registered_at, wc_last_active",
        ") values",
    ]

    with open(USERS_CSV, encoding="utf-8-sig") as f:
        rows = [r for r in csv.DictReader(f) if r["roles"].strip() == "customer"]

    values = []
    for r in rows:
        first_name = r["first_name"].strip() or r["billing_first_name"].strip()
        last_name  = r["last_name"].strip()  or r["billing_last_name"].strip()

        try:
            total_spent = float(r["total_spent"].strip() or "0")
        except ValueError:
            total_spent = 0.0

        try:
            order_count = int(r["orders"].strip() or "0")
        except ValueError:
            order_count = 0

        values.append(
            f"  ({r['ID'].strip()}, {esc(r['user_email'])}, {esc(first_name)}, {esc(last_name)},\n"
            f"   {esc(r['billing_company'])}, {esc(r['billing_phone'])},\n"
            f"   {esc(r['billing_address_1'])}, {esc(r['billing_address_2'])}, {esc(r['billing_city'])}, {esc(r['billing_postcode'])}, {esc(r['billing_state'])}, {esc(r['billing_country'])},\n"
            f"   {esc(r['shipping_first_name'])}, {esc(r['shipping_last_name'])}, {esc(r['shipping_company'])},\n"
            f"   {esc(r['shipping_address_1'])}, {esc(r['shipping_address_2'])}, {esc(r['shipping_city'])}, {esc(r['shipping_postcode'])}, {esc(r['shipping_state'])}, {esc(r['shipping_country'])},\n"
            f"   {total_spent:.2f}, {order_count}, {to_ts(r['user_registered'])}, {to_date(r['wc_last_active'])})"
        )

    lines.append(",\n".join(values) + ";")
    lines.append("")
    lines.append(f"-- {len(values)} customers inserted")

    out = MIGRATIONS / "0119_seed_legacy_customers.sql"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"Written {out}  ({len(values)} rows)")


# ---------------------------------------------------------------------------
# 0120 — legacy_orders
# ---------------------------------------------------------------------------
def generate_orders():
    lines = [
        "-- Seeded from WooCommerce orders export (2026-03-19)",
        "-- Excludes wc-failed and wc-pending (no payment captured)",
        "",
        "insert into public.legacy_orders (",
        "  wc_order_id, customer_email, status,",
        "  total_cents, shipping_cents, discount_cents, currency,",
        "  payment_method, customer_note,",
        "  billing_first_name, billing_last_name, billing_company, billing_phone,",
        "  billing_address_1, billing_address_2, billing_city, billing_postcode, billing_country,",
        "  shipping_first_name, shipping_last_name, shipping_company,",
        "  shipping_address_1, shipping_address_2, shipping_city, shipping_postcode, shipping_country,",
        "  ordered_at, completed_at",
        ") values",
    ]

    skip_statuses = {"wc-failed", "wc-pending"}

    with open(ORDERS_CSV, encoding="utf-8-sig") as f:
        rows = [r for r in csv.DictReader(f) if r["Order Status"].strip() not in skip_statuses]

    values = []
    for r in rows:
        email = r["Billing Email Address"].strip() or r["Customer Account Email Address"].strip()
        currency = r["Order Currency"].strip() or "EUR"

        values.append(
            f"  ({r['Order ID'].strip()}, {esc(email)}, {esc(r['Order Status'])},\n"
            f"   {to_cents(r['Order Total'])}, {to_cents(r['_order_shipping'])}, {to_cents(r['_cart_discount'])}, {esc(currency)},\n"
            f"   {esc(r['Payment Method Title'])}, {esc(r['Customer Note'])},\n"
            f"   {esc(r['Billing First Name'])}, {esc(r['Billing Last Name'])}, {esc(r['Billing Company'])}, {esc(r['Billing Phone'])},\n"
            f"   {esc(r['Billing Address 1'])}, {esc(r['Billing Address 2'])}, {esc(r['Billing City'])}, {esc(r['Billing Postcode'])}, {esc(r['Billing Country'])},\n"
            f"   {esc(r['Shipping First Name'])}, {esc(r['Shipping Last Name'])}, {esc(r['Shipping Company'])},\n"
            f"   {esc(r['Shipping Address 1'])}, {esc(r['Shipping Address 2'])}, {esc(r['Shipping City'])}, {esc(r['Shipping Postcode'])}, {esc(r['Shipping Country'])},\n"
            f"   {to_date(r['Order Date'])}, {to_date(r['Completed Date'])})"
        )

    lines.append(",\n".join(values) + ";")
    lines.append("")

    # Link orders to customers via email
    lines += [
        "-- Link orders to legacy_customers by email",
        "update public.legacy_orders lo",
        "set legacy_customer_id = lc.id",
        "from public.legacy_customers lc",
        "where lo.customer_email = lc.email;",
        "",
        f"-- {len(values)} orders inserted",
    ]

    out = MIGRATIONS / "0120_seed_legacy_orders.sql"
    out.write_text("\n".join(lines), encoding="utf-8")
    print(f"Written {out}  ({len(values)} rows)")


if __name__ == "__main__":
    generate_customers()
    generate_orders()
    print("Done.")
