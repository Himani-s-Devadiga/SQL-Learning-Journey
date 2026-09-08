-- ============================================
   SUBQUERIES IN SQL
   Date:1/9/2026
--=============================================

# Independent Subqueries

🟢1.Find the employee(s) who earn the highest salary.
SELECT emp_name,salary
FROM employee
WHERE salary=(
SELECT MAX(salary)
FROM employee
);

🟢 Q2:Find all employees whose salary is greater than the average salary.
SELECT emp_name,salary
FROM Employee
WHERE salary=(
    SELECT AVG(salary)
    FROM employee
);

🟢Q3 — Independent Subquery + IN
Find employees who work in the same departments as employees earning more than ₹60,000.
SELECT department_id , emp_name , salary
FROM employee
WHERE department_id IN(
SELECT department_id
FROM employee
WHERE salary>60000
);

🟢Q4 — Find employees whose salary is greater than the maximum salary of the Software department.
SELECT emp_name,salary
FROM employee
WHERE salary>(
SELECT MAX(salary)
FROM employee
WHERE department='Software'
);

🟢Q5 — NOT IN + Subquery
Find employees who do NOT work in any department that has an employee earning more than ₹60,000
SELECT emp_name, salary
FROM employee
WHERE department_id NOT IN(
SELECT department_id
FROM employee
WHERE salary>60000
);

