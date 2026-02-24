# 💎 Gemini Context: Chili Sauce E-Commerce Store (Chilisaus.be)

This project is a production-ready e-commerce application for a chili sauce store, built using Next.js 16 and Supabase. It features multi-language support (i18n), administrative controls for shop owners, and a secure checkout flow.

## 🚀 Tech Stack

- **Framework:** Next.js 16 (App Router)
- **Database/Auth:** Supabase (PostgreSQL, SSR Auth, RLS)
- **Styling:** Tailwind CSS 4 (with `tailwindcss-rtl`)
- **Internationalization:** `next-intl` (Middleware-based routing)
- **State Management:** Server-side Cart (Supabase `cart_items` table)

---

## 📂 Project Structure

- **`src/app/[locale]/`**: The primary application routes, localized via `next-intl`.
    - **`admin/`**: Shop owner dashboard and product management. Protected by `requireShopOwner` helper.
    - **`shop/`**: Product listing and individual product pages.
    - **`cart/`**, **`checkout/`**: Shopping cart and secure checkout flow.
    - **`auth/`**: Authentication pages (Sign In, Sign Up, Reset Password).
- **`src/lib/supabase/`**: Initialization for both client-side and server-side Supabase clients.
- **`src/messages/`**: JSON translation files for supported locales (`nl`, `en`, `fr`, `cs`, `es`, `de`, `pl`).
- **`supabase/migrations/`**: SQL migrations defining the schema, RLS policies, and seed data.

---

## 🏗️ Core Architecture & Conventions

### 1. Database Schema (Supabase)
The schema is designed for a specialized chili sauce store ("Chilli" mode):
- **`profiles`**: Extends `auth.users` with `role` (`customer` or `shop_owner`).
- **`products`**: Includes fields like `heat_level`, `capacity_ml`, `price_cents` (stored in cents to avoid floating point issues).
- **`chilli_types`**, **`brands`**, **`categories`**: Relational metadata for products.
- **`cart_items`**: Server-side cart tracking using `cart_session_id`.

### 2. Internationalization (i18n)
- Managed via `middleware.ts` and `src/i18n/request.ts`.
- Supported locales: `nl` (Dutch), `en` (English), `fr` (French), `cs` (Czech), `es` (Spanish), `de` (German), `pl` (Polish).
- The root layout automatically handles RTL/LTR direction based on the locale.

### 3. Authentication & Security
- **Supabase SSR:** Authentication is managed via cookies to ensure consistency between client and server.
- **RLS (Row Level Security):** Policies are enforced at the database level. 
    - Public: Can read products, brands, categories.
    - Customers: Can manage their own profiles and addresses.
    - Shop Owners: Have full access to manage products and metadata.

### 4. Administrative Actions
- Server Actions in `src/app/[locale]/admin/actions/` handle product creation, updates, and deletions.
- The `requireShopOwner` helper in `src/app/[locale]/admin/lib/auth.ts` ensures only authorized users can access the admin area.

---

## 🛠️ Key Commands

- **`pnpm dev`**: Start the development server.
- **`pnpm build`**: Build the production application.
- **`pnpm start`**: Start the production server.
- **`pnpm lint`**: Run ESLint for code quality checks.

---

## 💡 Development Workflow

- **Translations:** When adding new UI text, update all files in `src/messages/` to ensure full i18n coverage.
- **Database Changes:** Always use migrations in `supabase/migrations/`. Use `supabase db diff` to generate new migrations after making local changes to the schema.
- **Images:** Configured to allow remote images from `chilisaus.be`.
- **Formatting:** Adhere to existing Prettier and ESLint configurations. Run `pnpm lint` before pushing changes.
