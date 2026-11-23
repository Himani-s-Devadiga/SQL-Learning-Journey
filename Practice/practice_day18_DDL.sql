------------------------------------
DDL COMMANDS - PART 1(23 /11/ 2026)
------------------------------------

Your task: Create a Student Database
  
Imagine you're developing a database for Alva's Institute.
Step 1: Create a database
Write an SQL query to:
1. Create a database named CollegeDB.
2. Select that database for use.
Step 2: Create a Students table
Create a table named Students with these columns:
Column	Datatype	Constraint
Student_ID	INT	Primary Key, Auto Increment
Student_Name	VARCHAR(50)	NOT NULL
Email	VARCHAR(100)	UNIQUE
Age	INT	—
Department	VARCHAR(30)	NOT NULL
Marks	INT	—

Step 3: Alter the table
1. Add a column named Phone_Number with datatype VARCHAR(15).
2. Add a column named City with datatype VARCHAR(30).
Step 4: Insert records
Insert these five students into your table.
Name	Email	Age	Department	Marks
Himani	himani@gmail.com	21	CSE	90
Ananya	ananya@gmail.com	20	ECE	85
Rahul	rahul@gmail.com	21	CSE	78
Priya	priya@gmail.com	20	ISE	92
Karan	karan@gmail.com	22	AIML	88

Step 5: Test your constraints
Try these operations:
1. Insert a student without a name.
2. Insert two students with the same email.
3. Insert a student without specifying Student_ID.
Observe what happens.

SOLUTION: 
--------  

CREATE DATABASE CollegeDB;

USE DATABASE CollegeDB;

CREATE TABLE students(
  Student_ID	INT PRIMARY KEY AUTO_INCREMENT,
  Student_name	VARCHAR(50)	NOT NULL,
  Email_ID VARCHAR(50) UNIQUE,
  AGE INT,
  DEPARTMENT VARCHAR(30) NOT NULL,
  MARKS INT
  );

INSERT INTO  students VALUES(1,'Himani','himani@gmail.com',21,'CSE',90);
INSERT INTO  students VALUES(2,'Ananya','ananya@gmail.com',20,'ESE',85);
INSERT INTO  students VALUES(3,'Rahul','rahul@gmail.com',21,'CSE',78);
INSERT INTO  students VALUES(4,'Priya','priya@gmail.com',20,'ISE',92);
INSERT INTO  students VALUES(5,'Karan','karan@gmail.com',22,'AIML',88);

DROP a column
ALTER TABLE STUDENTS  
DROP COLUMN AGE;

Truncate a column
TRUNCATE TABLE students;  




  
