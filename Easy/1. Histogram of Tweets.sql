

         -- Approach 1. Using - CTE -- 
WITH cnt AS (
  SELECT user_id, COUNT(*) cnt  
  FROM tweets
  WHERE EXTRACT(YEAR FROM tweet_date) = 2022
  GROUP BY user_id
)
SELECT cnt tweet_bucket, COUNT(*) user_num
FROM cnt 
GROUP BY cnt; 
