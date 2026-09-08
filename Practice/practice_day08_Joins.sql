/*
==========================================
SQL PRACTICE - DAY 08
Topic: SQL Joins and SET operations
Author: Himani Devadiga
Date : 14/7/2026
==========================================
*/

USE sql_practice;

-- View Students Table
SELECT * FROM Students;

-- View Marks Table
SELECT * FROM Marks;

---------------------------------------------------
-- INNER JOIN
-- Returns only matching records from both tables.
---------------------------------------------------

SELECT *
FROM Students
INNER JOIN Marks
ON Students.Student_ID = Marks.Student_ID;

---------------------------------------------------
-- LEFT JOIN
-- Returns all records from Students table
-- and matching records from Marks table.
---------------------------------------------------

SELECT *
FROM Students
LEFT JOIN Marks
ON Students.Student_ID = Marks.Student_ID;

---------------------------------------------------
-- RIGHT JOIN
-- Returns all records from Marks table
-- and matching records from Students table.
---------------------------------------------------

SELECT *
FROM Students
RIGHT JOIN Marks
ON Students.Student_ID = Marks.Student_ID;

---------------------------------------------------
-- Display Selected Columns
---------------------------------------------------

SELECT
    Students.Name,
    Marks.Subject,
    Marks.Marks
FROM Students
INNER JOIN Marks
ON Students.Student_ID = Marks.Student_ID;

USE sql_practice;

-- UNION
-- Combines the results of two SELECT statements
-- and removes duplicate rows.

SELECT Name
FROM Current_Students

UNION

SELECT Name
FROM Alumni;

---------------------------------------------------

-- UNION ALL
-- Combines the results of two SELECT statements
-- and keeps duplicate rows.

SELECT Name
FROM Current_Students

UNION ALL

SELECT Name
FROM Alumni;

SELECT Name
FROM Current_Students

INTERSECT

SELECT Name
FROM Alumni;

SELECT Name
FROM Current_Students

EXCEPT

SELECT Name
FROM Alumni;
