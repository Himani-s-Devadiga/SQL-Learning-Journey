==========================================
      Nested Subqueries(Day-2)
==========================================

1.Find the employees whose salary is greater than the overall average salary.
SELECT department_id,emp_name,salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

2.Find the employees who work in the department that has the highest total salary.
SELECT e.department_id, e.emp_name, e.salary
FROM employees AS e
WHERE e.department_id IN (
      SELECT department_id
      FROM(  
     SELECT department_id,SUM(salary) AS total_salary
     FROM employees
     GROUP BY department_id
) AS dept_total  
WHERE total_salary=(  
SELECT MAX(total_salary) 
FROM (
SELECT department_id,SUM(salary) AS total_salary
FROM employees
GROUP BY department_id  
  ) AS dept_id2
  )
 ); 

3.Find the employees who work in the department with the highest number of employees.
SELECT e.department_id, e.emp_name, e.salary
FROM employees AS e
WHERE e.department_id IN(  
  SELECT department_id 
  FROM(
SELECT department_id , COUNT(emp_name) AS  employee_count
FROM employees
GROUP BY department_id
  ) AS dept_count1
  WHERE employee_count=(
SELECT MAX(employee_count)
FROM(
SELECT department_id ,COUNT(emp_name) AS employee_count
FROM employees
GROUP BY department_id  
  ) AS dept_count2
)
);




