-- Small seed so EXPLAIN plans are meaningful. Scale up if you want to see
-- the planner switch to index scans.

INSERT INTO orders (customer) SELECT 'cust_' || g FROM generate_series(1, 50) g;

INSERT INTO shipments (order_id, carrier)
SELECT (random()*49 + 1)::int, (ARRAY['bluedart','dhl','fedex'])[(random()*2+1)::int]
FROM generate_series(1, 200);

INSERT INTO shipment_events (shipment_id, carrier, status, resolved, scan_device_id, scanned_at)
SELECT
  (random()*199 + 1)::int,
  (ARRAY['bluedart','dhl','fedex'])[(random()*2+1)::int],
  (ARRAY['in_transit','in_transit','in_transit','delivered','exception'])[(random()*4+1)::int],
  (random() > 0.1),                       -- ~10% unresolved
  'dev_' || (random()*20)::int,
  now() - (random()*30 || ' days')::interval
FROM generate_series(1, 20000);
