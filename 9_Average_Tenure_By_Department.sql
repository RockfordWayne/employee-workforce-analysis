SELECT 
	d.dept_name, 
	ROUND(
		AVG(
			(CASE
				WHEN de.to_date >= DATE '9999-01-01'
					THEN CURRENT_DATE
				ELSE de.to_date
			END) - de.from_date) / 365, 0) AS average_tenure
FROM employees.department_employee AS de 
	JOIN employees.department AS d ON de.department_id = d.id
GROUP BY dept_name