-- .	1. Write a SQL statement to create a table employees with columns id, name, role, and salary.
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    role VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- 2. How would you update the salary of a single employee in the employees table?
UPDATE employees
SET salary = new_salary
WHERE id = employee_id;

-- 3.	Construct a SQL query to find the third highest salary in the employees table
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- 4.	Write a SQL statement to delete all employees who have a role of 'Intern'.
DELETE FROM employees
WHERE role = 'Intern';

-- 5.Write a SQL query to list employees and their roles, but only include roles that have more than five employees.
SELECT role, COUNT(*) as employee_count
FROM employees
GROUP BY role
HAVING COUNT(*) > 5;

