-- indexes.sql — YOU WRITE THIS.
--
-- Add the 1-2 targeted indexes that fix the slow dashboard query.
-- Get the composite column order right: equality column (video_id) before
-- the range column (played_at), so the planner will actually use it.
--
-- After adding, re-run EXPLAIN ANALYZE on slow-query.sql and capture the
-- AFTER plan for your tuning-note.md.

-- TODO: your index(es) here
