


         -- Approach 1. Using - CTE -- 
WITH ranking AS (
  SELECT 
      category, 
      product, 
      SUM(spend) total_spend, 
      RANK() OVER(PARTITION BY category ORDER BY SUM(spend) DESC) rnk
  FROM product_spend
  WHERE EXTRACT(YEAR FROM transaction_date) = 2022
  GROUP BY category, product
)
SELECT category, product, total_spend
FROM ranking 
WHERE rnk <= 2;
