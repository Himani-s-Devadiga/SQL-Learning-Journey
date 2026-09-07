======================================
       Nested Subqueries(Day-4)
======================================

1.Find the employees who belong to the department with the highest average salary.
SELECT MAX(avg_salary)
FROM (
  SELECT department_id,AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
    ) AS dept_avg;

2.Write a query that returns the department_id whose avg_salary is equal to the highest avg_salary.
SELECT department_id,AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary)=(
   SELECT MAX(avg_salary)
   FROM=(
      SELECT department_id,AVG(salary) AS avg_salary
      FROM emploees
      GROUP BY department_id
  ) AS dept_avg
  );

3.Find employees who belong to the department with the highest average salary.
Pattern:
Step 1: Calculate average salary for each department
Step 2: Find the highest of those averages
Step 3: Find which department_id has that average
Step 4: Find employees belonging to that department
  
SELECT e.department_id,e.emp_name
FROM employees AS e
WHERE e.department_id IN(
     SELECT department_id
     FROM employees
     GROUP BY department_id
     HAVING AVG(salary)=(
   SELECT MAX(avg_salary)
   FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
  ) AS dept_avg
  );

4.Find the employees who work in the department with the lowest average salary.
SELECT e.department_id,e.emp_name
FROM employees AS e
WHERE e.department_id IN(
      SELECT department_id
      FROM employees
      GROUP BY department_id
      HAVING AVG(salary)=(
              SELECT MIN(avg_salary)
              FROM(
                  SELECT department_id,AVG(salary) AS avg_salary
                  FROM employees
                  GROUP BY department_id
                   )AS dept_avg
                 )
               );

5.Find the employees who work in the department with the highest minimum salary.
SELECT e.department_id,e.emp_name,e.salary
FROM employees AS e
WHERE e.department_id IN(
  SELECT department_id 
  FROM employees
  GROUP BY department_id
  HAVING MIN(salary)=(
       SELECT MAX(min_salary)
       FROM (
              SELECT department_id,MIN(  salary) AS min_salary
              FROM employees
              GROUP BY department_id
              ) AS dept_id
   )
);




