-- The dashboard query to tune: plays for one video in the last 7 days.
-- Run it with EXPLAIN ANALYZE to capture your BEFORE plan.

SELECT *
FROM play_events
WHERE video_id = 8801
  AND played_at >= now() - interval '7 days';
