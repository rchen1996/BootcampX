-- get currently enrolled students' average assignment completion time
-- select students name and average time from assignment submissions
-- order from greatest duration to least
-- student will have a null end_date if currently enrolled
SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;