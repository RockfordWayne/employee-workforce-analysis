-- Business question:
-- Which employees currently earn more than the average pay in their department?
--
-- Concepts demonstrated:
-- CTE, mutlti-table joins, correlated subqueries,
-- aggregate functions, filtering, historical data


WITH average_pay_CTE AS(
	SELECT ROUND(AVG(s.amount), 2) AS average_pay, d.dept_name AS dept_name FROM employees.salary AS s
	JOIN employees.department_employee AS de ON s.employee_id = de.employee_id
	JOIN employees.department AS d ON de.department_id = d.id
	WHERE s.from_date = (
		SELECT MAX(from_date)
		FROM employees.salary AS s2
		WHERE s2.employee_id = s.employee_id
	)AND
		de.from_date = (
		SELECT MAX(from_date)
		FROM employees.department_employee AS de2
		WHERE de2.employee_id = de.employee_id
		)
	GROUP BY d.dept_name
)

SELECT e.id, CONCAT(e.first_name, ' ' ,e.last_name) AS full_name, s.amount AS salary, d.dept_name, ap.average_pay
FROM employees.salary AS s
JOIN employees.employee AS e ON s.employee_id = e.id
JOIN employees.department_employee AS de ON e.id = de.employee_id
JOIN employees.department AS d ON de.department_id = d.id
JOIN average_pay_CTE AS ap ON d.dept_name = ap.dept_name
WHERE s.from_date = (
	SELECT MAX(from_date) 
	FROM employees.salary AS s2
	WHERE s2.employee_id = s.employee_id
	) AND de.from_date = (
	SELECT MAX(from_date)
	FROM employees.department_employee AS de2
	WHERE de2.employee_id = de.employee_id
	) AND s.amount > ap.average_pay
ORDER BY e.id ASC;

