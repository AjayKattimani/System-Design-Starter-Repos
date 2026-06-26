# ShipWise — Evidence-Based Indexing (Starter)

A parcel-tracking schema with a write-heavy `shipment_events` table. Choose only the indexes that trace to a named access pattern, get their shape right, and reject at least one with a concrete reason.

## Setup (PostgreSQL 14+)

```bash
createdb shipwise
psql shipwise -f schema.sql
psql shipwise -f seed.sql
```

Run each query in `access-patterns.sql` with `EXPLAIN ANALYZE` before and after adding indexes to see the planner change behaviour.

## Your deliverables

1. `indexes.sql` — the 2–3 indexes you keep (at least one partial/composite), each commented with the AP it serves.
2. Complete the table and rejection below.

## Index → Access Pattern

| Index | Serves (AP#) | Why this shape | Write trade-off |
|-------|--------------|----------------|-----------------|
| _TODO_ | _TODO_ | _TODO_ | _TODO_ |

## Rejected Index

- **Rejected:** _which candidate?_
- **Query it would have helped:** _name it, or state there is none_
- **Why it's not worth the write overhead:** _concrete reason_

Branch: `evidence-based-indexes`
