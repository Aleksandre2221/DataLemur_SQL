


         -- Approach 1. Using - Join -- 
SELECT 
  u.city, 
  COUNT(*) total_orders
FROM trades t 
JOIN users u ON t.user_id = u.user_id
WHERE t.status = 'Completed'
GROUP BY u.city
ORDER BY COUNT(*) DESC
LIMIT 3;
