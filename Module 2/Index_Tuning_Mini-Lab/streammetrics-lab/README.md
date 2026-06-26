# StreamMetrics — Index Tuning Mini-Lab (Starter)

A large `play_events` table where the dashboard query has gone slow. Read the plan, fix the bottleneck with a targeted index, and prove it with before/after `EXPLAIN ANALYZE`.

## Setup (PostgreSQL 14+)

```bash
createdb streammetrics
psql streammetrics -f schema.sql
psql streammetrics -f seed.sql        # ~1M rows, takes a few seconds

# Capture the BEFORE plan:
psql streammetrics -c "EXPLAIN ANALYZE $(cat slow-query.sql)"
```

`explain-before.txt` has a reference capture of the slow plan.

## Your deliverables

1. `indexes.sql` — the 1-2 targeted indexes (correct composite column order).
2. `tuning-note.md` — bottleneck, proposed index, before/after plans, and a rejected index.

## Verify

After running `indexes.sql`, re-run the `EXPLAIN ANALYZE` — the plan must switch from **Seq Scan** to **Index Scan** and Execution Time should drop sharply.

Branch: `index-tuning`
