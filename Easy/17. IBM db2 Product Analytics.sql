

         -- Approach 1. Using multiple - CTE's and - UNION ALL -- 
WITH 
  t1 AS (
    SELECT
      employee_id,
      COUNT(DISTINCT query_id) unique_queries
    FROM queries 
    WHERE query_starttime >= '2023-07-01'::timestamp
      AND query_starttime < '2023-10-01'::timestamp  
    GROUP BY employee_id
  ),
  t2 AS (
    SELECT COUNT(DISTINCT employee_id) employee_count
    FROM employees 
    WHERE employee_id NOT IN (SELECT employee_id FROM t1) 
  ),
  t3 AS (
    SELECT 
      unique_queries,
      COUNT(*) employee_count
    FROM t1 
    GROUP BY unique_queries
)
SELECT 0 unique_queries, employee_count FROM t2 
  
UNION ALL
  
SELECT unique_queries, employee_count FROM t3
ORDER BY unique_queries;


