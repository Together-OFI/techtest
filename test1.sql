SELECT 
    country, 
    COUNT(DISTINCT user_id) as dau
FROM user_events
WHERE UPPER(event_type) = 'LOGIN' 
  AND DATE(created_at) >= '2026-01-01'
GROUP BY country;