CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(1, 'Ali', 'HR', 50000),
(2, 'Ahmed', 'IT', 70000),
(3, 'Sara', 'Finance', 65000),
(4, 'Hina', 'IT', 80000),
(5, 'Usman', 'HR', 55000),
(6, 'Zara', 'Finance', 72000);

SELECT 
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    COUNT(DISTINCT department) AS total_departments,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees;

SELECT 
    department,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    AVG(salary) AS avg_salary,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary
FROM employees
GROUP BY department;