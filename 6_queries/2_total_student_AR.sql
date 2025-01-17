-- get total number of AR for a student
SELECT COUNT(assistance_requests.*) AS total_assistances, students.name
FROM assistance_requests
JOIN students ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;