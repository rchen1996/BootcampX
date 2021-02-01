-- get all students without Github username
-- select id, name, email, cohort_id
-- order by cohort_id

SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id;