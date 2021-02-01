-- get names of all students from single cohort
-- select id and name
-- order by name in alphabetical order
SELECT id, name
FROM students
WHERE cohort_id = 1
ORDER BY name;