CREATE DATABASE IF NOT EXISTS student_management;

USE student_management;

CREATE TABLE IF NOT EXISTS student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age >= 16),
    course VARCHAR(100) NOT NULL
);

-- INSERT
INSERT INTO student (name, email, age, course)
VALUES
('Rahul', 'rahul@gmail.com', 20, 'BCA'),
('Priya', 'priya@gmail.com', 19, 'BCA'),
('Aman', 'aman@gmail.com', 21, 'BCA');

-- SELECT
SELECT * FROM student;

-- UPDATE
UPDATE student
SET course = 'B.Tech'
WHERE student_id = 1;

SELECT * FROM student;

-- DELETE
DELETE FROM student
WHERE student_id = 3;

SELECT * FROM student;