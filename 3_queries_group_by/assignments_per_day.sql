-- SELECT students.name as student, count (assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) <100

-- SELECT day, count (assignments) 
-- FROM assignments
-- GROUP BY day
-- ORDER BY day;

-- SELECT day, count (assignments) as total_assignments
-- FROM assignments
-- GROUP BY day
-- HAVING COUNT(*) > 10
-- ORDER BY day

-- SELECT cohorts.name AS cohort_name, COUNT(assignment_submissions.id) AS total_submissions
-- FROM cohorts 
-- JOIN students ON cohorts.id = students.cohort_id
-- JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- GROUP BY cohorts.name
-- ORDER BY total_submissions DESC;

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;