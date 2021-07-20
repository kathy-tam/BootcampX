SELECT cohorts.name as cohorts, sum(completed_at-started_at) as total_duration
FROM assistance_requests 
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts
ORDER BY total_duration;