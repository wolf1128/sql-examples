/*
* Specifications:

    Syntax:
        SELECT column_name(s)
        FROM table_name
        WHERE condition
        GROUP BY column_name(s)
        ORDER BY column_name(s);

    Selected DB: demo-db-0.sqlite
*/

-- Ex#1
SELECT COUNT(id), name
FROM employees
GROUP BY name;


-- Ex#2
SELECT COUNT(id), name
FROM employees
GROUP BY name
ORDER BY COUNT(id) DESC;


-- Ex#3 GB with JOIN
SELECT E.name, D.department_name, E.salary
FROM employees AS E
LEFT JOIN departments AS D ON E.department_id = D.id 
