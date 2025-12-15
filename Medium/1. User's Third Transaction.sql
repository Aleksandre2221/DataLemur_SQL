

         -- Approach 1. Using - CTE with a Window Function - ROW_NUMBER() -- 
WITH row_num AS (
  SELECT *, ROW_NUMBER() OVER(PARTITION BY user_id ORDER BY transaction_date) rn
  FROM transactions
)
SELECT user_id, spend, transaction_date
FROM row_num 
WHERE rn = 3;
