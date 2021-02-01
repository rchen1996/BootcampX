-- get students who's average time it takes to complete assignment is < average time to complete assignment
-- select student name, avg completion time, avg suggested completion time
-- order by avg completion time from smallest to largest
-- only currently enrolled students
SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration, AVG(assignments.duration) AS average_estimated_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG (assignments.duration)
ORDER BY average_assignment_duration;