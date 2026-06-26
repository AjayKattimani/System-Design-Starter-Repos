-- Seed data that EXHIBITS the anomalies.
-- Note: "DevConf 2025" appears with TWO different organiser spellings
-- (Organiser@DevConf.com vs organiser@devconf.com) — the inconsistency
-- your repair must collapse into one canonical event.

INSERT INTO registrations (attendee_email, event_name, event_venue, organiser_email) VALUES
  ('asha@example.com',  'DevConf 2025', 'Hall A', 'Organiser@DevConf.com'),
  ('liam@example.com',  'DevConf 2025', 'Hall A', 'organiser@devconf.com'),
  ('mara@example.com',  'DevConf 2025', 'Hall A', 'Organiser@DevConf.com'),
  ('nico@example.com',  'DataSummit',   'Room 3', 'host@datasummit.io'),
  ('opal@example.com',  'DataSummit',   'Room 3', 'host@datasummit.io');

-- Try the update anomaly yourself: move DevConf to "Hall B" and watch how
-- many rows you must touch — and what happens if one is missed.
--   UPDATE registrations SET event_venue = 'Hall B' WHERE event_name = 'DevConf 2025';
