/**
 * Shipping Pricing Logic
 *
 * Calculate shipping costs based on destination and weight
 */

export const SHIPPING_RATE_LABEL = "Shipping";

/**
 * Standard tax rate for products (6% for food products in Belgium)
 */
export const STANDARD_TAX_RATE = 0.06;

// ==================== SHIPPING RATES ====================

interface WeightBracket {
  /** Upper bound in kg (exclusive). Use Infinity for the last bracket. */
  maxWeightKg: number;
  priceCents: number;
}

interface ShippingZone {
  name: string;
  brackets: WeightBracket[];
  freeShippingThresholdCents?: number;
}

const SHIPPING_ZONES: Record<string, ShippingZone> = {
  // ── Belgium (Bpost) ──────────────────────────────────────────────────────
  BEL: {
    name: "Belgium (Bpost)",
    brackets: [
      { maxWeightKg: 2,        priceCents: 710 },  // €7.10
      { maxWeightKg: 5,        priceCents: 785 },  // €7.85
      { maxWeightKg: Infinity, priceCents: 865 },  // €8.65 (5–10 kg)
    ],
  },

  // ── Netherlands (PostNL) ─────────────────────────────────────────────────
  NLD: {
    name: "Netherlands (PostNL)",
    brackets: [
      { maxWeightKg: Infinity, priceCents: 695 },  // €6.95 flat
    ],
  },

  // ── TODO: rates below are placeholders pending PostNL rate card ──────────
  // Client to confirm exact rates per weight bracket.
  // Consider connecting the PostNL API for automatic rate lookup.

  // Germany (PostNL)
  DEU: {
    name: "Germany (PostNL)",
    brackets: [
      { maxWeightKg: Infinity, priceCents: 0 },    // TODO: add real rate
    ],
  },

  // EU Zone 1 — FR, LU, AT, DK, CZ, PL (PostNL)
  EU1: {
    name: "EU Zone 1 (PostNL)",
    brackets: [
      { maxWeightKg: Infinity, priceCents: 0 },    // TODO: add real rate
    ],
  },

  // Default / Rest of World (PostNL)
  DEFAULT: {
    name: "International (PostNL)",
    brackets: [
      { maxWeightKg: Infinity, priceCents: 0 },    // TODO: add real rate
    ],
  },
};

/**
 * Map a 2-letter or 3-letter ISO country code to a zone key
 */
function getZoneKey(countryCode: string): string {
  const code = countryCode.toUpperCase();

  if (code === "BEL" || code === "BE") return "BEL";
  if (code === "NLD" || code === "NL") return "NLD";
  if (code === "DEU" || code === "DE") return "DEU";

  const eu1 = ["AUT", "AT", "CZE", "CZ", "DNK", "DK", "FRA", "FR", "LUX", "LU", "POL", "PL"];
  if (eu1.includes(code)) return "EU1";

  return "DEFAULT";
}

/**
 * Calculate total shipping cost in cents based on country and package weight
 */
export function calculateShippingCost(
  countryCode: string,
  weightKg: number,
  subtotalCents: number = 0,
): number {
  const zoneKey = getZoneKey(countryCode);
  const zone = SHIPPING_ZONES[zoneKey] ?? SHIPPING_ZONES.DEFAULT;

  // Free shipping threshold (if configured for this zone)
  if (zone.freeShippingThresholdCents && subtotalCents >= zone.freeShippingThresholdCents) {
    return 0;
  }

  // Find the matching weight bracket
  const bracket = zone.brackets.find((b) => weightKg < b.maxWeightKg)
    ?? zone.brackets[zone.brackets.length - 1];

  return bracket.priceCents;
}

/**
 * Calculate the tax portion from a VAT-inclusive total
 * (e.g. €10.00 inc 6% VAT → tax = €10.00 − (€10.00 / 1.06))
 */
export function calculateTaxFromTotal(
  totalCents: number,
  taxRate: number = STANDARD_TAX_RATE,
): number {
  const netAmount = totalCents / (1 + taxRate);
  return Math.round(totalCents - netAmount);
}

/**
 * Calculate the net amount (before tax) from a VAT-inclusive total
 */
export function calculateNetAmount(
  totalCents: number,
  taxRate: number = STANDARD_TAX_RATE,
): number {
  return Math.round(totalCents / (1 + taxRate));
}
