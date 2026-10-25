-- 1. Year wise loan amount Stats

SELECT
YEAR(STR_TO_DATE(CONCAT('01-',issue_d),'%d-%b-%y')) AS year_no,
SUM(loan_amnt) AS total_loan_amount,
COUNT(loan_amnt) AS total_count
FROM bank
GROUP BY year_no
ORDER BY year_no desc;

-- 2. Grade and sub grade wise revol_bal

SELECT grade,sub_grade,sum(revol_bal) AS Total_revol_bal
FROM bank
GROUP BY grade,sub_grade
ORDER BY grade,sub_grade;
 
 -- 3. Total Payment for Verified Status Vs Total Payment for Non Verified Status

SELECT verification_status,
SUM(total_pymnt) AS total_pyment,
count(*) as loan_count
FROM bank 
GROUP BY verification_status;

-- 4. State wise and month wise loan status

SELECT
    MONTH(STR_TO_DATE(CONCAT('01-',issue_d),'%d-%b-%y')) AS month_no,
    addr_state AS state,
    loan_status AS status,
    COUNT(loan_status) AS total_loans
FROM bank
GROUP BY month_no, addr_state, loan_status
ORDER BY month_no,state;

-- 5.Home ownership Vs last payment date stats

SELECT home_ownership,last_pymnt_d ,
COUNT(last_pymnt_amnt) as total_count,
SUM(last_pymnt_amnt) as total_amount
FROM bank
GROUP BY home_ownership,last_pymnt_d
ORDER BY  home_ownership,last_pymnt_d;
