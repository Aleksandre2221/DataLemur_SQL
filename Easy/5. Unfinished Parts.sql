


         -- Approach 1. Using - WHERE condition
SELECT part, assembly_step 
FROM parts_assembly
WHERE finish_date IS NULL;
