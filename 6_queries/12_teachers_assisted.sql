-- get name of all teachers that performed an AR during a cohort
-- select teachers.name, cohorts.name
-- don't repeat instructor's name
-- order by instructor's name
SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;