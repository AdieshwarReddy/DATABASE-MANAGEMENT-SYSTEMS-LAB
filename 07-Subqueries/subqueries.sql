SELECT employee_name, salary
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
);

SELECT employee_name
FROM employees
WHERE department_id IN
(
    SELECT department_id
    FROM departments
    WHERE department_name IN ('IT', 'HR')
);

SELECT employee_name, salary
FROM employees
WHERE salary > ALL
(
    SELECT salary
    FROM employees
    WHERE department_id = 2
);

SELECT employee_name, salary
FROM employees
WHERE salary > ANY
(
    SELECT salary
    FROM employees
    WHERE department_id = 1
);

SELECT department_name
FROM departments d
WHERE EXISTS
(
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

SELECT department_name
FROM departments d
WHERE NOT EXISTS
(
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);
