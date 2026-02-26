/**
 * Simple HTML templates for transactional emails
 */

import { formatPrice } from '@/lib/format';
import { STANDARD_TAX_RATE } from '@/lib/checkout/pricing';

interface OrderItem {
  name: string;
  quantity: number;
  priceCents: number;
  taxCents: number;
}

interface OrderDetails {
  id: string;
  customerEmail: string;
  shippingName: string;
  shippingStreet: string;
  shippingCity: string;
  shippingPostalCode: string;
  shippingCountry: string;
  subtotalCents: number;
  shippingCents: number;
  taxCents: number;
  totalCents: number;
  items: OrderItem[];
}

/**
 * Packing Slip for Seller (Sales Team)
 */
export function getPackingSlipHtml(order: OrderDetails): string {
  const itemsList = order.items
    .map(
      (item) => `
    <tr>
      <td style="padding: 10px; border-bottom: 1px solid #eee;">${item.name}</td>
      <td style="padding: 10px; border-bottom: 1px solid #eee; text-align: center;">${item.quantity}</td>
      <td style="padding: 10px; border-bottom: 1px solid #eee; text-align: right;">${formatPrice(item.priceCents)}</td>
    </tr>
  `
    )
    .join('');

  return `
    <div style="font-family: sans-serif; max-width: 600px; margin: 0 auto; color: #333;">
      <h1 style="color: #d32f2f;">New Order: Packing Slip</h1>
      <p>Order ID: <strong>${order.id}</strong></p>
      <p>Customer: ${order.shippingName} (${order.customerEmail})</p>
      
      <h3>Shipping Address:</h3>
      <p>
        ${order.shippingName}<br>
        ${order.shippingStreet}<br>
        ${order.shippingPostalCode} ${order.shippingCity}<br>
        ${order.shippingCountry}
      </p>

      <h3>Order Items:</h3>
      <table style="width: 100%; border-collapse: collapse;">
        <thead>
          <tr style="background: #f8f8f8;">
            <th style="padding: 10px; text-align: left;">Product</th>
            <th style="padding: 10px; text-align: center;">Qty</th>
            <th style="padding: 10px; text-align: right;">Price</th>
          </tr>
        </thead>
        <tbody>
          ${itemsList}
        </tbody>
      </table>

      <div style="margin-top: 20px; text-align: right;">
        <p>Subtotal: ${formatPrice(order.subtotalCents)}</p>
        <p>Shipping: ${formatPrice(order.shippingCents)}</p>
        <p style="font-weight: bold; font-size: 1.2em;">Total: ${formatPrice(order.totalCents)}</p>
      </div>
    </div>
  `;
}

/**
 * Order Confirmation for Purchaser
 */
export function getOrderConfirmationHtml(order: OrderDetails): string {
  const itemsList = order.items
    .map(
      (item) => `
    <tr>
      <td style="padding: 10px; border-bottom: 1px solid #eee;">${item.name} x ${item.quantity}</td>
      <td style="padding: 10px; border-bottom: 1px solid #eee; text-align: right;">${formatPrice(item.priceCents)}</td>
    </tr>
  `
    )
    .join('');

  return `
    <div style="font-family: sans-serif; max-width: 600px; margin: 0 auto; color: #333; line-height: 1.6;">
      <h1 style="color: #000;">Thank you for your order!</h1>
      <p>Hi ${order.shippingName},</p>
      <p>Your order <strong>${order.id}</strong> has been received and is being processed.</p>
      
      <h3>Order Details:</h3>
      <table style="width: 100%; border-collapse: collapse;">
        <tbody>
          ${itemsList}
        </tbody>
      </table>

      <hr style="border: 0; border-top: 1px solid #eee; margin: 20px 0;">

      <div style="text-align: right;">
        <p>Subtotal (inc. VAT): ${formatPrice(order.subtotalCents)}</p>
        <p>Shipping: ${formatPrice(order.shippingCents)}</p>
        <p style="font-size: 0.9em; color: #666;">Including ${STANDARD_TAX_RATE * 100}% VAT: ${formatPrice(order.taxCents)}</p>
        <p style="font-weight: bold; font-size: 1.2em; color: #d32f2f;">Total Paid: ${formatPrice(order.totalCents)}</p>
      </div>

      <h3>Shipping to:</h3>
      <p style="background: #f9f9f9; padding: 15px; border-radius: 4px;">
        ${order.shippingName}<br>
        ${order.shippingStreet}<br>
        ${order.shippingPostalCode} ${order.shippingCity}<br>
        ${order.shippingCountry}
      </p>

      <p>We'll send you another email once your spicy package is on its way!</p>
      
      <p style="margin-top: 40px; font-size: 0.8em; color: #999;">
        Chilisaus.be - You Can Never Have Too Much Hot Sauce
      </p>
    </div>
  `;
}

/**
 * Low Stock Notification for Seller
 */
export function getLowStockEmailHtml(productName: string, currentStock: number): string {
  return `
    <div style="font-family: sans-serif; max-width: 600px; margin: 0 auto; color: #333;">
      <h1 style="color: #d32f2f;">⚠️ Low Stock Alert</h1>
      <p>The following product is running low on stock:</p>
      
      <div style="background: #fff3f3; padding: 20px; border-radius: 8px; border: 1px solid #ffcdd2; margin: 20px 0;">
        <h2 style="margin: 0 0 10px 0;">${productName}</h2>
        <p style="font-size: 1.2em; margin: 0;">Current Stock: <strong style="color: #d32f2f;">${currentStock}</strong></p>
      </div>

      <p>Time to restock before it sells out!</p>
      
      <div style="margin-top: 30px;">
        <a href="https://chilisaus.be/admin/products" style="background: #000; color: #fff; padding: 12px 24px; text-decoration: none; border-radius: 4px; font-weight: bold;">
          Manage Inventory
        </a>
      </div>
    </div>
  `;
}

/**
 * Newsletter Double Opt-In Verification
 */
export function getNewsletterVerificationHtml(confirmUrl: string): string {
  return `
    <div style="font-family: sans-serif; max-width: 600px; margin: 0 auto; color: #333; text-align: center;">
      <h1 style="color: #000;">Confirm your subscription</h1>
      <p>Thanks for signing up for the Chilisaus.be newsletter!</p>
      <p>Please click the button below to confirm your email and receive your <strong>10% discount code</strong>.</p>
      
      <div style="margin: 40px 0;">
        <a href="${confirmUrl}" style="background: #d32f2f; color: #fff; padding: 16px 32px; text-decoration: none; border-radius: 8px; font-weight: bold; font-size: 1.1em;">
          Confirm My Email
        </a>
      </div>

      <p style="font-size: 0.8em; color: #999;">
        If you didn't request this, you can safely ignore this email.
      </p>
    </div>
  `;
}

/**
 * Newsletter Welcome Email with Voucher
 */
export function getNewsletterWelcomeHtml(voucherCode: string): string {
  return `
    <div style="font-family: sans-serif; max-width: 600px; margin: 0 auto; color: #333; text-align: center;">
      <h1 style="color: #000;">Welcome to the family! 🌶️</h1>
      <p>Your email has been confirmed. As promised, here is your spicy discount:</p>
      
      <div style="background: #f9f9f9; border: 2px dashed #d32f2f; padding: 30px; margin: 30px 0; border-radius: 12px;">
        <p style="text-transform: uppercase; font-size: 0.9em; letter-spacing: 1px; margin-bottom: 10px; color: #666;">Use this code at checkout:</p>
        <span style="font-family: monospace; font-size: 2.5em; font-bold; color: #d32f2f; letter-spacing: 2px;">${voucherCode}</span>
        <p style="margin-top: 15px; font-size: 1.1em; font-weight: bold;">10% OFF YOUR NEXT ORDER</p>
      </div>

      <p>Get ready for recipes, new arrivals, and limited edition drops.</p>
      
      <div style="margin-top: 40px;">
        <a href="https://chilisaus.be/shop" style="background: #000; color: #fff; padding: 12px 24px; text-decoration: none; border-radius: 4px; font-weight: bold;">
          Start Shopping
        </a>
      </div>

      <p style="margin-top: 60px; font-size: 0.8em; color: #999;">
        Chilisaus.be - You Can Never Have Too Much Hot Sauce
      </p>
    </div>
  `;
}
