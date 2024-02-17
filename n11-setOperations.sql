USE dummydb;
-- There are 4 main operations in SETs

SELECT * FROM Employees
WHERE Salary > 10000
UNION -- takes elements from both set, but only uniques
SELECT * FROM Employees
WHERE Department_id = 100;

SELECT * FROM Employees
WHERE Salary > 10000
UNION ALL -- takess all elements from both sets, even duplicates
SELECT * FROM Employees
WHERE Department_id = 100;

SELECT * FROM Employees
WHERE Salary > 10000
INTERSECT -- takes only common elements in both sets
SELECT * FROM Employees
WHERE Department_id = 100;

-- similarly MINUS operation takes all element of 1st set that are not in 2nd set
-- but MINUS syntax doesn't work in mySQL, JOIN/WHERE are used to emulate it

SELECT * FROM Employees
WHERE Salary > 10000 AND Department_id != 100; -- same operation as MINUS