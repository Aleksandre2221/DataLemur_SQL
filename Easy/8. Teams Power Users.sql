


         -- Approach 1. Using - ORDER BY e LIMIT --
SELECT 
  sender_id, 
  COUNT(*) message_count
FROM messages
WHERE TO_CHAR(sent_date, 'YYYY-MM') = '2022-08'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;
