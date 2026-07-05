# 💻 3. Practice/practice_day07.sql

```sql
-- ==========================================
-- SQL GROUP BY Practice
-- Author: Himani Devadiga
-- Date : 5/7/2026
-- ==========================================

USE company;

-- Count employees
SELECT department,
COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- Average salary
SELECT department,
AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- Highest salary
SELECT department,
MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- Lowest salary
SELECT department,
MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;

-- Total salary
SELECT department,
SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- Sort by average salary
SELECT department,
AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;
