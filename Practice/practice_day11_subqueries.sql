=================================
  subqueries part-2
=================================
  

1. Find employees whose salary is equal to the highest salary in their own department.
  SELECT e.emp_name, e.salary, e.department_id
  FROM employee AS e
  WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employee AS e2
    WHERE e2.department_id = e.department_id
);


2.Find employees whose salary is LOWER than the average salary of their own department.
SELECT e.emp_name,e.salary,e.department_id
FROM employee AS e
WHERE e.salary<(
     SELECT AVG(e2.salary)
     FROM employee as e2
     WHERE e2.department_id=e.department_id
  );
  
3.Find employees whose salary is equal to the minimum salary in their own department.
  SELECT e.emp_name,e.salary,e.department_id
  FROM employee AS e
   WHERE salary=(
        SELECT MIN(salary)
        FROM employee AS e2
        WHERE e.department_id=e2.department_id
  );

4.Find departments that have at least one employee earning more than 80,000.
  SELECT d.department_id,d.department_name
  FROM department AS d
  WHERE EXISTS(
        SELECT 1
        FROM employee AS e
        WHERE e.department_id=d.department_id AND e.salary>80000
  );

5.Find departments that have NO employees earning more than 80,000.
SELECT d.department_name,d.department_id
FROM departments AS d
WHERE NOT EXISTS(
  SELECT 1
  FROM employees AS e
  WHERE e.department_id=d.department_id AND e.salary>80000
  );

6.Find employees whose salary is greater than at least one employee in department 2.
 SELECT department_id,e.emp_name,e.salary
 FROM employee AS e
  WHERE e.salary>ANY(
        SELECT e2.salary
        FROM employee AS e2
        WHERE e2.department_id=2
  );

7.Find employees whose salary is less than at least one employee in department 3.
  SELECT department_id,e.emp_name,e.salary
  FROM employee AS e
  WHERE e.salary<SOME(
  SELECT e2.salary
  FROM employee AS e2
  WHERE e2.department_id=3
  );
