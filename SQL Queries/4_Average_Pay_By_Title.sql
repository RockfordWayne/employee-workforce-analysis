SELECT t.title, ROUND(AVG(s.amount), 2) AS average_pay
FROM employees.title AS t
JOIN employees.salary AS s
ON t.employee_id = s.employee_id
GROUP BY t.title
ORDER BY average_pay DESC;