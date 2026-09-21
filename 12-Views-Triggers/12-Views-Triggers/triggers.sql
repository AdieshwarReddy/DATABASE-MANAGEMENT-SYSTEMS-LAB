
CREATE TABLE salary_audit (

    audit_id INT AUTO_INCREMENT PRIMARY KEY,

    employee_id INT,

    old_salary DECIMAL(10,2),

    new_salary DECIMAL(10,2),

    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);




DELIMITER //

CREATE TRIGGER salary_update_trigger

AFTER UPDATE ON employees

FOR EACH ROW

BEGIN

    IF OLD.salary <> NEW.salary THEN

        INSERT INTO salary_audit(
            employee_id,
            old_salary,
            new_salary
        )

        VALUES(
            OLD.employee_id,
            OLD.salary,
            NEW.salary
        );

    END IF;

END //



  UPDATE employees
SET salary = 70000
WHERE employee_id = 101;

SELECT * FROM salary_audit;
DELIMITER ;
