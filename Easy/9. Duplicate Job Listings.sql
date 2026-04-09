


         -- Approach 1. Using - CTE -- 
WITH duplicates AS (
    SELECT company_id
    FROM job_listings
    GROUP BY company_id, title, description
    HAVING COUNT(*) > 1
)
SELECT COUNT(DISTINCT company_id) duplicate_companies
FROM duplicates;
