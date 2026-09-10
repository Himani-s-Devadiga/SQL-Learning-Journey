=======================================
      Subqueries-Practice
            10/9/2026
=========================================
1.Find the employees whose salary is higher than the average salary of their own department.
Pattern: Employee → their department → average salary of that department → compare employee salary → keep if higher
SELECT e.emp_name,e.department_id,e.salary
FROM employees AS e
WHERE e.salary >(
   SELECT AVG(salary)
   FROM employees as e1
   WHERE e.department_id=e1.department_id
  );

2.Find employees whose salary is the highest salary in their own department.
SELECT e.emp_name,e.department_id
FROM employees AS e
WHERE salary=(
     SELECT MAX(salary)
     FROM employees AS e1
     WHERE e.department_id=e1.department_id
  );

3.Find employees who work in departments that have at least one employee earning more than ₹80,000.
SELECT emp_name,department_id
FROM employees AS e1
WHERE EXISTS(
  SELECT 1
  FROM employees e2
  WHERE e1.department_id=e2.department_id AND e2.salary>80000
  );

4.Find all employees who work in the department with the highest average salary.
SELECT e.emp_name,e.department_id,e.salary              
FROM employees AS e 
WHERE e.department_id IN(  
 SELECT department_id
 FROM ( 
SELECT department_id ,  AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
  ) AS dept_avg1
WHERE average_salary=(
SELECT MAX(average_salary)
FROM(
SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
)AS dept_avg2
  )
 ); 
  
5.Find all employees who work in the department with the lowest total salary.
SELECT e.emp_name,e.department_id,e.department_name
FROM employees AS e
 WHERE e.department_id IN 
  (
SELECT department_id
FROM (
  SELECT department_id, SUM(salary) AS total_salary
  FROM employees
 GROUP BY department_id
  ) AS det_total1
 WHERE total_salary= (
SELECT MIN(total_salary)
 FROM( 
SELECT  department_id, , SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
) AS dept_total2
)
);

6.Find all employees who work in the department with the second-highest average salary.
SELECT e.emp_name,e.department_id,e.department_name
FROM employees AS e
WHERE e.department_id IN(
SELECT department_id
FROM(
  SELECT department_id,AVG(salary) AS average_salary
  FROM employees
  GROUP BY department_id
  ) AS dept_avg0
 WHERE average_salary=( 
SELECT MAX(average_salary) 
FROM(  
SELECT department_id,AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
) AS dept_avg1
WHERE average_salary<(  
SELECT MAX(average_salary) 
FROM(  
SELECT department_id,AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
) AS dept_avg2
)
)  
);









