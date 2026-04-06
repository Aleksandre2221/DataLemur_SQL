


         -- Approach 1. Using - Inne-Join --  
SELECT 
  age.age_bucket, 
  ROUND(
      SUM(CASE WHEN act.activity_type = 'send' THEN act.time_spent ELSE 0 END)
      / SUM(act.time_spent) * 100.0
    , 2
  ) send_perc,
  ROUND(
      SUM(CASE WHEN act.activity_type = 'open' THEN act.time_spent ELSE 0 END)
      / SUM(act.time_spent) * 100.0
    , 2
  ) open_perc
FROM activities act 
JOIN age_breakdown age
  ON act.user_id = age.user_id
WHERE act.activity_type IN ('send', 'open')
GROUP BY age.age_bucket;
