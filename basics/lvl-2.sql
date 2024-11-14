/*
* Covered Examples:
    - EX#1: inner join
    - EX#2: inner join with conditions
    - EX#3: left join
    - EX#4: right join
    - EX#5: full outer join
    - EX#6: cross (self) join
*/

-- Ex#1
SELECT *
FROM employees E, departments D
WHERE  E.department_id = D.id;

-- Ex#2
SELECT COUNT(E.id) AS EMPNo, D.name AS DepartmentName
FROM employees E, departments D
WHERE  E.department_id = D.id
GROUP BY D.name
ORDER BY E.hire_date DESC;


-- EX#3 
SELECT *
FROM employees E
LEFT JOIN departments D
ON E.department_id = D.id;

-- EX#4
SELECT *
FROM employees E
RIGHT JOIN departments D
ON E.department_id = D.id;

-- EX#5
SELECT *
FROM employees E
FULL OUTER JOIN departments D
ON E.department_id = D.id;

-- EX#6
SELECT *
FROM employees E1, employees E2
WHERE E1.department_id <> E2.department_id;
