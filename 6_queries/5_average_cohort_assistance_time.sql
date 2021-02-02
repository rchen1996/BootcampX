-- get average duration of AR for each cohort
-- cohort name, average assistance request time
-- order results from shortest avg to longest
SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
FROM students
JOIN assistance_requests ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;