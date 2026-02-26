/**
 * Shipping Pricing Logic
 *
 * Calculate shipping costs based on destination and weight
 */

export const SHIPPING_RATE_LABEL = 'Shipping';

/**
 * Standard tax rate for products (6% for food products in Belgium)
 */
export const STANDARD_TAX_RATE = 0.06;

// ==================== SHIPPING RATES ====================

interface ShippingRate {
  name: string;
  basePriceCents: number;
  perKgCents: number;
  freeShippingThresholdCents?: number;
}

const SHIPPING_RATES: Record<string, ShippingRate> = {
  // Germany
  DEU: {
    name: 'Germany (National)',
    basePriceCents: 590, // 5.90 EUR
    perKgCents: 0,
    freeShippingThresholdCents: 5000, // Free over 50 EUR
  },
  // EU Zone 1 (Netherlands, Austria, etc.)
  EU1: {
    name: 'EU Zone 1',
    basePriceCents: 1290,
    perKgCents: 0,
  },
  // Default / Rest of World
  DEFAULT: {
    name: 'International Shipping',
    basePriceCents: 1990,
    perKgCents: 200, // +2 EUR per kg
  },
};

/**
 * Get rate zone for a country ISO code
 */
function getRateZone(countryCode: string): string {
  const code = countryCode.toUpperCase();

  if (code === 'DEU' || code === 'DE') return 'DEU';

  const euZone1 = ['AUT', 'BEL', 'CZE', 'DNK', 'FRA', 'LUX', 'NLD', 'POL'];
  if (euZone1.includes(code)) return 'EU1';

  return 'DEFAULT';
}

/**
 * Calculate total shipping cost in cents
 */
export function calculateShippingCost(
  countryCode: string,
  weightKg: number,
  subtotalCents: number = 0
): number {
  const zone = getRateZone(countryCode);
  const rate = SHIPPING_RATES[zone] || SHIPPING_RATES.DEFAULT;

  // Check free shipping threshold
  if (rate.freeShippingThresholdCents && subtotalCents >= rate.freeShippingThresholdCents) {
    return 0;
  }

  const cost = rate.basePriceCents + Math.ceil(weightKg) * rate.perKgCents;
  return cost;
}

/**
 * Calculate the tax portion from a VAT-inclusive total
 * (e.g. 10.00 EUR total inc 6% VAT -> Tax = 10.00 - (10.00 / 1.06))
 */
export function calculateTaxFromTotal(totalCents: number, taxRate: number = STANDARD_TAX_RATE): number {
  const netAmount = totalCents / (1 + taxRate);
  return Math.round(totalCents - netAmount);
}

/**
 * Calculate the net amount (before tax) from a VAT-inclusive total
 */
export function calculateNetAmount(totalCents: number, taxRate: number = STANDARD_TAX_RATE): number {
  return Math.round(totalCents / (1 + taxRate));
}
