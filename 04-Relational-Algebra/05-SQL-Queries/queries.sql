CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    city VARCHAR(100),
    experience_years INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

INSERT INTO employees VALUES
(101, 'Adhi', 1, 65000, 'Hyderabad', 2),
(102, 'Rahul', 1, 75000, 'Bangalore', 4),
(103, 'Priya', 2, 50000, 'Hyderabad', 3),
(104, 'Arjun', 3, 85000, 'Chennai', 5),
(105, 'Sneha', 1, 45000, 'Hyderabad', 1);

SELECT * FROM employees;

SELECT employee_name, salary
FROM employees;

SELECT *
FROM employees
WHERE salary > 50000;

SELECT *
FROM employees
WHERE city = 'Hyderabad';

SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 80000;

SELECT *
FROM employees
WHERE department_id IN (1, 3);

SELECT *
FROM employees
WHERE employee_name LIKE 'A%';

SELECT DISTINCT city
FROM employees;

SELECT *
FROM employees
ORDER BY salary DESC;
