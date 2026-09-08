SELECT ROUND(AVG(s.amount), 2) AS average_salary, d.dept_name
FROM employees.salary AS s 
JOIN employees.department_employee AS de ON s.employee_id = de.employee_id 
JOIN employees.department AS d ON d.id = de.department_id
GROUP BY dept_name
ORDER BY average_salary ASC;

