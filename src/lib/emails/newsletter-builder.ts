import crypto from "crypto";

export type TextBlock = {
  id: string;
  type: "text";
  content: string;
  size: "heading" | "body" | "small";
};

export type ImageBlock = {
  id: string;
  type: "image";
  url: string;
  alt: string;
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

export type Block = TextBlock | ImageBlock | ProductsBlock | ButtonBlock;

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
      // Preserve line breaks
      const content = block.content.replace(/\n/g, "<br>");
      return `<${tag} style="${styles[block.size]}">${content}</${tag}>`;
    }

    case "image": {
      if (!block.url) return "";
      return `
        <div style="margin:0 0 20px;">
          <img src="${block.url}" alt="${block.alt || ""}" style="width:100%;max-width:560px;height:auto;display:block;border-radius:8px;" />
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
            <td style="background:#c00;padding:24px 32px;border-radius:8px 8px 0 0;text-align:center;">
              <a href="${siteUrl}" style="text-decoration:none;">
                <span style="font-size:24px;font-weight:800;color:#fff;letter-spacing:-0.5px;">🌶️ Chilisaus.be</span>
              </a>
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
