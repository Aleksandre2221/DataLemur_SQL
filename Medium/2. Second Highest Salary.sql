

         -- Approach 1. Using - CTE with a Window Function - RANK() -- 
WITH ranking AS (
  SELECT *, RANK() OVER(ORDER BY salary DESC) rnk
  FROM employee
)
SELECT salary second_highest_salary
FROM ranking
WHERE rnk = 2;
