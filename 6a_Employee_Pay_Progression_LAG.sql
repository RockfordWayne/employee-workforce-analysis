SELECT CONCAT(e.first_name, ' ' , e.last_name) AS full_name, 
	s.from_date, 
	s.to_date, 
	s.amount AS current_salary,
	LAG(s.amount) OVER (
		ORDER BY s.from_date
	) AS previous_salary,
	(s.amount - LAG(s.amount) OVER (
		ORDER BY s.from_date
	)) AS salary_change
FROM employees.salary AS s
JOIN employees.employee AS e 
ON s.employee_id = e.id
WHERE e.id = 260772
ORDER BY s.from_date ASC;