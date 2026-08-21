
-- =========================================
-  SQL DDL + ALTER TABLE PRACTICE
-- =========================================

-- 1. CREATE DATABASE
CREATE DATABASE student;

-- 2. USE DATABASE
USE student;

-- =========================================
   🔵 CREATE TABLE
-- =========================================

-- 3. CREATE TABLE
CREATE TABLE EMPLOYEE(
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  email VARCHAR(50),
  age INT ,
  SALARY DECIMAL(10,2)
);

-- =========================================
   🔵 ALTER TABLE - ADD
-- =========================================

-- 4. Add a single column
ALTER TABLE employees
ADD department VARCHAR(50);

-- 5. Add multiple columns
ALTER TABLE employees
ADD age INT,
ADD department_name VARCHAR(50),
ADD joining_date DATE,
ADD phone VARCHAR(15),
ADD bonus DECIMAL(10,2);


-- =========================================
   🔵 ALTER TABLE - MODIFY
-- =========================================

-- 6. Change datatype
ALTER TABLE employees
MODIFY salary DECIMAL(12,2);

-- 7. Modify multiple columns
ALTER TABLE employees
MODIFY salary DECIMAL(12,2),
MODIFY phone VARCHAR(20),
MODIFY department VARCHAR(100),
MODIFY age BIGINT;

-- 8. Modify employee name
ALTER TABLE employees
MODIFY employee_name VARCHAR(100);


-- =========================================
   🔵 ALTER TABLE - RENAME COLUMN
-- =========================================

-- 9. Rename a column
ALTER TABLE employees
RENAME COLUMN department TO department_name;

-- 10. Rename multiple columns
ALTER TABLE employees
RENAME COLUMN department TO department_name,
RENAME COLUMN joining_date TO date_of_joining,
RENAME COLUMN bonus TO annual_bonus,
RENAME COLUMN phone TO phone_number;


-- =========================================
  🔵 ALTER TABLE - DROP COLUMN
-- =========================================

-- 11. Drop a single column
ALTER TABLE employees
DROP COLUMN age;

-- 12. Drop multiple columns
ALTER TABLE employees
DROP COLUMN age,
DROP COLUMN annual_bonus,
DROP COLUMN phone_number,
DROP COLUMN department_name,
DROP COLUMN date_of_joining;


-- =========================================
  🔵 COMPLETE CREATE + ALTER CHALLENGE
  💀 Challenge — Strictly without Notes
-- =========================================

CREATE TABLE company_employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    age INT,
    salary DECIMAL(10,2),
    department VARCHAR(50),
    joining_date DATE
);

-- Add gender
ALTER TABLE company_employees
ADD gender VARCHAR(15);

-- Add city
ALTER TABLE company_employees
ADD city VARCHAR(10);

-- Modify first_name
ALTER TABLE company_employees
MODIFY first_name VARCHAR(100);

-- Modify salary
ALTER TABLE company_employees
MODIFY salary DECIMAL(12,2);

-- Rename department
ALTER TABLE company_employees
RENAME COLUMN department TO department_name;

-- Rename city
ALTER TABLE company_employees
RENAME COLUMN city TO location;

-- Drop age
ALTER TABLE company_employees
DROP COLUMN age;

-- Drop phone
ALTER TABLE company_employees
DROP COLUMN phone;

-- Add experience
ALTER TABLE company_employees
ADD experience INT;

-- Rename experience
ALTER TABLE company_employees
RENAME COLUMN experience TO years_of_experience;
