SELECT * FROM employees;

-- Task 1
SELECT * FROM employees
	WHERE department = 'Engineering';

-- Task 2
SELECT * FROM employees
	WHERE salary BETWEEN 60000 AND 80000;

-- Task 3
SELECT * FROM employees
	WHERE hire_date > '2020-01-01';

-- Task 4
SELECT first_name, last_name, salary
	FROM employees
	ORDER BY salary DESC;

-- Task 5
SELECT COUNT(*) FROM employees;

-- Task 6
SELECT * FROM employees
	WHERE manager_id = 1;

-- Task 7
SELECT * FROM employees
	ORDER BY salary DESC
    LIMIT 1;

-- Task 8
SELECT * FROM employees
	WHERE department = 'Sales' OR department = 'Marketing';

-- Task 9
SELECT first_name, last_name, hire_date
	FROM employees
	ORDER BY hire_date ASC;

-- Task 10
SELECT * FROM employees
	WHERE salary > 75000
    ORDER BY salary DESC;

-- Task 11
SELECT department, COUNT(*) AS 'Employee Count'
	FROM employees
	GROUP BY department;

-- Task 12
SELECT department, AVG(salary) AS 'Average Salary'
	FROM employees
    GROUP BY department;

-- Task 13
SELECT department, COUNT(*) AS EmployeeCount
	FROM employees
    GROUP BY department
    HAVING EmployeeCount > 5;

-- Task 14
SELECT manager_id, COUNT(*) AS EmployeeCount
	FROM employees
    GROUP BY manager_id;

-- Task 15
SELECT department, MAX(salary) AS MaxSalary
	FROM employees
    GROUP BY department;

-- Task 16
SELECT CONCAT(first_name, ' ', last_name) AS 'Name', department, hire_date, salary
	FROM employees
    WHERE hire_date BETWEEN '2020-01-01' AND '2020-12-31'
    ORDER BY salary DESC;