-- get cohort with longest avg duration of assistance requests
SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
FROM students
JOIN assistance_requests ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;