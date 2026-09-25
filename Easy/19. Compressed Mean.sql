

         -- Approach 1. Using - ROUND -- 
SELECT 
  ROUND(
      SUM(item_count * order_occurrences)::numeric / SUM(order_occurrences)
   , 1) 
FROM items_per_order;
