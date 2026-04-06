


         -- Approach 1. Using - Window Frames -- 
WITH total_cnt AS ( 
  SELECT 
      user_id, 
      tweet_date, 
      SUM(tweet_count) total 
  FROM tweets 
  GROUP BY user_id, tweet_date 
) 
SELECT 
    user_id, 
    tweet_date, 
    ROUND( 
        AVG(total) OVER(
                    PARTITION BY user_id 
                    ORDER BY tweet_date 
                    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
    , 2) rolling_avg_3d 
FROM total_cnt;
