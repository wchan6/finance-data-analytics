SELECT
    t.transaction_id,
    t.account_id
FROM transactions t
LEFT JOIN accounts a
    ON t.account_id = a.account_id
WHERE
    t.account_id IS NOT NULL
    AND TRIM(t.account_id) <> ''
    AND a.account_id IS NULL;