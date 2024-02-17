USE dummyDB;

SELECT GREATEST(2,3,1), LEAST(2,3,1);
-- returns the greatest or least value from the given list

SELECT MAX(salary), MIN(salary)
FROM employees;
-- returns the greatest or least value from the table column

SELECT  COUNT(*), -- total no. of rows
        COUNT(commission_pct) -- no. of cells in the column
FROM employees; -- null means empty, & it doesn't get counted

-- SUM & AVG returns the summation & average of the table column
SELECT department_id, COUNT(*), SUM(salary), AVG(salary)
FROM employees
GROUP BY department_id;
-- only considering the rows having the common GROUP BY value

SELECT department_id, AVG(salary)
FROM employees
WHERE department_id != 100 -- general conditions only
GROUP BY department_id
HAVING (SUM(salary) > 10000); -- group-function conditions only
-- for HAVING conditions with group functions, WHERE can't be used