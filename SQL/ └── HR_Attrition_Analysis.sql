CREATE DATABASE hr_attrition;
USE hr_attrition;
SELECT DATABASE();
CREATE TABLE employees (
    Age INT,
    Attrition VARCHAR(3),
    BusinessTravel VARCHAR(20),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    OverTime VARCHAR(3),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);
show tables;
describe employees;
SELECT COUNT(*) FROM employees;
USE hr_attrition;

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT *
FROM employees
LIMIT 10;

SELECT Attrition, COUNT(*) AS employees
FROM employees
GROUP BY Attrition;

SELECT
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS attrition_rate
FROM employees;

SELECT
    Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS attrition_rate
FROM employees
GROUP BY Department
ORDER BY attrition_rate DESC;

SELECT
    OverTime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS attrition_rate
FROM employees
GROUP BY OverTime
ORDER BY attrition_rate DESC;

SELECT
    JobRole,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS attrition_rate
FROM employees
GROUP BY JobRole
ORDER BY attrition_rate DESC;

SELECT
    JobLevel,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS attrition_rate
FROM employees
GROUP BY JobLevel
ORDER BY JobLevel;

SELECT
    BusinessTravel,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS attrition_rate
FROM employees
GROUP BY BusinessTravel
ORDER BY attrition_rate DESC;

SELECT
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS attrition_rate
FROM employees
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

SELECT
    Department,
    OverTime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS attrition_rate
FROM employees
GROUP BY Department, OverTime
ORDER BY Department, attrition_rate DESC;

SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        WHEN Age BETWEEN 56 AND 60 THEN '56-60'
    END AS age_group,

    COUNT(*) AS total_employees,

    SUM(
        CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END
    ) AS employees_left,

    ROUND(
        SUM(
            CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END
        ) / COUNT(*) * 100,
        2
    ) AS attrition_rate

FROM employees
GROUP BY age_group
ORDER BY age_group;

SELECT
    CASE
        WHEN YearsAtCompany BETWEEN 0 AND 2 THEN '0-2 Years'
        WHEN YearsAtCompany BETWEEN 3 AND 5 THEN '3-5 Years'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 Years'
        WHEN YearsAtCompany BETWEEN 11 AND 20 THEN '11-20 Years'
        WHEN YearsAtCompany >= 21 THEN '21+ Years'
    END AS tenure_group,

    COUNT(*) AS total_employees,

    SUM(
        CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END
    ) AS employees_left,

    ROUND(
        SUM(
            CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END
        ) / COUNT(*) * 100,
        2
    ) AS attrition_rate

FROM employees

GROUP BY tenure_group

ORDER BY
    CASE tenure_group
        WHEN '0-2 Years' THEN 1
        WHEN '3-5 Years' THEN 2
        WHEN '6-10 Years' THEN 3
        WHEN '11-20 Years' THEN 4
        WHEN '21+ Years' THEN 5
    END;
    
    SELECT
    CASE
        WHEN MonthlyIncome < 3000 THEN 'Below 3000'
        WHEN MonthlyIncome BETWEEN 3000 AND 5999 THEN '3000-5999'
        WHEN MonthlyIncome BETWEEN 6000 AND 9999 THEN '6000-9999'
        WHEN MonthlyIncome BETWEEN 10000 AND 14999 THEN '10000-14999'
        WHEN MonthlyIncome >= 15000 THEN '15000+'
    END AS income_group,

    COUNT(*) AS total_employees,

    SUM(
        CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END
    ) AS employees_left,

    ROUND(
        SUM(
            CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END
        ) / COUNT(*) * 100,
        2
    ) AS attrition_rate

FROM employees

GROUP BY income_group

ORDER BY
    CASE income_group
        WHEN 'Below 3000' THEN 1
        WHEN '3000-5999' THEN 2
        WHEN '6000-9999' THEN 3
        WHEN '10000-14999' THEN 4
        WHEN '15000+' THEN 5
    END;
    
SELECT
    CASE
        WHEN YearsInCurrentRole BETWEEN 0 AND 2 THEN '0-2 Years'
        WHEN YearsInCurrentRole BETWEEN 3 AND 5 THEN '3-5 Years'
        WHEN YearsInCurrentRole BETWEEN 6 AND 10 THEN '6-10 Years'
        WHEN YearsInCurrentRole BETWEEN 11 AND 20 THEN '11-20 Years'
        WHEN YearsInCurrentRole >= 21 THEN '21+ Years'
    END AS role_tenure_group,

    COUNT(*) AS total_employees,

    SUM(
        CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END
    ) AS employees_left,

    ROUND(
        SUM(
            CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END
        ) / COUNT(*) * 100,
        2
    ) AS attrition_rate

FROM employees

GROUP BY role_tenure_group

ORDER BY
    CASE role_tenure_group
        WHEN '0-2 Years' THEN 1
        WHEN '3-5 Years' THEN 2
        WHEN '6-10 Years' THEN 3
        WHEN '11-20 Years' THEN 4
        WHEN '21+ Years' THEN 5
    END;
    
CREATE OR REPLACE VIEW vw_hr_analysis AS

SELECT
    EmployeeNumber,
    Age,
    Attrition,
    Department,
    JobRole,
    Gender,
    BusinessTravel,
    OverTime,
    MonthlyIncome,
    YearsAtCompany,
    YearsInCurrentRole,
    JobLevel,
    JobSatisfaction,
    EnvironmentSatisfaction,
    RelationshipSatisfaction,
    WorkLifeBalance,
    PerformanceRating,

    -- Attrition flag
    CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END AS attrition_flag,

    -- Age group
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        WHEN Age >= 56 THEN '56-60'
    END AS age_group,

    -- Company tenure group
    CASE
        WHEN YearsAtCompany BETWEEN 0 AND 2 THEN '0-2 Years'
        WHEN YearsAtCompany BETWEEN 3 AND 5 THEN '3-5 Years'
        WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 Years'
        WHEN YearsAtCompany BETWEEN 11 AND 20 THEN '11-20 Years'
        WHEN YearsAtCompany >= 21 THEN '21+ Years'
    END AS tenure_group,

    -- Current role tenure group
    CASE
        WHEN YearsInCurrentRole BETWEEN 0 AND 2 THEN '0-2 Years'
        WHEN YearsInCurrentRole BETWEEN 3 AND 5 THEN '3-5 Years'
        WHEN YearsInCurrentRole BETWEEN 6 AND 10 THEN '6-10 Years'
        WHEN YearsInCurrentRole BETWEEN 11 AND 20 THEN '11-20 Years'
        WHEN YearsInCurrentRole >= 21 THEN '21+ Years'
    END AS role_tenure_group,

CASE
    WHEN e.MonthlyIncome < 3000 THEN 'Below 3000'
    WHEN e.MonthlyIncome BETWEEN 3000 AND 5999 THEN '3000-5999'
    WHEN e.MonthlyIncome BETWEEN 6000 AND 9999 THEN '6000-9999'
    WHEN e.MonthlyIncome BETWEEN 10000 AND 14999 THEN '10000-14999'
    WHEN e.MonthlyIncome >= 15000 THEN '15000+'
END AS income_group,

CASE
    WHEN e.MonthlyIncome < 3000 THEN 1
    WHEN e.MonthlyIncome BETWEEN 3000 AND 5999 THEN 2
    WHEN e.MonthlyIncome BETWEEN 6000 AND 9999 THEN 3
    WHEN e.MonthlyIncome BETWEEN 10000 AND 14999 THEN 4
    WHEN e.MonthlyIncome >= 15000 THEN 5
END AS income_sort,

SHOW FULL TABLES
WHERE Table_type = 'VIEW';

SELECT *
FROM vw_hr_analysis
LIMIT 10;

SELECT *
FROM vw_hr_analysis;

SELECT COUNT(*) AS total_employees
FROM vw_hr_analysis;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT EmployeeNumber) AS unique_employee_numbers
FROM vw_hr_analysis;

USE hr_attrition;

CREATE OR REPLACE VIEW vw_hr_analysis AS
SELECT
    e.*,

    -- Attrition flag
    CASE
        WHEN e.Attrition = 'Yes' THEN 1
        ELSE 0
    END AS attrition_flag,

    -- Age groups
    CASE
        WHEN e.Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN e.Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN e.Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN e.Age BETWEEN 46 AND 55 THEN '46-55'
        WHEN e.Age BETWEEN 56 AND 60 THEN '56-60'
    END AS age_group,

    -- Income groups
 CASE
    WHEN e.MonthlyIncome < 3000 THEN 'Below 3000'
    WHEN e.MonthlyIncome BETWEEN 3000 AND 5999 THEN '3000-5999'
    WHEN e.MonthlyIncome BETWEEN 6000 AND 9999 THEN '6000-9999'
    WHEN e.MonthlyIncome BETWEEN 10000 AND 14999 THEN '10000-14999'
    WHEN e.MonthlyIncome >= 15000 THEN '15000+'
END AS income_group,

CASE
    WHEN e.MonthlyIncome < 3000 THEN 1
    WHEN e.MonthlyIncome BETWEEN 3000 AND 5999 THEN 2
    WHEN e.MonthlyIncome BETWEEN 6000 AND 9999 THEN 3
    WHEN e.MonthlyIncome BETWEEN 10000 AND 14999 THEN 4
    WHEN e.MonthlyIncome >= 15000 THEN 5
END AS income_sort,
    -- Company tenure groups
    CASE
        WHEN e.YearsAtCompany BETWEEN 0 AND 2 THEN '0-2 Years'
        WHEN e.YearsAtCompany BETWEEN 3 AND 5 THEN '3-5 Years'
        WHEN e.YearsAtCompany BETWEEN 6 AND 10 THEN '6-10 Years'
        WHEN e.YearsAtCompany BETWEEN 11 AND 20 THEN '11-20 Years'
        WHEN e.YearsAtCompany >= 21 THEN '21+ Years'
    END AS tenure_group,

    -- Current role tenure groups
    CASE
        WHEN e.YearsInCurrentRole BETWEEN 0 AND 2 THEN '0-2 Years'
        WHEN e.YearsInCurrentRole BETWEEN 3 AND 5 THEN '3-5 Years'
        WHEN e.YearsInCurrentRole BETWEEN 6 AND 10 THEN '6-10 Years'
        WHEN e.YearsInCurrentRole BETWEEN 11 AND 20 THEN '11-20 Years'
        WHEN e.YearsInCurrentRole >= 21 THEN '21+ Years'
    END AS role_tenure_group

FROM employees e;

SELECT COUNT(*) AS total_employees
FROM vw_hr_analysis;
