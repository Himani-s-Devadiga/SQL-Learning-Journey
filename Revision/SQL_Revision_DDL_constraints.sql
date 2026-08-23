- =========================================
         SQL CONSTRAINTS PRACTICE
-- =========================================

🟣 NOT NULL & UNIQUE 

CREATE TABLE employees(
 employee_id INT,
employee_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
phone VARCHAR(15) UNIQUE,
salary DECIMAL(10,2)
)
ALTER TABLE employees
ADD CONSTRAINT unique_salary UNIQUE(salary);
DROP INDEX unique_salary;

🟣 PRIMARY KEY & AUTO INCREMENT
1. Create the table with student_id as the PRIMARY KEY.
 CREATE TABLE STUDENT(
student_id INT PRIMARY KEY,
ALTER TABLE STUDENT
MODIFY student_id INT  AUTO_INCREMENT;
email VARCHAR(50),
ALTER TABLE STUDENT
DROP PRIMARY KEY;

🟣 CHECK

1. Create the table with a CHECK constraint that ensures:
age >= 18
CREATE TABLE HUMAN(
age INT CHECK(age>=18),
name VARCHAR(50) NOT NULL,
salary DECIMAL(10,2)
);
ALTER TABLE HUMAN
ADD CONSTRAINT salary_check1 CHECK(salary>0),
ADD CONSTRAINT salary_check2 CHECK(age<=60);
ALTER TABLE HUMAN
DROP CHECK salary_check1;

CREATE TABLE PRODUCTS(
product_id INT,
product_name VARCHAR(50),
price DECIMAL(10,2)
);
ALTER TABLE PRODUCTS
ADD CONSTRAINT checkprice1 CHECK(price>0),
ADD  CONSTRAINT checkprice2 CHECK(price<=100000);
ALTER TABLE PRODUCTS
DROP CHECK checkprice1;

🟣 DEFAULT

CREATE TABLE employees(
employee_id INT,
employee_name VARCHAR(50),
status VARCHAR(20) DEFAULT 'ACTIVE',
salary DECIMAL(10,2) DEFAULT 25000
);
ALTER TABLE employees
ADD CITY VARCHAR(50) DEFAULT 'Mangalore';
ALTER TABLE employees
MODIFY salary DECIMAL(10,2) DEFAULT 30000;
ALTER TABLE employees
MODIFY status VARCHAR(20);

🟣 FORIEGN KEY

CREATE TABLE department(
department_id INT PRIMARY KEY,
department_name VARCHAR(50)
);

CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
department_id INT
);

CREATE TABLE projects(
project_id INT PRIMARY KEY,
project_name VARCHAR(50),
department_id INT
);
ALTER TABLE employees
ADD CONSTRAINT join1 FOREIGN KEY (department_id) REFERENCES department(department_id);
ALTER TABLE projects
ADD CONSTRAINT join2 FOREIGN KEY (department_id) REFERENCES department(department_id);

-- =========================================
-- CONSTRAINTS COVERED
-- =========================================
-- NOT NULL
-- UNIQUE
-- PRIMARY KEY
-- AUTO_INCREMENT
-- CHECK
-- DEFAULT
-- FOREIGN KEY






