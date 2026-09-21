
CREATE VIEW high_salary_employees AS

SELECT
    employee_name,
    salary,
    city
FROM employees
WHERE salary > 60000;

SELECT *
FROM high_salary_employees;
