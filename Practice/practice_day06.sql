-- ==========================================
-- SQL GROUPING & SORTING PRACTICE
-- Author: Himani Devadiga
-- Date : 2/7/2026
-- ==========================================

-- ORDER BY (Ascending)
SELECT * FROM Employees
ORDER BY Salary ASC;

-- ORDER BY (Descending)
SELECT * FROM Employees
ORDER BY Salary DESC;

-- Sort by multiple columns
SELECT *
FROM Employees
ORDER BY Department ASC, Salary DESC;

-- DISTINCT
SELECT DISTINCT Department
FROM Employees;

-- COUNT
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

-- SUM
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department;

-- AVG
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;

-- MAX
SELECT Department, MAX(Salary) AS HighestSalary
FROM Employees
GROUP BY Department;

-- MIN
SELECT Department, MIN(Salary) AS LowestSalary
FROM Employees
GROUP BY Department;

-- HAVING
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department

-- GROUP BY + ORDER BY
SELECT Department,
AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
ORDER BY AvgSalary DESC;
