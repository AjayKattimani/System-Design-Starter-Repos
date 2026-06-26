-- ~1,000,000 play events so the sequential scan is genuinely slow.
-- Takes a few seconds to load.

INSERT INTO videos (title) SELECT 'video_' || g FROM generate_series(1, 10000) g;

INSERT INTO play_events (video_id, user_id, device, played_at)
SELECT
  (random()*9999 + 1)::int,
  (random()*50000 + 1)::int,
  (ARRAY['web','ios','android','tv'])[(random()*3+1)::int],
  now() - (random()*90 || ' days')::interval     -- spread over ~90 days
FROM generate_series(1, 1000000);

ANALYZE play_events;
