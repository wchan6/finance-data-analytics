# Finance Data Quality and Product Analytics

This project uses a synthetic financial transaction dataset to practice SQL-based data analysis and basic business reporting.

The goal was to look at the data from both a finance controls perspective and a business analysis perspective.

I used SQL to identify data quality issues, reconcile transaction-level activity to monthly reported totals, and analyze transaction trends and customer segment performance.

## Tools Used

- SQL (SQLite)
- DB Browser for SQLite
- Google Sheets
- CSV data files

## Dataset

The project contains four related datasets:

- `customers` — customer information and customer segment classifications
- `accounts` — account master data
- `transactions` — transaction-level financial activity
- `monthly_reporting` — monthly reported transaction totals

The dataset includes several intentional data quality issues so that I could practice identifying and investigating exceptions.

## SQL Analysis

### 1. Completeness Check

I reviewed the transaction data for missing customer IDs, account IDs, and transaction amounts.

Results:

- 123 total transaction records
- 2 records with missing customer IDs
- 1 record with a missing account ID
- 0 records with missing transaction amounts

### 2. Duplicate Transactions

I grouped the transaction data by transaction ID to identify records that appeared more than once.

The analysis identified 3 transaction IDs that appeared twice and could potentially cause double counting in downstream reporting.

### 3. Orphan Account Check

I compared account IDs in the transaction table against the account master table.

This identified 3 transactions that referenced account IDs that did not exist in the account master data.

These types of exceptions could result from data-entry, mapping, system integration, or master-data issues and could cause transactions to be excluded from reporting.

### 4. Source-to-Report Reconciliation

I summarized transaction activity by month and compared those totals against the monthly reporting table.

Most months reconciled successfully, while 2 months contained differences between the underlying transaction data and the reported amount.

This type of analysis can help identify reporting or data-processing issues that require further investigation.

### 5. Monthly Transaction Analysis

I summarized transaction activity by month using:

- transaction count
- total transaction value
- average transaction value

This provides a simple view of how financial activity changes over time.

### 6. Customer Segment Analysis

I combined the transaction and customer data to compare activity across customer segments.

The analysis looked at:

- transaction count
- total transaction value
- average transaction value

This demonstrates how transaction-level data can be used to identify differences in customer behavior and business performance.

## Visual Reporting

I created two simple business-facing charts in Google Sheets.

The first shows total transaction value by month and provides a view of transaction activity over time.

The second compares total transaction value across customer segments.

## Key Takeaways

This project gave me practice using SQL to work through several common finance and business data problems, including:

- missing information
- duplicate records
- broken account mappings
- reconciliation differences
- monthly trend analysis
- customer segmentation

It also helped connect traditional finance concepts such as reconciliation and exception analysis with SQL-based data analysis and business reporting.

## Data Note

All data used in this project is synthetic and was created for portfolio and learning purposes.

No confidential or proprietary company information is included.
