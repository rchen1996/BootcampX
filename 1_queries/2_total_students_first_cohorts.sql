-- select total number of students in first 3 cohorts
SELECT COUNT(id)
FROM students
WHERE cohort_id IN (1, 2, 3);