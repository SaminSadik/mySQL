CREATE DATABASE Office;
USE Office;
CREATE TABLE Employee
(
	EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    Age INT CHECK(Age>=18),
    Department VARCHAR(50) NOT NULL
);
INSERT into Employee
(EmployeeID, FirstName, LastName, Age, Department) values(1,'John','Doe',28,'Sales');
INSERT into Employee
(EmployeeID, FirstName, LastName, Age, Department) values(2,'Jane','Smith',32,'Marketing');
INSERT into Employee
(EmployeeID, FirstName, LastName, Age, Department) values(3,'Michael','Johnson',35,'Finance');
INSERT into Employee
(EmployeeID, FirstName, LastName, Age, Department) values(4,'Sarah','Brown',30,'HR');
INSERT into Employee
(EmployeeID, FirstName, LastName, Age, Department) values(5,'William','Davis',25,'Engineering');
INSERT into Employee
(EmployeeID, FirstName, LastName, Age, Department) values(6,'Emily','Wilson',28,'Sales');
INSERT into Employee
(EmployeeID, FirstName, LastName, Age, Department) values(7,'Robert','Lee',33,'Marketing');
INSERT into Employee
(EmployeeID, FirstName, LastName, Age, Department) values(8,'Laurra','Hall',29,'Finance');
INSERT into Employee
(EmployeeID, FirstName, LastName, Age, Department) values(9,'Thomas','White',31,'HR');
INSERT into Employee
(EmployeeID, FirstName, LastName, Age, Department) values(10,'Olivia','Clark',27,'Engineering');

SELECT DISTINCT Department
FROM Employee;

SELECT LastName
FROM Employee
ORDER BY Age DESC;

SELECT * FROM Employee
WHERE (Age>30) AND (Department='Marketing');

SELECT *
FROM Employee;

SELECT *
FROM Employee
WHERE FirstName LIKE "%son%" OR LastName LIKE "%son%";

SELECT EmployeeID, FirstName, LastName, Age
FROM Employee
WHERE Department="Engineering";
