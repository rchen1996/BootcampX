-- get each day with total # of assignments and total duration
-- select day, # of assignments, total duration
-- order by day
SELECT day, COUNT(*) AS number_of_assignments, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;