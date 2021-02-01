-- get total assignments for each day of bootcamp
-- select day and total assignments
-- order by day
SELECT day, COUNT(*) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day;