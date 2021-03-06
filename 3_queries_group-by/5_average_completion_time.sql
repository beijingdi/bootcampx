SELECT students.name as student, SUM(assignment_submissions.duration)/COUNT(assignment_submissions.*) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;
