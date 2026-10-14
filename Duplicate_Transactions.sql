SELECT
    transaction_id,
    COUNT(*) AS record_count
FROM transactions
GROUP BY transaction_id
HAVING COUNT(*) > 1;