=====================================
    Basic Window Practice (Day-1)
=====================================
1.Write a query to display emp_name, salary, and the overall average salary of all employees beside every employee.
SELECT emp_name,salary,
AVG(salary) OVER() AS 'overall_average_salary'
FROM employees;

2.Display emp_name, department_id, salary, and the average salary of that employee's department.
  SELECT emp_name,department_id,salary,
  AVG(salary) OVER(PARTITION BY department_id) AS dept_avg
  FROM employees;

3.Display each employee's emp_name, department_id, salary, and the highest salary in their department.
SELECT emp_name,department_id,salary,
MAX(salary) OVER(PARTITION BY department_id) AS dept_max
FROM employees;

