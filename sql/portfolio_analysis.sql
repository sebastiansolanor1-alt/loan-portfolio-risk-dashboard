-- Total loans

SELECT
COUNT(*) AS total_loans
FROM lendingclub.loans_clean;



-- Total loan amount

SELECT
SUM(loan_amnt) AS total_loan_amount
FROM lendingclub.loans_clean;



-- Average interest rate

SELECT
AVG(int_rate) AS avg_interest_rate
FROM lendingclub.loans_clean;



-- Portfolio default rate

SELECT
AVG(default_flag) AS default_rate
FROM lendingclub.loans_clean;



-- Default rate by loan purpose

SELECT
purpose,
COUNT(*) AS total_loans,
AVG(default_flag) AS default_rate

FROM lendingclub.loans_clean

GROUP BY purpose

ORDER BY default_rate DESC;



-- Loan volume by credit grade

SELECT
grade,
SUM(loan_amnt) AS total_amount

FROM lendingclub.loans_clean

GROUP BY grade

ORDER BY grade;



-- Default rate by credit grade

SELECT
grade,
AVG(default_flag) AS default_rate

FROM lendingclub.loans_clean

GROUP BY grade

ORDER BY grade;