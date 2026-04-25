


         -- Approach 1. Using - SUM with - CASE...WHEN conditions -- 
SELECT  
  account_id, 
  SUM(CASE WHEN transaction_type = 'Deposit' THEN amount ELSE -amount END) final_balance
FROM transactions
GROUP BY account_id;
