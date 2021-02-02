-- total duration of all ARs for each cohort
-- cohort name, total duration of AR
-- order by total_duration
SELECT cohorts.name AS cohort, SUM(completed_at - started_at) AS total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;