

SELECT FULL_NAME AS `full name of employee`,
       DEPARTMENT_NAME AS `department name`,
       Salary AS `salary`,
       MAX(Salary) OVER (PARTITION BY DEPARTMENT_NAME) AS `maximum salary amongst employees in department`,
       MIN(Salary) OVER (PARTITION BY DEPARTMENT_NAME) AS `minimum salary amongst employees in department`,
       AVG(Salary) OVER (PARTITION BY DEPARTMENT_NAME) AS `average salary amongst employees in department`,
       AVG(Salary) OVER () AS `average salary for the entire company`,
       SUM(Salary) OVER (PARTITION BY DEPARTMENT_NAME) AS `sum of all employee salaries in their department`,
       SUM(Salary) OVER () AS `sum of all employee salaries for the entire company`
FROM SALARY_DISTRIBUTION_TABLE
ORDER BY `department name`;