-- rate_limit_check is SECURITY DEFINER; Postgres grants EXECUTE to PUBLIC
-- by default on function creation, so anon/authenticated could otherwise
-- call it directly via PostgREST (/rest/v1/rpc/rate_limit_check) to read
-- or manipulate other callers' counters. It's only ever meant to be called
-- from our own server code via the service-role admin client.

revoke execute on function public.rate_limit_check(text, integer, integer) from public;
revoke execute on function public.rate_limit_check(text, integer, integer) from anon, authenticated;

alter table public.rate_limit_hits enable row level security;
-- No policies: anon/authenticated get no access at all (service_role
-- bypasses RLS), matching the "server-code only" access model above.
