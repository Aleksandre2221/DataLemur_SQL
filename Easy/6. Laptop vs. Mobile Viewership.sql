


         -- Approach 1. Using - CASE...WHEN condtions -- 
SELECT 
  SUM(
      CASE 
          WHEN device_type = 'laptop' 
          THEN 1 
          ELSE 0 
      END) laptop_views,
  SUM(
      CASE 
          WHEN device_type = 'phone' 
            OR device_type = 'tablet' 
          THEN 1 
          ELSE 0 
      END) mobile_views
FROM viewership;
