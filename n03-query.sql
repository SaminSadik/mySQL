USE dummyDB;

SELECT DISTINCT employee_id -- showing unique values only
FROM employees; -- specifying the table

SELECT employee_id,first_name,last_name,salary
FROM employees;  -- Showing multiple field data (column) from a table

SELECT *   -- Showing ALL field data from a table
FROM employees;

SELECT *
FROM employees
WHERE employee_id > 150 -- showing only WHERE given conditions are met
ORDER BY employee_id DESC -- sorting (DESC / ASC)
LIMIT 10 -- sequential multi-select limit
OFFSET 5; -- number of regions from beginning to ignore before limit
-- order must follow (select > from > where > orderby > limit > offset)

SELECT employee_id FROM employees ORDER BY employee_id DESC
LIMIT 5, 10; -- Shortcut: LIMIT offset, limit;