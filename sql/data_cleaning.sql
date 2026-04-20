CREATE OR REPLACE TABLE lendingclub.loans_clean AS

SELECT
    loan_amnt,
    
    CAST(int_rate AS FLOAT64) AS int_rate,
    
    annual_inc,
    
    purpose,
    
    grade,
    
    emp_length,
    
    home_ownership,

    PARSE_DATE('%b-%Y', issue_d) AS issue_d,

    loan_status,

    CASE
        WHEN loan_status = 'Charged Off' THEN 1
        ELSE 0
    END AS default_flag

FROM lendingclub.loans_raw

WHERE loan_status IS NOT NULL;