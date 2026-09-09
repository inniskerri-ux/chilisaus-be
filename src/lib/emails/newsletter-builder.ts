import crypto from "crypto";

// Hosted on Supabase Storage (not `${siteUrl}/images/logo.png`) so the header
// logo loads regardless of which domain is currently live for the site --
// chilisaus.be still serves the old WooCommerce store while this app is
// staged at staging.chilisaus.be, and that relative path 404'd there.
const LOGO_URL =
  "https://hkflfhbzfsentkkwzqnd.supabase.co/storage/v1/object/public/product-images/email-assets/logo.png";

export type TextBlock = {
  id: string;
  type: "text";
  // Sanitized HTML -- only <b>, <i>, <u>, <br> ever end up in here (enforced
  // by the builder UI's sanitizer), never arbitrary markup.
  content: string;
  size: "heading" | "body" | "small";
  // Optional override of the size category's default font-size, in px.
  fontSizePx?: number;
};

export type ImageBlock = {
  id: string;
  type: "image";
  url: string;
  alt: string;
  // Display width as a percentage of the column, 20-100. Never resamples or
  // crops the source image -- purely a display-size control.
  widthPercent: number;
};

export type ProductsBlock = {
  id: string;
  type: "products";
  products: { id: string; name: string; imageUrl: string; priceCents: number; slug: string }[];
};

export type ButtonBlock = {
  id: string;
  type: "button";
  label: string;
  url: string;
};

// Blocks that can live inside a row's column. A row cannot contain another
// row -- keeps layout/rendering non-recursive and email-client-safe.
export type ColumnBlock = TextBlock | ImageBlock | ProductsBlock | ButtonBlock;

export type RowBlock = {
  id: string;
  type: "row";
  // Width of the left column, as a percentage (right column is 100 - this).
  splitPercent: number;
  left: ColumnBlock[];
  right: ColumnBlock[];
};

export type Block = ColumnBlock | RowBlock;

function formatPrice(cents: number) {
  return `€${(cents / 100).toFixed(2)}`;
}

function renderBlock(block: Block, siteUrl: string): string {
  switch (block.type) {
    case "text": {
      const styles: Record<string, string> = {
        heading: "font-size:24px;font-weight:bold;color:#111;margin:0 0 16px;line-height:1.3;",
        body: "font-size:15px;color:#444;margin:0 0 16px;line-height:1.7;",
        small: "font-size:12px;color:#888;margin:0 0 12px;line-height:1.6;",
      };
      const tag = block.size === "heading" ? "h2" : "p";
      const style = block.fontSizePx
        ? styles[block.size].replace(/font-size:[^;]+;/, `font-size:${block.fontSizePx}px;`)
        : styles[block.size];
      return `<${tag} style="${style}">${block.content}</${tag}>`;
    }

    case "image": {
      if (!block.url) return "";
      const width = Math.min(100, Math.max(20, block.widthPercent ?? 100));
      return `
        <div style="margin:0 0 20px;text-align:center;">
          <img src="${block.url}" alt="${block.alt || ""}" style="width:${width}%;max-width:${width}%;height:auto;display:inline-block;border-radius:8px;" />
        </div>`;
    }

    case "products": {
      if (!block.products.length) return "";
      const cards = block.products
        .map(
          (p) => `
          <td style="width:50%;padding:8px;vertical-align:top;box-sizing:border-box;">
            <a href="${siteUrl}/en/product/${p.slug}" style="text-decoration:none;color:inherit;display:block;">
              <div style="border:1px solid #eee;border-radius:8px;overflow:hidden;background:#fff;">
                ${p.imageUrl ? `<img src="${p.imageUrl}" alt="${p.name}" style="width:100%;height:160px;object-fit:cover;display:block;" />` : `<div style="width:100%;height:160px;background:#f5f5f5;"></div>`}
                <div style="padding:12px;">
                  <p style="margin:0 0 4px;font-size:13px;font-weight:600;color:#111;">${p.name}</p>
                  <p style="margin:0;font-size:13px;color:#c00;font-weight:bold;">${formatPrice(p.priceCents)}</p>
                </div>
              </div>
            </a>
          </td>`,
        )
        .join("");

      // Pair products into rows of 2
      const rows: string[] = [];
      for (let i = 0; i < block.products.length; i += 2) {
        const pair = block.products.slice(i, i + 2);
        const tds = pair
          .map(
            (p) => `
            <td style="width:50%;padding:8px;vertical-align:top;box-sizing:border-box;">
              <a href="${siteUrl}/en/product/${p.slug}" style="text-decoration:none;color:inherit;display:block;">
                <div style="border:1px solid #eee;border-radius:8px;overflow:hidden;background:#fff;">
                  ${p.imageUrl ? `<img src="${p.imageUrl}" alt="${p.name}" style="width:100%;height:160px;object-fit:cover;display:block;" />` : `<div style="width:100%;height:160px;background:#f5f5f5;"></div>`}
                  <div style="padding:12px;">
                    <p style="margin:0 0 4px;font-size:13px;font-weight:600;color:#111;">${p.name}</p>
                    <p style="margin:0;font-size:13px;color:#c00;font-weight:bold;">${formatPrice(p.priceCents)}</p>
                  </div>
                </div>
              </a>
            </td>`,
          )
          .join("");
        rows.push(`<tr>${tds}</tr>`);
      }

      return `
        <div style="margin:0 0 20px;">
          <table style="width:100%;border-collapse:collapse;" cellpadding="0" cellspacing="0">
            ${rows.join("")}
          </table>
        </div>`;
    }

    case "button": {
      if (!block.label || !block.url) return "";
      return `
        <div style="margin:8px 0 24px;text-align:center;">
          <a href="${block.url}" style="display:inline-block;background:#c00;color:#fff;font-size:15px;font-weight:600;padding:14px 32px;border-radius:6px;text-decoration:none;">${block.label}</a>
        </div>`;
    }

    case "row": {
      if (!block.left.length && !block.right.length) return "";
      const left = Math.min(80, Math.max(20, block.splitPercent));
      const right = 100 - left;
      const leftHtml = block.left.map((b) => renderBlock(b, siteUrl)).join("\n");
      const rightHtml = block.right.map((b) => renderBlock(b, siteUrl)).join("\n");
      // Table-based layout: flexbox/grid support is unreliable across email
      // clients (Outlook desktop in particular), tables are not.
      return `
        <table style="width:100%;border-collapse:collapse;margin:0 0 20px;" cellpadding="0" cellspacing="0">
          <tr>
            <td style="width:${left}%;vertical-align:top;padding-right:12px;box-sizing:border-box;">${leftHtml}</td>
            <td style="width:${right}%;vertical-align:top;padding-left:12px;box-sizing:border-box;">${rightHtml}</td>
          </tr>
        </table>`;
    }

    default:
      return "";
  }
}

export function generateNewsletterHtml({
  blocks,
  firstName,
  unsubscribeUrl,
  siteUrl,
}: {
  blocks: Block[];
  firstName?: string;
  unsubscribeUrl: string;
  siteUrl: string;
}): string {
  const bodyBlocks = blocks.map((b) => renderBlock(b, siteUrl)).join("\n");

  return `<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body style="margin:0;padding:0;background:#f4f4f4;font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',sans-serif;">
  <table width="100%" cellpadding="0" cellspacing="0" style="background:#f4f4f4;padding:32px 0;">
    <tr>
      <td align="center">
        <table width="600" cellpadding="0" cellspacing="0" style="max-width:600px;width:100%;">

          <!-- Header -->
          <tr>
            <td style="background:#c00;padding:20px 32px;border-radius:8px 8px 0 0;">
              <table cellpadding="0" cellspacing="0" style="width:100%;border-collapse:collapse;">
                <tr>
                  <td style="width:70px;vertical-align:middle;">
                    <a href="${siteUrl}" style="text-decoration:none;">
                      <img src="${LOGO_URL}" alt="Chilisaus.be" width="70" style="display:block;width:70px;max-width:70px;height:auto;border:0;border-radius:6px;" />
                    </a>
                  </td>
                  <td style="vertical-align:middle;text-align:center;padding:0 12px;">
                    <span style="color:#fff;font-size:19px;font-weight:700;line-height:1.3;text-transform:capitalize;letter-spacing:0.02em;">You can never have too much<br>hot sauce</span>
                  </td>
                  <td style="width:70px;vertical-align:middle;text-align:right;">
                    <a href="${siteUrl}" style="text-decoration:none;">
                      <img src="${LOGO_URL}" alt="Chilisaus.be" width="70" style="display:inline-block;width:70px;max-width:70px;height:auto;border:0;border-radius:6px;" />
                    </a>
                  </td>
                </tr>
              </table>
            </td>
          </tr>

          <!-- Body -->
          <tr>
            <td style="background:#fff;padding:32px;border-left:1px solid #eee;border-right:1px solid #eee;">
              ${firstName ? `<p style="font-size:15px;color:#444;margin:0 0 20px;">Hey ${firstName},</p>` : ""}
              ${bodyBlocks}
            </td>
          </tr>

          <!-- Footer -->
          <tr>
            <td style="background:#1a1a1a;padding:24px 32px;border-radius:0 0 8px 8px;text-align:center;">
              <p style="margin:0 0 8px;font-size:13px;color:#aaa;">Chilisaus.be &mdash; Belgium&apos;s Hot Sauce Shop</p>
              <p style="margin:0 0 12px;font-size:12px;color:#666;">You're receiving this because you subscribed or made a purchase.</p>
              <a href="${unsubscribeUrl}" style="font-size:12px;color:#888;text-decoration:underline;">Unsubscribe</a>
            </td>
          </tr>

        </table>
      </td>
    </tr>
  </table>
</body>
</html>`;
}

export function generateUnsubscribeToken(email: string): string {
  const secret = process.env.NEXTAUTH_SECRET || "fallback-secret";
  return crypto.createHmac("sha256", secret).update(email.toLowerCase()).digest("hex");
}

export function verifyUnsubscribeToken(email: string, token: string): boolean {
  return generateUnsubscribeToken(email) === token;
}
