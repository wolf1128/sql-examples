/*
* Covered Examples:
    - EX#1: GROUP BY with COUNT
    - EX#2: GROUP BY with COUNT and ORDER BY
    - EX#3: GROUP BY with HAVING
*/

-- Ex#1
SELECT COUNT(id), name
FROM employees
GROUP BY name;


-- Ex#2
SELECT id, name
FROM employees
GROUP BY name
ORDER BY id DESC;


-- Ex#3 
SELECT id, name, salary
FROM employees
WHERE salary > 5000
GROUP BY department_id
HAVING department_id = 2
ORDER BY id DESC;
