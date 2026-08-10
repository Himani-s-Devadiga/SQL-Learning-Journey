SELECT E.name, D.dept_name
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.dept_id = D.dept_id;
