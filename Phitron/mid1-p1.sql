use office;

CREATE TABLE Employees
(
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50),
    Date_Of_Birth DATE NOT NULL,
    Department_ID INT PRIMARY KEY,
    Salary DOUBLE CHECK(Salary>0)
);

CREATE TABLE Departments
(
    Department_ID INT,
    Department_Name VARCHAR(30) NOT NULL,
    FOREIGN KEY (Department_ID) REFERENCES Employees (Department_ID)
);
