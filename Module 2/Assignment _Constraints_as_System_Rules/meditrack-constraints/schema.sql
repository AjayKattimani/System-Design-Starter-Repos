-- MediTrack — appointment booking schema (UNDER-CONSTRAINED STARTER)
-- This schema compiles and runs, but it enforces almost no rules.
-- Your job (see the assignment) is to add the constraints that block
-- the four invalid states described in invalid-data.sql.

DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS doctors;
DROP TABLE IF EXISTS patients;

CREATE TABLE patients (
  id    SERIAL PRIMARY KEY,
  name  TEXT NOT NULL,
  email TEXT
);

CREATE TABLE doctors (
  id          SERIAL PRIMARY KEY,
  name        TEXT NOT NULL,
  speciality  TEXT
);

-- The problem table. Note what is MISSING:
--   * patient_id has no NOT NULL and no foreign key
--   * doctor_id has no foreign key (can point at a deleted/absent doctor)
--   * no CHECK that ends_at is after starts_at
--   * no UNIQUE preventing the same doctor being booked at the same time
CREATE TABLE appointments (
  id          SERIAL PRIMARY KEY,
  patient_id  INTEGER,
  doctor_id   INTEGER,
  starts_at   TIMESTAMPTZ,
  ends_at     TIMESTAMPTZ,
  reason      TEXT
);
