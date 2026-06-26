-- The NAMED access patterns. These are your evidence: every index you keep
-- must trace back to one of AP1–AP4. AP5 has no query — that is the trap.
-- Run each with EXPLAIN ANALYZE before and after adding your indexes.

-- AP1 — Live tracking page: latest events for one shipment, newest first.
-- EXPLAIN ANALYZE
SELECT * FROM shipment_events
WHERE shipment_id = 42
ORDER BY scanned_at DESC
LIMIT 20;

-- AP2 — Ops dashboard: only the unresolved exceptions (a small bounded subset).
-- EXPLAIN ANALYZE
SELECT * FROM shipment_events
WHERE status = 'exception' AND resolved = false;

-- AP3 — Order lookup: all shipments for one order (on the shipments table).
-- EXPLAIN ANALYZE
SELECT * FROM shipments WHERE order_id = 7;

-- AP4 — Carrier report: events for a carrier within a date range.
-- EXPLAIN ANALYZE
SELECT * FROM shipment_events
WHERE carrier = 'dhl'
  AND scanned_at BETWEEN now() - interval '7 days' AND now();

-- AP5 — (none): nothing in the product filters or sorts by scan_device_id.
