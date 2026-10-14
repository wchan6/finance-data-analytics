SELECT
    c.segment,
    COUNT(*) AS transaction_count,
    SUM(t.transaction_amount) AS total_transaction_amount,
    AVG(t.transaction_amount) AS average_transaction_amount
FROM transactions t
LEFT JOIN customers c
    ON t.customer_id = c.customer_id
WHERE
    t.customer_id IS NOT NULL
    AND TRIM(t.customer_id) <> ''
GROUP BY c.segment
ORDER BY total_transaction_amount DESC;