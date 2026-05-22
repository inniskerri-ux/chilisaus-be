/**
 * Shipping Pricing Logic
 *
 * Calculate shipping costs based on destination and weight
 */

export const SHIPPING_RATE_LABEL = "Shipping";

/** Standard tax rate for food products in Belgium */
export const STANDARD_TAX_RATE = 0.06;

// ==================== SHIPPING ZONES ====================

interface WeightBracket {
  /** Inclusive upper bound in kg. Use Infinity for the last bracket. */
  maxWeightKg: number;
  priceCents: number;
}

interface ShippingZone {
  name: string;
  brackets: WeightBracket[];
  freeShippingThresholdCents?: number;
}

const SHIPPING_ZONES: Record<string, ShippingZone> = {
  // ── Belgium — Bpost ──────────────────────────────────────────────────────
  BEL: {
    name: "Belgium (Bpost)",
    brackets: [
      { maxWeightKg: 2,        priceCents: 710 },  // €7.10
      { maxWeightKg: 5,        priceCents: 785 },  // €7.85
      { maxWeightKg: Infinity, priceCents: 865 },  // €8.65
    ],
  },

  // ── Netherlands — PostNL flat ────────────────────────────────────────────
  NLD: {
    name: "Netherlands (PostNL)",
    brackets: [
      { maxWeightKg: Infinity, priceCents: 695 },  // €6.95 flat
    ],
  },

  // ── Zone 1: DE, FR, ES, LU, IT, DK, SE, AT ──────────────────────────────
  // Austria assigned to Zone 1 (Central Europe, same postal tier as DE/FR)
  ZONE1: {
    name: "EU Zone 1 (PostNL)",
    brackets: [
      { maxWeightKg: 0.5,      priceCents: 1000 }, // €10.00
      { maxWeightKg: 1,        priceCents: 1100 }, // €11.00
      { maxWeightKg: 2,        priceCents: 1200 }, // €12.00
      { maxWeightKg: Infinity, priceCents: 2100 }, // €21.00
    ],
  },

  // ── Zone 2: PT, GB, IE ───────────────────────────────────────────────────
  ZONE2: {
    name: "Zone 2 (PostNL)",
    brackets: [
      { maxWeightKg: 0.5,      priceCents: 1200 }, // €12.00
      { maxWeightKg: 1,        priceCents: 1300 }, // €13.00
      { maxWeightKg: 2,        priceCents: 1400 }, // €14.00
      { maxWeightKg: Infinity, priceCents: 2500 }, // €25.00
    ],
  },

  // ── Malta ────────────────────────────────────────────────────────────────
  MLT: {
    name: "Malta (PostNL)",
    brackets: [
      { maxWeightKg: 0.5,      priceCents: 1400 }, // €14.00
      { maxWeightKg: 1,        priceCents: 1600 }, // €16.00
      { maxWeightKg: 2,        priceCents: 2000 }, // €20.00
      { maxWeightKg: Infinity, priceCents: 2900 }, // €29.00
    ],
  },

  // ── Zone 3: NO, FI, BG, RO, SK, SI, LT, LV, CY, GR ─────────────────────
  // Czech Republic assigned to Zone 3 (geographically/logistically similar to SK)
  ZONE3: {
    name: "Zone 3 (PostNL)",
    brackets: [
      { maxWeightKg: 0.5,      priceCents: 1400 }, // €14.00
      { maxWeightKg: 1,        priceCents: 1500 }, // €15.00
      { maxWeightKg: 2,        priceCents: 1600 }, // €16.00
      { maxWeightKg: Infinity, priceCents: 3200 }, // €32.00
    ],
  },

  // ── Poland ───────────────────────────────────────────────────────────────
  POL: {
    name: "Poland (PostNL)",
    brackets: [
      { maxWeightKg: 0.5,      priceCents: 1400 }, // €14.00
      { maxWeightKg: 1,        priceCents: 1500 }, // €15.00
      { maxWeightKg: 2,        priceCents: 1600 }, // €16.00
      { maxWeightKg: Infinity, priceCents: 2400 }, // €24.00
    ],
  },

  // ── USA & all other non-EU countries ────────────────────────────────────
  // No shipping to Australia or Canada per owner instructions.
  DEFAULT: {
    name: "International (PostNL)",
    brackets: [
      { maxWeightKg: 0.5,      priceCents: 2100 }, // €21.00
      { maxWeightKg: 1,        priceCents: 2250 }, // €22.50
      { maxWeightKg: 2,        priceCents: 2600 }, // €26.00
      { maxWeightKg: Infinity, priceCents: 5100 }, // €51.00
    ],
  },
};

// ==================== ZONE LOOKUP ====================

function getZoneKey(countryCode: string): string {
  const c = countryCode.toUpperCase();

  if (c === "BEL" || c === "BE") return "BEL";
  if (c === "NLD" || c === "NL") return "NLD";
  if (c === "MLT" || c === "MT") return "MLT";
  if (c === "POL" || c === "PL") return "POL";

  const zone1 = ["DEU", "DE", "FRA", "FR", "ESP", "ES", "LUX", "LU", "ITA", "IT",
                  "DNK", "DK", "SWE", "SE", "AUT", "AT"];
  if (zone1.includes(c)) return "ZONE1";

  const zone2 = ["PRT", "PT", "GBR", "GB", "IRL", "IE"];
  if (zone2.includes(c)) return "ZONE2";

  const zone3 = ["NOR", "NO", "FIN", "FI", "BGR", "BG", "ROU", "RO",
                  "SVK", "SK", "SVN", "SI", "LTU", "LT", "LVA", "LV",
                  "CYP", "CY", "GRC", "GR", "CZE", "CZ"];
  if (zone3.includes(c)) return "ZONE3";

  return "DEFAULT";
}

// ==================== CALCULATION ====================

/**
 * Calculate total shipping cost in cents
 * Brackets use inclusive upper bounds (≤ maxWeightKg)
 */
export function calculateShippingCost(
  countryCode: string,
  weightKg: number,
  subtotalCents: number = 0,
): number {
  const zoneKey = getZoneKey(countryCode);
  const zone = SHIPPING_ZONES[zoneKey] ?? SHIPPING_ZONES.DEFAULT;

  if (zone.freeShippingThresholdCents && subtotalCents >= zone.freeShippingThresholdCents) {
    return 0;
  }

  const bracket = zone.brackets.find((b) => weightKg <= b.maxWeightKg)
    ?? zone.brackets[zone.brackets.length - 1];

  return bracket.priceCents;
}

// ==================== TAX ====================

/**
 * Extract the tax portion from a VAT-inclusive total (6% Belgian food VAT)
 */
export function calculateTaxFromTotal(
  totalCents: number,
  taxRate: number = STANDARD_TAX_RATE,
): number {
  return Math.round(totalCents - totalCents / (1 + taxRate));
}

export function calculateNetAmount(
  totalCents: number,
  taxRate: number = STANDARD_TAX_RATE,
): number {
  return Math.round(totalCents / (1 + taxRate));
}
