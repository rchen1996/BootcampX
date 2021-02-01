-- get students currently enrolled
-- name, id, cohort_id
-- order by cohort_id
SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;