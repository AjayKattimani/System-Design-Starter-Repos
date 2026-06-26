# EventHive — Flawed Schema Repair (Starter)

A single flat `registrations` table with real data-integrity problems. Find the anomalies, repair the schema, and defend your decisions.

## Setup (PostgreSQL 14+)

```bash
createdb eventhive
psql eventhive -f schema.sql
psql eventhive -f seed.sql

-- See the inconsistency for yourself:
psql eventhive -c "SELECT DISTINCT event_name, event_venue, organiser_email FROM registrations;"
```

## Your deliverables

1. `repair.sql` — repaired schema (new `events` table, keys, foreign key) + a data migration that de-duplicates events.
2. `defence-note.md` — the anomaly (with real consequences), the repair, and any trade-off you keep.

## Verify your repair

After running `repair.sql`, an event's venue should change with a **single** UPDATE, and every registration should reference a real event via the foreign key.

Branch: `schema-repair`
