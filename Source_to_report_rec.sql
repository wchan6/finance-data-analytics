WITH source_totals AS (
    SELECT
        strftime('%Y-%m', transaction_date) AS report_month,
        SUM(transaction_amount) AS source_amount
    FROM transactions
    GROUP BY strftime('%Y-%m', transaction_date)
)

SELECT
    s.report_month,
    s.source_amount,
    r.reported_amount,
    r.reported_amount - s.source_amount AS variance
FROM source_totals s
LEFT JOIN monthly_reporting r
    ON s.report_month = r.report_month;