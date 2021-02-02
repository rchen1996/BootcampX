-- get data about each AR
-- teacher's name, student's name, assignment's name, duration of AR
-- subtract completed_at by started_at to find duration
-- order by duration of request
SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at - started_at) AS duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;