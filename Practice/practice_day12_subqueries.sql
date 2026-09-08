===============================
    Subqueries (Day-3)
===============================
  
1.Find employees whose salary is greater than ALL employees in department 2.
SELECT emp_name,department_id,salary
FROM employees  
WHERE salary>ALL(
       SELECT salary
       FROM employees
       WHERE department_id=2
  );

2.Find employees whose salary is less than ALL employees in department 3.
SELECT emp_name,department_id,salary
FROM employees
WHERE salary<ALL(
  SELECT salary
  FROM employees
  WHERE department_id=3
  );

3.Find employees whose salary is greater than ALL employees in the Sales department.
SELECT emp_name,department_id,salary
FROM employees
WHERE salary>ALL(
  SELECT salary
  FROM employees
  WHERE department='Sales'
  );

4.Find employees whose salary is less than ALL employees in department 2 (return only emp_name and salary).
SELECT emp_name,salary
FROM employees
WHERE salary<ALL(
  SELECT salary
  FROM employees
  WHERE department_id=2
  );

5.Find employees whose salary is greater than ALL employees in department 3 AND return emp_name, department_id, and salary.
SELECT emp_name,department_id,salary
FROM employees
WHERE salary>ALL(
  SELECT salary
  FROM employees
  WHERE department_id=3
  );

========================================
   Correlated Aggregate Subqueries.
=========================================
  
6.Find employees whose salary is greater than the average salary of their own department.
  SELECT emp_name,salary
  FROM employees AS e1
  WHERE salary>(
       SELECT AVG(salary)
       FROM employees AS e2
       WHERE e1.department_id=e2.department_id
  );

7.Find employees whose salary is equal to the highest salary in their own department.
  SELECT emp_name,salary
  FROM employees AS e1
  WHERE salary=(
       SELECT MAX(salary)
       FROM employees as e2
       WHERE e1.department_id=e2.department_id
  );

8.Find employees whose salary is equal to the Lowest salary in their own department.
  SELECT emp_name,salary
  FROM employees AS e1
  WHERE salary=(
       SELECT MIN(salary)
       FROM employees as e2
       WHERE e1.department_id=e2.department_id
  );

=============================================
     Correlated EXISTS / NOT EXISTS
=============================================

9.Find departments that have at least one employee earning more than ₹80,000.
SELECT  d.department_id,d.department_name
FROM departments AS d
WHERE EXISTS(
  SELECT 1
  FROM employees AS e
  WHERE d.department_id=e.department_id AND e.salary>80000
  );

10.Find departments that have NO employees earning more than ₹80,000.
SELECT d.department_id,d.department_name
FROM departments AS d
WHERE NOT EXISTS(
     SELECT 1
     FROM employees AS e
     WHERE d.department_id=e.department_id AND e.salary>80000
  );

11.Find departments that have at least one employee earning less than ₹40,000.
SELECT  d.department_id,d.department_name
FROM departments AS d
WHERE EXISTS(
  SELECT 1
  FROM employees AS e
  WHERE d.department_id=e.department_id AND e.salary<40000
  );













  
