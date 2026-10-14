SELECT
    strftime('%Y-%m', transaction_date) AS report_month,
    COUNT(*) AS transaction_count,
    SUM(transaction_amount) AS total_transaction_amount,
    AVG(transaction_amount) AS average_transaction_amount
FROM transactions
GROUP BY strftime('%Y-%m', transaction_date)
ORDER BY report_month;