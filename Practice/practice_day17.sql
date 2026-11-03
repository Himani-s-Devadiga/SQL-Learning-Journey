CREATE DATABASE companyDB;

USE companyDB;

CREATE TABLE Employee(
     Emp_ID INT PRIMARY KEY AUTO_INCREMENT,
     Emp_Name VARCHAR(50) NOT NULL,
     Email VARCHAR(100) UNIQUE,
     AGE INT,
     Department VARCHAR(50)
  );

INSERT INTO Employee(Emp_name,Email,Age,Department) VALUES('Himani','himani@gmail.com',21,'Data Science');
INSERT INTO Employee(Emp_name,Email,Age,Department) VALUES('Anu','anu@gmail.com',22,'HR');
INSERT INTO Employee(Emp_name,Email,Age,Department) VALUES('Riya','riya@gmail.com',23,'Analytics');

SELECT * FROM employee;

SELECT Emp_Name,Department
FROM employee;

DELETE FROM Employee
WHERE Emp_ID=2;

TRUNCATE TABLE employee;

DROP TABLE employee;
