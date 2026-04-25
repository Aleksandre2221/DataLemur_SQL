


         -- Approach 1. Using two - Subqueries -- 
SELECT 
  ROUND(
      (SELECT COUNT(*) FROM texts WHERE signup_action = 'Confirmed') * 1.0 
      / (SELECT COUNT(DISTINCT user_id) FROM emails)
  , 2)
