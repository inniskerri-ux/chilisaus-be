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
- [ ] **Home Page:**
    - Intro blurb + Logo + Tagline ("You Can Never Have Too Much Hot Sauce").
    - Category Grid (Implemented, refine with larger images/titles).
- [ ] **Shop Page Sorting:**
    - Default sort: Heat Level (1 to 20). *Note: DB currently supports 0-10, need to check scale.*
    - Sort Dropdown options: "Most Popular" (Preferred default), "Newest", "Price: Low to High", "Heat: Mild to Hot".
    - Filter Dropdown: Producers (Brands), Categories.
- [ ] **Product Page:**
    - Visible "Add to Cart" button.
    - Clear weight/shipping info.
- [ ] **Engagement:**
    - WhatsApp floating chat button.
    - Instagram profile link.
    - Newsletter signup (Popup or static section) -> "10% discount code".

### B. Content Pages
- [ ] **Recipes:** New page for cooking with sauces.
- [ ] **Videos:** YouTube gallery (existing videos).
- [ ] **Legal/Info:** "Technical Jargon" page (Policies, Returns, Business Address, Tax ID, Shipping Times).

### C. Internationalization (i18n)
- **Current:** English, Dutch, French, German, Spanish, Polish, Czech.
- **Requested Additions:** Portuguese, Italian, Danish, Norwegian, Swedish, Ukrainian, Arabic, Bulgarian.
- **Action:** Update `middleware.ts`, `i18n/request.ts`, and add `messages/*.json` files.

### D. Operations & Backend
- [ ] **Payments:** Stripe (Already integrated).
- [ ] **Shipping:**
    - Logic for Bpost and PostNL (weights/zones).
    - Packing Slip generation (Admin feature to print PDF with label).
- [ ] **Inventory:**
    - Stock weights linked for shipping calc.
- [ ] **Analytics:**
    - Sales breakdown by Product and Producer.
    - Tax return data.

### E. Marketing & Reviews
- [ ] **Reviews:**
    - Display reviews from `cusrev.com`.
    - Email automation: Invite reviews 10 days post-purchase -> Discount code.
- [ ] **Email Marketing (Mailchimp):**
    - Sync customers to Mailchimp.
    - Automations: Welcome, Abandoned Cart, New Products, Xmas Market.

### F. Privacy
- [ ] **Cookies:** "No cookies and crap".
    - Use only strictly necessary cookies (Auth/Session).
    - Avoid third-party tracking pixels if possible.

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
- [ ] Build Video Gallery Page.
- [ ] Implement Newsletter Signup (10% code logic).
- [ ] **Database Translation Migration:**
    - Refactor `products` table to support multi-lang fields (Name, Description, Ingredients).
    - Run AI-powered bulk translation script for all 13+ languages to pre-fill the database.
    - Update Admin Product Form to manage translations.

### Phase 3: Operations & Shipping
- [ ] Implement Bpost/PostNL shipping calculator.
- [ ] Build Admin Packing Slip generator.
- [ ] Admin Analytics Dashboard.

### Phase 4: Localization & Integrations
- [ ] Add remaining 6+ languages.
- [ ] Integrate `cusrev.com` reviews.
- [x] Payment Setup (Stripe fully integrated and configured).
- [ ] Mailchimp Integration (Sync & Automation).

---

## 4. Open Questions / Next Steps
1.  **Heat Scale:** Current DB uses 0-10. Do we need to migrate to 1-20? yes
2.  **Logo:** Do we have the high-res file? 
3.  **Review Widget:** Does `cusrev.com` provide an embed code or API?
4.  **Mailchimp:** Do we have the API key?
