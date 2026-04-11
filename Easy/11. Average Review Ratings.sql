


         -- Approach 1. 
SELECT 
  EXTRACT(MONTH FROM submit_date) mth, 
  product_id product, 
  ROUND(AVG(stars), 2) avg_stars 
FROM reviews
GROUP BY EXTRACT(MONTH FROM submit_date), product_id;
