-- get students that don't have email or phone
-- select name, id, cohort_id
SELECT name, id, cohort_id
FROM students
WHERE email IS NULL
OR phone IS NULL;