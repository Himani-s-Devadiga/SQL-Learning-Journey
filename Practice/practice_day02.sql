/*
==========================================
SQL Constraints Notes
==========================================
*/

CREATE TABLE users(
    user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INTEGER CHECK(age > 6 AND age < 25),
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    travel_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);


-- FOREIGN KEY
CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(255),
    dept_id INT,
    FOREIGN KEY (dept_id)
    REFERENCES department(dept_id)
);
