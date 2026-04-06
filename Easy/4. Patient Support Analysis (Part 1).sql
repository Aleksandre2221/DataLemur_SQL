


         -- Approach 1. Using - CTE -- 
WITH many_calls AS (
  SELECT policy_holder_id 
  FROM callers
  GROUP BY policy_holder_id
  HAVING COUNT(case_id) >= 3
)
SELECT COUNT(*) policy_holder_count  
FROM many_calls;
