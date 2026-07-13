/**
 * One-off script: backfills existing mailing_list rows into the Resend
 * audience used for broadcasts. Run once after setting RESEND_AUDIENCE_ID.
 * Safe to re-run — Resend's contact create endpoint upserts by email.
 *
 * Usage: node scripts/sync-mailing-list-to-resend.mjs
 */

import dotenv from "dotenv";
import { createClient } from "@supabase/supabase-js";
import { Resend } from "resend";

dotenv.config({ path: ".env.local" });

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const SUPABASE_SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
const RESEND_API_KEY = process.env.RESEND_API_KEY;
const AUDIENCE_ID = process.env.RESEND_AUDIENCE_ID;

if (!SUPABASE_URL || !SUPABASE_SERVICE_KEY) {
  console.error("Missing Supabase env vars");
  process.exit(1);
}
if (!RESEND_API_KEY || !AUDIENCE_ID) {
  console.error("Missing RESEND_API_KEY or RESEND_AUDIENCE_ID env vars");
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_KEY);
const resend = new Resend(RESEND_API_KEY);

// Resend's default rate limit is 5 req/s per team — stay under that.
const REQUESTS_PER_SECOND = 4;
const DELAY_MS = 1000 / REQUESTS_PER_SECOND;

const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

async function run() {
  // PostgREST caps unpaginated selects at 1000 rows — page through explicitly.
  const rows = [];
  const pageSize = 1000;
  for (let from = 0; ; from += pageSize) {
    const { data, error } = await supabase
      .from("mailing_list")
      .select("email, first_name, last_name, status")
      .neq("status", "cleaned")
      .range(from, from + pageSize - 1);

    if (error) throw error;
    rows.push(...data);
    if (data.length < pageSize) break;
  }

  console.log(`Syncing ${rows.length} contacts to Resend audience ${AUDIENCE_ID}...`);

  let synced = 0;
  let failed = 0;

  for (const row of rows) {
    const { error: syncError } = await resend.contacts.create({
      email: row.email.toLowerCase(),
      firstName: row.first_name || undefined,
      lastName: row.last_name || undefined,
      unsubscribed: row.status === "unsubscribed",
      segments: [{ id: AUDIENCE_ID }],
    });

    if (syncError) {
      failed++;
      console.error(`  Failed: ${row.email} — ${syncError.message}`);
    } else {
      synced++;
    }

    if ((synced + failed) % 100 === 0) {
      console.log(`  Progress: ${synced + failed} / ${rows.length}`);
    }

    await sleep(DELAY_MS);
  }

  console.log("\nDone!");
  console.log(`  Synced: ${synced}`);
  console.log(`  Failed: ${failed}`);
}

run().catch((err) => {
  console.error("Sync failed:", err);
  process.exit(1);
});
