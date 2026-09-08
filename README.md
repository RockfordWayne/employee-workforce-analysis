# employee-workforce-analysis
A PostgreSQL data analysis project using the Neon Employees sample database.

source of data: https://github.com/neondatabase/postgres-sample-dbs

The "employees.sql.gz" file was used for these queries

# Query Results

## Query 1 
Query that returns how many employees are currently in each department

### Concepts used

- Inner Join

<img width="290" height="272" alt="01_Query_Results" src="https://github.com/user-attachments/assets/343a69e9-86bb-4c68-891f-d041b7d9c371" />

## Query 2
Returns the average salary grouped by department

### Concepts used

- Inner Joins

<img width="308" height="270" alt="02_Query_Results" src="https://github.com/user-attachments/assets/635e4f04-c35c-48af-8284-1070c0ce0c86" />

## Query 3
Returns the ten employees with the highest salaries

<img width="499" height="303" alt="03_Query_Results" src="https://github.com/user-attachments/assets/a8367aff-3e35-44e6-941c-1b8942e0fad1" />

## Query 4
Returns the average pay, grouped by job title

<img width="300" height="224" alt="04_Query_Result" src="https://github.com/user-attachments/assets/628ca740-b806-4de5-88ef-577eaab3219c" />

## Query 5
Returns a list of employees who have a salary above the average pay in their department

### Concepts used

- Common Table Expressions (CTE)
- Multiple Inner Joins
- Subqueries
- Historical data filtering

<img width="606" height="758" alt="05_Query_Result" src="https://github.com/user-attachments/assets/7445f2e4-c7c8-4de6-be49-866ebe7c6cfe" />

## Query 6
Returns a list of employees showing their salary progression over time

### Concepts used

- Multiple Inner Joins
- LAG
- PARTITION

<img width="867" height="743" alt="06b_Query_Result" src="https://github.com/user-attachments/assets/9333cf08-8976-43ce-a2a1-797d3b495bcb" />

## Query 7 
Shows a table of employees who have worked in more than one department, including the count

### Concepts used

- Aggregate Function (COUNT)
- HAVING Clause
- Inner Joins

<img width="449" height="692" alt="07_Query_Result" src="https://github.com/user-attachments/assets/4b9b04ca-0ac7-4a1c-bb07-96898477eb10" />

## Query 8
Returns a list of employees who have changed their job title, including a count of how many positions they have held

### Concepts used

- CTE
- Aggregate Function (COUNT)
- HAVING Clause
- Inner Joins

<img width="715" height="641" alt="08_Query_Result" src="https://github.com/user-attachments/assets/7e1bdb9f-2ba0-42b2-b144-d8ea7eb5f0c5" />

## Query 9
Returns a list of the average tenure of employees in a department

### Concepts used

- CASE Statement
- Inner Join

<img width="313" height="274" alt="09_Query_Result" src="https://github.com/user-attachments/assets/65aa8520-7321-443b-9778-3d978204e621" />

## Query 10
Returns a list of current department managers and their salaries

### Concepts used

- Aggregate Function (MAX)
- Inner Joins

<img width="404" height="642" alt="10_Query_Result" src="https://github.com/user-attachments/assets/c593110b-3a21-41ff-8e7a-b08a534d5bfa" />

# Power BI Chart for Queries #1, #3, and #6

<img width="1452" height="817" alt="BI_Employees_Charts" src="https://github.com/user-attachments/assets/f11c1fb5-aa09-4b29-94a1-12c52527c5d1" />

