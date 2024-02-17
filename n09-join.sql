USE dummyDB;

SELECT first_name, department_name
FROM employees, departments  -- joining tables without JOIN
WHERE employees.department_id = departments.department_id;

SELECT employees.employee_id, -- common field must be referenced
       departments.department_name,
       employees.department_id -- better to refer every field
FROM employees, departments
WHERE employees.department_id = departments.department_id;

SELECT first_name, department_name
FROM employees JOIN departments -- joining tables using JOIN
WHERE employees.department_id = departments.department_id;
-- using JOIN is more efficient than not using JOIN

SELECT first_name, department_name
FROM employees JOIN departments USING(department_id);
-- here both tables must have a common field with exact same name
    
SELECT employees.first_name, departments.department_name
FROM employees JOIN departments -- reccomended way to join
    ON employees.department_id = departments.department_id;
    
-- join based on only taking the common parts
SELECT employees.first_name, departments.department_name
FROM employees INNER JOIN departments -- same as normal JOIN
    ON employees.department_id = departments.department_id;
    
-- keep all of the first table regardless of being common or not
SELECT DISTINCT employees.manager_id, department_name
FROM employees LEFT JOIN departments -- non-commons are NULL
    ON employees.manager_id = departments.manager_id;
    
-- keep all of the last table regardless of being common or not
SELECT employees.first_name, departments.department_name
FROM employees RIGHT JOIN departments -- non-commons are NULL
    ON employees.department_id = departments.department_id;
    
-- keep all cells regardless of having no corresponding value
SELECT employees.manager_id, department_name, location_id
FROM employees CROSS JOIN departments -- non-commons are NULL
    ON employees.department_id = departments.department_id;
    
SELECT empl.first_name AS Employee, mngr.first_name AS Manager
FROM employees AS empl JOIN employees AS mngr -- self JOIN
    ON empl.employee_id = mngr.manager_id;