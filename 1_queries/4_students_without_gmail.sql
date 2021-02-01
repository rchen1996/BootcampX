-- get all students without gmail.com and phone number
-- get name, email, id, cohort_id
SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
AND phone IS NULL;