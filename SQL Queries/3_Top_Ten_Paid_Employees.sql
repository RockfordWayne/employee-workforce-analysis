SELECT e.id, e.first_name, e.last_name, MAX(s.amount) AS salary
FROM employees.salary AS s
JOIN employees.employee AS e 
ON s.employee_id = e.id
GROUP BY id, first_name, last_name
ORDER BY salary DESC
LIMIT 10;