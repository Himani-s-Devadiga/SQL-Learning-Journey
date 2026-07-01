-- ==========================================
-- SQL Practice - Day 05
-- Aggregate & Scalar Functions
-- ==========================================

CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);

INSERT INTO students VALUES
(1,'Himani',20,'Mangalore',95),
(2,'Rahul',21,'Bangalore',82),
(3,'Ananya',19,'Mysore',90),
(4,'Rohan',22,'Udupi',76),
(5,'Priya',20,'Bangalore',88),
(6,'Kiran',21,'Mangalore',82);

-- Aggregate Functions

SELECT MAX(marks) AS highest_marks FROM students;

SELECT MIN(marks) AS lowest_marks FROM students;

SELECT SUM(marks) AS total_marks FROM students;

SELECT AVG(marks) AS average_marks FROM students;

SELECT COUNT(*) AS total_students FROM students;

SELECT COUNT(*) AS bangalore_students
FROM students
WHERE city='Bangalore';

SELECT VARIANCE(marks) AS marks_variance
FROM students;

-- Scalar Functions

SELECT ABS(-45);

SELECT ROUND(15.6789);

SELECT ROUND(15.6789,2);

SELECT CEIL(5.1);

SELECT CEIL(8.9);

SELECT CEIL(10.0);
