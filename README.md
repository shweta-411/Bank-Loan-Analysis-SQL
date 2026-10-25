# Bank Loan Analysis Using SQL

## Project Overview
This project analyzes bank loan data using SQL in MySQL Workbench. The purpose is to explore loan amounts, borrower information, repayment details, and loan status to understand lending patterns.

## Tools Used
- MySQL
- MySQL Workbench
- SQL

## SQL Analysis Performed

### 1. Year-wise Loan Amount Statistics
- Calculated the total loan amount for each year.
- Counted loan records year-wise.
- Sorted the results by year in descending order.

### 2. Grade and Sub-grade-wise Revolving Balance
- Analyzed the total revolving balance for each loan grade and sub-grade.
- Grouped and sorted the results by grade and sub-grade.

### 3. Verified vs. Non-Verified Payments
- Compared total payments across verification statuses.
- Counted the number of loans for each verification status.

### 4. State-wise and Month-wise Loan Status
- Analyzed loan counts by issue month, state, and loan status.
- Used grouping to identify patterns across locations and months.

### 5. Home Ownership vs. Last Payment Date
- Analyzed the number of records and total last payment amounts by home ownership and last payment date.

## SQL Concepts Used
- `SELECT`
- Aggregate functions: `SUM()` and `COUNT()`
- `GROUP BY`
- `ORDER BY`
- `YEAR()` and `MONTH()`
- `STR_TO_DATE()`
- `CONCAT()`

## Project File
- `bank_loan_analysis.sql` — SQL queries for the five analyses.

## Conclusion
This project demonstrates how SQL can be used to summarize bank loan data, compare payment information, and analyze loan trends by year, state, grade, verification status, and home ownership.
