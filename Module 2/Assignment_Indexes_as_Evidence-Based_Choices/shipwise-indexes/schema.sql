-- ShipWise — parcel tracking schema (STARTER)
-- The write-heavy table is shipment_events. Your indexing decisions
-- (see the assignment) focus there.

DROP TABLE IF EXISTS shipment_events;
DROP TABLE IF EXISTS shipments;
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  id          SERIAL PRIMARY KEY,
  customer    TEXT NOT NULL,
  placed_at   TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE shipments (
  id          SERIAL PRIMARY KEY,
  order_id    INTEGER NOT NULL REFERENCES orders(id),
  carrier     TEXT NOT NULL,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- High-volume: one row per scan event. Currently has only the primary key index.
CREATE TABLE shipment_events (
  id              BIGSERIAL PRIMARY KEY,
  shipment_id     INTEGER NOT NULL REFERENCES shipments(id),
  carrier         TEXT    NOT NULL,
  status          TEXT    NOT NULL,   -- 'in_transit' | 'delivered' | 'exception' | ...
  resolved        BOOLEAN NOT NULL DEFAULT true,
  scan_device_id  TEXT,
  scanned_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);
