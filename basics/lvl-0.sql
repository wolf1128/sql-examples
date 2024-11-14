/*
* Covered Examples:
    - EX#1 | SELECT
    - EX#2 | SELECT
    - EX#3 | SELECT with COUNT
    - EX#4 | SELECT with WHERE
    - EX#5 | SELECT with WHERE using AND operator
    - EX#6 | SELECT with WHERE using LIKE operator
    - EX#7 | SELECT with WHERE using BETWEEN operator
    - EX#8 | SELECT with aliases
    - EX#9 | ALTER TABLE RENAME
*/

-- Ex#1
SELECT *
FROM employees;

-- Ex#2
SELECT id, name, salary
FROM employees;

-- EX#3
SELECT COUNT(*)
FROM employees;

-- EX#4
SELECT *
FROM employees
WHERE salary > 10000;

-- EX#5
SELECT *
FROM employees
WHERE salary > 10000 and department_id = 1 ;

-- EX#6
SELECT *
FROM employees
WHERE name LIKE 'A%';

-- EX#7
SELECT *
FROM employees
WHERE salary BETWEEN 70000 AND 100000;

-- EX#8
SELECT id AS EmployeeID, name AS EmployeeName, salary AS EmployeeSalary
FROM employees;

-- EX#9
ALTER TABLE new_departments  RENAME TO departments;
