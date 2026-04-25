


         -- Approach 1. Using - CTE with - DENSE_RANK() -- 
WITH ranking AS (
  SELECT 
    d.department_name, 
    e.name, 
    e.salary, 
    DENSE_RANK() OVER(
            PARTITION BY d.department_id 
            ORDER BY e.salary DESC) rnk 
  FROM employee e 
  JOIN department d 
     ON e.department_id = d.department_id
)
SELECT department_name, name, salary
FROM ranking 
WHERE rnk <= 3 
ORDER BY department_name, salary DESC, name;
