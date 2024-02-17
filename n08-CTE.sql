WITH CommonTableExpressions AS
(
    SELECT *
    FROM employees
)
SELECT *
FROM CommonTableExpressions;

WITH CTE1 AS
(
    SELECT AVG(salary) AS min_sal
    FROM employees
    WHERE department_id = 60
), -- multiple CTE
CTE2 AS
(
    SELECT MAX(salary) AS max_sal
    FROM employees
    WHERE department_id = 20
) -- no semicolon
SELECT *
FROM employees
WHERE salary > (SELECT min_sal FROM CTE1) AND salary < (SELECT max_sal FROM CTE2)
-- CTE is returned as a table
    