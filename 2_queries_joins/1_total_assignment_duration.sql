SELECT SUM(assignment_submissions.total_duration) as total_duration,
FROM assignment_submissions,
JOIN students ON students.id = studnet_id,
WHERE students.name = 'Ibrahim Schimmel';