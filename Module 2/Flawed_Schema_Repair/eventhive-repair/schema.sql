-- EventHive — registrations (FLAWED FLAT SCHEMA — STARTER)
-- Everything lives in one table. Event facts (name, venue, organiser) are
-- repeated on every registration row. There is no events table and no FK.
-- Your job (see the assignment) is to find the anomalies and repair this.

DROP TABLE IF EXISTS registrations;

CREATE TABLE registrations (
  id              SERIAL PRIMARY KEY,
  attendee_email  TEXT,
  event_name      TEXT,          -- repeated per registration
  event_venue     TEXT,          -- repeated per registration (update anomaly)
  organiser_email TEXT,          -- repeated + already inconsistent in the data
  registered_at   TIMESTAMPTZ DEFAULT now()
);
