
START TRANSACTION;

UPDATE employees
SET salary = salary + 5000
WHERE employee_id = 101;

SAVEPOINT salary_update;

UPDATE employees
SET salary = salary + 10000
WHERE employee_id = 102;

ROLLBACK TO salary_update;

COMMIT;
