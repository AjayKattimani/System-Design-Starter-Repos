-- Valid baseline data. Your constraints MUST still accept all of these.

INSERT INTO patients (id, name, email) VALUES
  (1, 'Asha Rao',    'asha@example.com'),
  (2, 'Liam Chen',   'liam@example.com');

INSERT INTO doctors (id, name, speciality) VALUES
  (1, 'Dr. Mehta',   'General'),
  (2, 'Dr. Okafor',  'Cardiology');

-- A valid existing booking: doctor 1 at 09:00.
INSERT INTO appointments (patient_id, doctor_id, starts_at, ends_at, reason) VALUES
  (1, 1, '2025-06-01 09:00+00', '2025-06-01 09:30+00', 'Follow-up');

-- Keep the sequences ahead of the manual ids above.
SELECT setval('patients_id_seq',     (SELECT MAX(id) FROM patients));
SELECT setval('doctors_id_seq',      (SELECT MAX(id) FROM doctors));
