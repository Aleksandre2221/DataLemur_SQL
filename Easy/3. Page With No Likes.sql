

         -- Approach 1. Using - WHERE NOT EXISTS condition-- 
SELECT page_id 
FROM pages p
WHERE NOT EXISTS (
  SELECT 1
  FROM page_likes pl 
  WHERE p.page_id = pl.page_id
);


         -- Approach 2. Using - WHERE NOT IN condition -- 
SELECT page_id 
FROM pages p
WHERE page_id NOT IN (
  SELECT page_id 
  FROM page_lieks
);
