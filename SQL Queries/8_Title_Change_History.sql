WITH title_change_employees_CTE AS (
	SELECT 
		e.id, 
		CONCAT(e.first_name, ' ' , e.last_name) AS full_name, 
		COUNT(DISTINCT t.title) AS positions 
	FROM employees.title AS t JOIN employees.employee AS e ON t.employee_id = e.id
	GROUP BY e.id
	HAVING COUNT(DISTINCT t.title) > 1
)


SELECT 
	cte.id, cte.full_name, t.title, t.from_date, t.to_date
FROM title_change_employees_CTE AS cte JOIN employees.title AS t ON cte.id = t.employee_id
ORDER BY cte.id, from_date ASC;