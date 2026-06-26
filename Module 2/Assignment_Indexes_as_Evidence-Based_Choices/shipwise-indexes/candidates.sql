-- FIVE candidate indexes proposed by a teammate "to make things fast."
-- Do NOT just run all of these. Decide which 2–3 to keep (put them in
-- indexes.sql) and which to reject (explain in README.md).
-- Ask of each: which named access pattern (AP1–AP4) does it serve?

-- C1: composite for AP1 (filter shipment_id, then sort scanned_at)
CREATE INDEX ON shipment_events (shipment_id, scanned_at DESC);

-- C2: partial for AP2 (only unresolved exceptions)
CREATE INDEX ON shipment_events (shipment_id)
  WHERE status = 'exception' AND resolved = false;

-- C3: composite for AP4 (carrier equality + date range)
CREATE INDEX ON shipment_events (carrier, scanned_at);

-- C4: single column on a high-churn status column
CREATE INDEX ON shipment_events (status);

-- C5: single column on scan_device_id
CREATE INDEX ON shipment_events (scan_device_id);
