DELIMITER //

CREATE PROCEDURE GetEmployees()
BEGIN
    SELECT * FROM employees;
END //

DELIMITER ;

CALL GetEmployees();


DELIMITER //

CREATE PROCEDURE GetEmployeesByCity(
    IN city_name VARCHAR(100)
)
BEGIN

    SELECT *
    FROM employees
    WHERE city = city_name;

END //

DELIMITER ;

CALL GetEmployeesByCity('Hyderabad');
