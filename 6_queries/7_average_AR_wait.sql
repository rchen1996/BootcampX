-- average time to start an AR
SELECT AVG(started_at - created_at) AS average_wait_time
FROM assistance_requests;