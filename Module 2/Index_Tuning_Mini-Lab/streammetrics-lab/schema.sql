-- StreamMetrics — play events (STARTER)
-- play_events is large and currently has ONLY its primary key index.
-- The dashboard query filters by video_id + a recent time window and is slow.

DROP TABLE IF EXISTS play_events;
DROP TABLE IF EXISTS videos;

CREATE TABLE videos (
  id     SERIAL PRIMARY KEY,
  title  TEXT NOT NULL
);

CREATE TABLE play_events (
  id          BIGSERIAL PRIMARY KEY,
  video_id    INTEGER NOT NULL,
  user_id     INTEGER NOT NULL,
  device      TEXT,
  played_at   TIMESTAMPTZ NOT NULL
);
-- Note: no index on (video_id, played_at) yet. That's the point of the lab.
