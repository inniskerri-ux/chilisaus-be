/**
 * One-off script: imports Mailchimp subscribers into the mailing_list table.
 * Run once after applying migration 0131_mailing_list.sql.
 *
 * Usage: node scripts/import-mailchimp-to-supabase.mjs
 */

import { createClient } from "@supabase/supabase-js";

const MAILCHIMP_API_KEY = process.env.MAILCHIMP_API_KEY;
const MAILCHIMP_SERVER = process.env.MAILCHIMP_SERVER_PREFIX;
const MAILCHIMP_AUDIENCE_ID = process.env.MAILCHIMP_AUDIENCE_ID;
const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const SUPABASE_SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!MAILCHIMP_API_KEY || !MAILCHIMP_SERVER || !MAILCHIMP_AUDIENCE_ID) {
  console.error("Missing Mailchimp env vars");
  process.exit(1);
}
if (!SUPABASE_URL || !SUPABASE_SERVICE_KEY) {
  console.error("Missing Supabase env vars");
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_KEY);

async function fetchMembers(status, offset = 0, count = 500) {
  const url = `https://${MAILCHIMP_SERVER}.api.mailchimp.com/3.0/lists/${MAILCHIMP_AUDIENCE_ID}/members?status=${status}&count=${count}&offset=${offset}&fields=members.email_address,members.status,members.merge_fields,members.timestamp_opt,total_items`;
  const res = await fetch(url, {
    headers: {
      Authorization: `Basic ${Buffer.from(`anystring:${MAILCHIMP_API_KEY}`).toString("base64")}`,
    },
  });
  if (!res.ok) throw new Error(`Mailchimp API error: ${res.status}`);
  return res.json();
}

async function fetchAllMembers(status) {
  const members = [];
  let offset = 0;
  const count = 500;

  while (true) {
    const data = await fetchMembers(status, offset, count);
    members.push(...data.members);
    console.log(`  Fetched ${members.length} / ${data.total_items} (${status})`);
    if (members.length >= data.total_items) break;
    offset += count;
  }

  return members;
}

function mapMember(member, source = "mailchimp_import") {
  const fname = member.merge_fields?.FNAME?.trim() || null;
  const lname = member.merge_fields?.LNAME?.trim() || null;

  return {
    email: member.email_address.toLowerCase(),
    first_name: fname || null,
    last_name: lname || null,
    status: member.status === "subscribed" ? "subscribed" : "unsubscribed",
    source,
    subscribed_at: member.timestamp_opt?.trim() || null,
    unsubscribed_at: member.status === "unsubscribed" ? (member.timestamp_opt?.trim() || null) : null,
  };
}

async function upsertBatch(rows) {
  const { error } = await supabase
    .from("mailing_list")
    .upsert(rows, { onConflict: "email", ignoreDuplicates: false });

  if (error) throw error;
}

async function run() {
  console.log("Fetching subscribed members from Mailchimp...");
  const subscribed = await fetchAllMembers("subscribed");

  console.log("Fetching unsubscribed members from Mailchimp...");
  const unsubscribed = await fetchAllMembers("unsubscribed");

  // Skip 'cleaned' (bounced/invalid emails - not worth importing)
  console.log("Skipping cleaned (bounced) members.");

  const allRows = [
    ...subscribed.map((m) => mapMember(m)),
    ...unsubscribed.map((m) => mapMember(m)),
  ];

  console.log(`\nImporting ${allRows.length} members into Supabase...`);

  // Upsert in batches of 200
  const batchSize = 200;
  for (let i = 0; i < allRows.length; i += batchSize) {
    const batch = allRows.slice(i, i + batchSize);
    await upsertBatch(batch);
    console.log(`  Upserted ${Math.min(i + batchSize, allRows.length)} / ${allRows.length}`);
  }

  console.log("\nDone!");
  console.log(`  Subscribed: ${subscribed.length}`);
  console.log(`  Unsubscribed: ${unsubscribed.length}`);
  console.log(`  Total imported: ${allRows.length}`);
}

run().catch((err) => {
  console.error("Import failed:", err);
  process.exit(1);
});
