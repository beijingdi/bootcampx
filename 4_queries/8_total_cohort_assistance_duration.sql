SELECT cohort.name as cohort, sum(completed_at - started_at) as total_duration
FROM cohorts
JOIN students on cohorts.id = cohort_id
JOIN assistance_requests on students.id = student_id
GROUP BY cohort.name
ORDER BY total_duration;