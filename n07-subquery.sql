USE dummyDB;

-- subquery is, query within query
SELECT * FROM employees
WHERE salary >= (
                SELECT salary
                FROM employees
                WHERE employee_id = 101
                );
-- subquery can be in SELECT or FROM as well
-- subquery in WHERE is more flexible, hence more used

SELECT * FROM employees
WHERE salary = (
                SELECT max(salary) FROM employees
                WHERE salary < (
                                SELECT max(salary)
                                FROM employees
                                )
                ); -- Nested subquery
                
SELECT * FROM employees as MNGR
WHERE salary > (
                SELECT salary
                FROM employees as EMPL
                WHERE MNGR.manager_id = EMPL.employee_id
                ); -- An Advanced subquery
