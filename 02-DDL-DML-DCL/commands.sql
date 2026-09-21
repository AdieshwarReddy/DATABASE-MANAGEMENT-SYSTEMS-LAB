CREATE DATABASE dbms_lab;

USE dbms_lab;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department VARCHAR(50),
    marks INT
);

INSERT INTO students
VALUES
(1, 'Adhi', 'AIML', 90),
(2, 'Rahul', 'CSE', 85),
(3, 'Priya', 'ECE', 88);

SELECT * FROM students;

UPDATE students
SET marks = 95
WHERE student_id = 1;

DELETE FROM students
WHERE student_id = 3;

ALTER TABLE students
ADD email VARCHAR(100);

SELECT * FROM students;

-- DCL examples

GRANT SELECT ON dbms_lab.students TO 'user1'@'localhost';

REVOKE SELECT ON dbms_lab.students FROM 'user1'@'localhost';
