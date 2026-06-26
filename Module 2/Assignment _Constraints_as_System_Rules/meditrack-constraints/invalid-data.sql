-- FOUR INVALID STATES.
-- On the STARTER schema these all WRONGLY succeed — that is the bug.
-- After you add your constraints (constraints.sql), every one must FAIL.
--
-- Each insert is wrapped in its own BEGIN/ROLLBACK so it is DEMONSTRATION
-- ONLY and never leaves a row behind — that way you can run this file both
-- before AND after adding constraints without polluting the table (and
-- without blocking the constraints from being created).
-- Keep one INSERT per state and keep the comment naming the state.

-- INVALID 1: appointment with no patient (should fail NOT NULL on patient_id)
BEGIN;
INSERT INTO appointments (patient_id, doctor_id, starts_at, ends_at)
VALUES (NULL, 1, '2025-06-01 11:00+00', '2025-06-01 11:30+00');
ROLLBACK;

-- INVALID 2: doctor 999 does not exist (should fail a foreign key)
BEGIN;
INSERT INTO appointments (patient_id, doctor_id, starts_at, ends_at)
VALUES (1, 999, '2025-06-01 12:00+00', '2025-06-01 12:30+00');
ROLLBACK;

-- INVALID 3: appointment ends before it starts (should fail a CHECK)
BEGIN;
INSERT INTO appointments (patient_id, doctor_id, starts_at, ends_at)
VALUES (1, 1, '2025-06-01 10:00+00', '2025-06-01 09:30+00');
ROLLBACK;

-- INVALID 4: doctor 1 double-booked at 09:00 (should fail a UNIQUE)
BEGIN;
INSERT INTO appointments (patient_id, doctor_id, starts_at, ends_at)
VALUES (2, 1, '2025-06-01 09:00+00', '2025-06-01 09:30+00');
ROLLBACK;
