SELECT 
	e.id, 
	CONCAT(e.first_name, ' ' , e.last_name) AS full_name, 
	COUNT(DISTINCT d.id) AS departments_worked
FROM employees.employee AS e
	JOIN employees.department_employee AS de ON de.employee_id = e.id
	JOIN employees.department AS d ON de.department_id = d.id
GROUP BY e.id, e.first_name, e.last_name
HAVING COUNT(DISTINCT d.id) > 1
ORDER BY departments_worked DESC, e.id ASC;
