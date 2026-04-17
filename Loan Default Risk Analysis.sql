Create database loan_project;

use loan_project;

CREATE TABLE loans (
    Loan_ID VARCHAR(50),
    Gender VARCHAR(10),
    Married VARCHAR(10),
    Dependents INT,
    Education VARCHAR(50),
    Self_Employed VARCHAR(10),
    ApplicantIncome INT,
    CoapplicantIncome INT,
    LoanAmount FLOAT,
    Loan_Amount_Term INT,
    Credit_History INT,
    Property_Area VARCHAR(50),
    Loan_Status VARCHAR(20),
    TotalIncome FLOAT,
    Income_Group VARCHAR(20),
    Risk_Category VARCHAR(20)
);

SELECT * FROM loans;

SELECT Loan_Status, COUNT(*) AS total
FROM loans
GROUP BY Loan_Status;

SELECT 
    Credit_History,
    COUNT(*) AS total,
    SUM(CASE WHEN Loan_Status = 'Approved' THEN 1 ELSE 0 END) AS approved
FROM loans
GROUP BY Credit_History;

SELECT 
    Income_Group,
    COUNT(*) AS total,
    AVG(CAST(LoanAmount AS DECIMAL(10,2))) AS avg_loan
FROM loans
GROUP BY Income_Group;

SELECT 
    Property_Area,
    COUNT(*) AS total,
    SUM(CASE WHEN Loan_Status = 'Approved' THEN 1 ELSE 0 END) AS approved
FROM loans
GROUP BY Property_Area;

SELECT *
FROM loans
WHERE Credit_History = 0;





