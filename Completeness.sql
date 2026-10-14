SELECT
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN customer_id IS NULL OR TRIM(customer_id) = '' THEN 1 ELSE 0 END) AS missing_customer_id,
    SUM(CASE WHEN account_id IS NULL OR TRIM(account_id) = '' THEN 1 ELSE 0 END) AS missing_account_id,
    SUM(CASE WHEN transaction_amount IS NULL THEN 1 ELSE 0 END) AS missing_amount
FROM transactions;