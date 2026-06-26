# MediTrack — Constraints as System Rules (Starter)

A small clinic appointment schema with almost no constraints. Your task is to add the database constraints that block four invalid states, and document the system rule each one protects.

## Setup (PostgreSQL 14+)

```bash
createdb meditrack
psql meditrack -f schema.sql
psql meditrack -f seed.sql
psql meditrack -f invalid-data.sql   # observe: these WRONGLY succeed (the bug)
```

Then write your constraints in `constraints.sql`, load them, and re-run `invalid-data.sql` — every insert must now fail.

```bash
psql meditrack -f constraints.sql
psql meditrack -f invalid-data.sql   # every statement must now ERROR
```

## Your deliverables

1. `constraints.sql` — NOT NULL, UNIQUE, CHECK, FK (with an explicit `ON DELETE`).
2. `invalid-data.sql` — the four bad inserts, each failing for its matching constraint.
3. Complete the table below.

## Constraint → System Rule

| Constraint | Type | System rule it protects |
|------------|------|-------------------------|
| _TODO_ | _TODO_ | _TODO_ |

**Cascade decision:** _Which `ON DELETE` action did you pick for the doctor foreign key, and why?_

Branch: `add-constraints`
