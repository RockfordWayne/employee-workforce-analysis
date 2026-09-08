SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, s.amount AS salary
	FROM employees.salary AS s 
	JOIN employees.employee AS e ON s.employee_id = e.id
	JOIN employees.department_manager AS dm ON e.id = dm.employee_id
	JOIN employees.department AS d ON dm.department_id = d.id
WHERE s.from_date = (
	SELECT MAX(s2.from_date)
	FROM employees.salary AS s2
	WHERE s2.employee_id = s.employee_id
)AND
	dm.from_date = (
	SELECT MAX(dm2.from_date)
	FROM employees.department_manager as dm2
	WHERE dm.employee_id = dm2.employee_id
)
ORDER BY s.amount DESC;
