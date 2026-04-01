-- Detect failed login attempts by IP
SELECT source_ip, COUNT(*) as attempts
FROM security_logs
WHERE status = 'Failed'
GROUP BY source_ip;

-- Investigate suspicious IP
SELECT *
FROM security_logs
WHERE source_ip = '10.0.0.50'
ORDER BY timestamp;
