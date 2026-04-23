-- create DATABASE company_db;
use company_db;
-- CREATE TABLE employees (
--     emp_id INT PRIMARY KEY,
--     name VARCHAR(50),
--     department VARCHAR(50),
--     salary INT,
--     experience INT,
--     city VARCHAR(50)
-- );
-- INSERT INTO employees VALUES
-- (1, 'Amit', 'IT', 60000, 3, 'Mumbai'),
-- (2, 'Neha', 'HR', 45000, 2, 'Pune'),
-- (3, 'Raj', 'Finance', 70000, 5, 'Delhi'),
-- (4, 'Simran', 'IT', 80000, 6, 'Bangalore'),
-- (5, 'Karan', 'HR', 40000, 1, 'Mumbai'),
-- (6, 'Priya', 'Finance', 75000, 4, 'Pune'),
-- (7, 'Rohit', 'IT', 90000, 7, 'Delhi'),
-- (8, 'Sneha', 'HR', 48000, 3, 'Bangalore'),
-- (9, 'Arjun', 'Finance', 65000, 2, 'Mumbai'),
-- (10, 'Pooja', 'IT', 72000, 4, 'Pune');


-- 1. Get all employees from IT department
SELECT * FROM employees
WHERE department = 'IT';

-- 2.  Get employees with salary > 60000
SELECT * FROM employees
WHERE salary > 60000;

-- 3. Get employees from Mumbai city
SELECT * FROM employees
WHERE city = 'Mumbai';

-- 4.Get employees with experience >= 3
SELECT * FROM employees
WHERE experience >= 3;

-- 5. Employees with salary between 50000 and 80000
SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 80000;

-- 6.  Employees NOT in HR department
SELECT * FROM employees
WHERE department != 'HR';

-- 7. Employees from Mumbai or Pune
SELECT * FROM employees
WHERE city IN ('Mumbai', 'Pune');

-- 8. Employees whose name starts with 'S'
SELECT * FROM employees
WHERE name LIKE 'S%';

-- 9. Sort employees by salary (ascending)
SELECT * FROM employees
ORDER BY salary ASC;

-- 10. Sort employees by salary (descending)
SELECT * FROM employees
ORDER BY salary DESC;

-- 11. Sort employees by experience then salary
SELECT * FROM employees
ORDER BY experience ASC, salary ASC;

-- 12. Sort employees by name alphabetically
SELECT * FROM employees
ORDER BY name ASC;

-- 🔹 Combination (Filtering + Sorting)
-- 13. Employees from IT sorted by salary desc
SELECT * FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;

-- 14. Employees with salary > 60000 sorted by experience
SELECT * FROM employees
WHERE salary > 60000
ORDER BY experience ASC;

-- 15. Top 5 highest paid employees
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 5;

-- 16. Lowest 3 salary employees
SELECT * FROM employees
ORDER BY salary ASC
LIMIT 3;

-- 17. Employees with experience > 3 and salary < 80000 sorted by salary
SELECT * FROM employees
WHERE experience > 3 AND salary < 80000
ORDER BY salary ASC;

-- 18. Employees not from Mumbai sorted by name
SELECT * FROM employees
WHERE city != 'Mumbai'
ORDER BY name ASC;
