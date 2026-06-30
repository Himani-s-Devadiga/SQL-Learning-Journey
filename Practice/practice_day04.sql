-- ==========================================
-- SQL Practice - Day 04
-- Topic: DML & Basic SQL Queries
-- Date:30/06/2025 
-- ==========================================

-- Create Table
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);

-- Insert Records
INSERT INTO students VALUES
(1,'Himani',20,'Mangalore',95),
(2,'Rahul',21,'Bangalore',82),
(3,'Ananya',19,'Mysore',90),
(4,'Rohan',22,'Udupi',76),
(5,'Priya',20,'Bangalore',88),
(6,'Kiran',21,'Mangalore',82);

-- ==========================================
-- Display all records
-- ==========================================

SELECT * FROM students;

-- ==========================================
-- Mathematical Expressions
-- ==========================================

SELECT name, marks + 5 AS bonus_marks
FROM students;

SELECT name, marks - 10 AS reduced_marks
FROM students;

SELECT name, marks * 2 AS double_marks
FROM students;

SELECT name, marks / 2 AS half_marks
FROM students;

-- ==========================================
-- Constants
-- ==========================================

SELECT name, 'Student' AS role
FROM students;

SELECT name, 100 AS full_marks
FROM students;

-- ==========================================
-- DISTINCT
-- ==========================================

SELECT DISTINCT city
FROM students;

SELECT DISTINCT age
FROM students;

-- ==========================================
-- WHERE Clause
-- ==========================================

SELECT *
FROM students
WHERE marks > 80;

SELECT *
FROM students
WHERE age = 20;

SELECT *
FROM students
WHERE city = 'Bangalore';

-- ==========================================
-- BETWEEN
-- ==========================================

SELECT *
FROM students
WHERE marks BETWEEN 80 AND 90;

SELECT *
FROM students
WHERE age BETWEEN 20 AND 21;

-- ==========================================
-- AND
-- ==========================================

SELECT *
FROM students
WHERE city = 'Bangalore'
AND marks > 85;

SELECT *
FROM students
WHERE age = 20
AND city = 'Mangalore';

-- ==========================================
-- IN
-- ==========================================

SELECT *
FROM students
WHERE city IN ('Bangalore', 'Mangalore');

-- ==========================================
-- NOT IN
-- ==========================================

SELECT *
FROM students
WHERE city NOT IN ('Bangalore');

-- ==========================================
-- UPDATE
-- ==========================================

UPDATE students
SET marks = 85
WHERE id = 2;

SELECT *
FROM students;

-- ==========================================
-- DELETE
-- ==========================================

DELETE FROM students
WHERE id = 6;

SELECT *
FROM students;

-- ==========================================
-- SQL Execution Order Example
-- ==========================================

SELECT name, marks
FROM students
WHERE marks > 80;
