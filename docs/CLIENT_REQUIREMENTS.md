# Client Requirements & Project Roadmap

**Date:** Feb 24, 2026
**Source:** Email from Client (Owner)

## 1. Executive Summary & Branding

The client wants a clean, professional, "human" website focused on the product (sauce). The site should avoid unnecessary clutter ("big flashy things") and intrusive tracking cookies.

- **Theme:** White background, clean simple feel.
- **Brand Colors:** Black, White, Red.
- **Tagline:** "You Can Never Have Too Much Hot Sauce"
- **Vibe:** Personal connection ("A lot of people... have met me"), not a faceless corporation.

## 2. Detailed Requirements

### A. Frontend & UX

- [x] **Home Page:**
  - [x] Intro blurb + Logo + Tagline ("You Can Never Have Too Much Hot Sauce").
  - [x] Category Grid (Implemented, refine with larger images/titles).
- [x] **Shop Page Sorting:**
  - [x] Default sort: Heat Level (1 to 20) (Implemented).
  - [x] Sort Dropdown options: "Most Popular", "Newest", "Price: Low to High", "Heat: Mild to Hot".
  - [x] Filter Dropdown: Producers (Brands), Categories.
- [ ] **Product Page:**
  - [x] Visible "Add to Cart" button.
  - [ ] Clear weight/shipping info (Awaiting shipping logic).
- [x] **Engagement:**
  - [x] WhatsApp floating chat button (Implemented).
  - [ ] Instagram profile link.
  - [ ] Newsletter signup (Popup implemented, logic pending).

### B. Content Pages

- [ ] **Recipes:** New page for cooking with sauces.
- [ ] **Videos:** YouTube gallery (Hidded from header for now).
- [x] **Legal/Info:** "Technical Jargon" page (Implemented: /legal, /shipping-returns).

### C. Internationalization (i18n)

- **Current:** English, Dutch, French, German, Spanish, Polish, Czech.
- **Requested Additions:** Portuguese, Italian, Danish, Norwegian, Swedish, Ukrainian, Arabic, Bulgarian.
- **Action:** [x] Refactored `i18n/request.ts` to support all locales. [x] Create missing `messages/*.json` files for 13+ languages.

### D. Operations & Backend

- [x] **Payments:** Stripe (Already integrated).
- [ ] **Shipping:**
  - [x] Logic for Bpost and PostNL (Implemented provider selection).
  - [ ] Exact weight-based rates (Awaiting client confirmation).
  - [ ] Packing Slip generation (Admin feature to print PDF with label).
- [ ] **Inventory:**
  - Stock weights linked for shipping calc.
- [ ] **Analytics:**
  - Sales breakdown by Product and Producer.
  - Tax return data.

### E. Marketing & Reviews

- [x] **Reviews:**
  - [x] Built native review system in Supabase.
  - [ ] Import historical data from old site.
  - [ ] Email automation: Invite reviews 10 days post-purchase -> Discount code.
- [ ] **Email Marketing (Mailchimp):**
  - Sync customers to Mailchimp.
  - Automations: Welcome, Abandoned Cart, New Products, Xmas Market.

### F. Privacy

- [x] **Cookies:**
  - [x] Integrated Google Analytics (G-WXW3MZSEP3).
  - [x] Added Cookie Consent Banner.
  - [x] Implement Google Consent Mode to ensure GA only tracks after approval.

---

## 3. Implementation Plan

### Phase 1: Visuals & Core Navigation (High Impact)

- [x] Update Theme Colors (Tailwind config: Black/White/Red).
- [x] Refine Home Page Hero (Logo, Tagline, Intro).
- [x] Enhance Shop Filtering (Added Producers/Brands dropdown, fixed category syncing).
- [x] Add WhatsApp & Social Links (WhatsApp uses `NEXT_PUBLIC_WHATSAPP_NUMBER`).
- [x] Create "Technical Info" / Legal page (BE/EU Compliant Legal Notice & Shipping/Returns).
- [x] Image Optimization (Migrated all external product images to optimized WebP in Supabase Storage).

### Phase 2: Content Expansion & Localization

- [ ] Build Recipes Page (CMS/Table).
- [x] Hide Videos Gallery (Client request: later phase).
- [ ] Implement Newsletter Signup (10% code logic).
- [ ] **Database Translation Migration:**
  - Refactor `products` table to support multi-lang fields (Name, Description, Ingredients).
  - Run AI-powered bulk translation script for all 13+ languages to pre-fill the database.
  - Update Admin Product Form to manage translations.
- [x] **Heat Level Migration:**
  - [x] Migrate `heat_level` from 0-10 scale to 1-20 scale in DB and UI.

### Phase 3: Operations & Shipping

- [ ] Implement Bpost/PostNL shipping calculator.
- [ ] Build Admin Packing Slip generator.
- [ ] Admin Analytics Dashboard.

### Phase 4: Localization & Integrations

- [ ] Add remaining 6+ languages (JSON files).
- [x] Built native review system & table.
- [x] Payment Setup (Stripe fully integrated and configured).
- [x] Google Analytics Integrated (G-WXW3MZSEP3).
- [x] Google Merchant Center (GMC) Integration (Product Feed).
- [ ] Mailchimp Integration (Sync & Automation).

---

## 4. Open Questions / Next Steps

1.  **Heat Scale:** 1-20 migration complete.
2.  **Logo:** High-res logo in place.
3.  **Historical Reviews:** Awaiting CSV from client.
4.  **Mailchimp:** Do we have the API key?
