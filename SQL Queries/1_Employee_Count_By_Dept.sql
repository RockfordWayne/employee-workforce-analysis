SELECT d.dept_name, COUNT(de.employee_id) AS employees 
FROM employees.department_employee AS de 
INNER JOIN employees.department AS d 
ON de.department_id = d.id 
GROUP BY d.dept_name
ORDER BY employees ASC;