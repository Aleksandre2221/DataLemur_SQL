

         -- Approach 1. Using - STRING_AGG in - HAVING clause --
SELECT candidate_id
FROM candidates
GROUP BY candidate_id
HAVING STRING_AGG(skill, ', ') IN ('Python, Tableau, PostgreSQL')
ORDER BY candidate_id;  
