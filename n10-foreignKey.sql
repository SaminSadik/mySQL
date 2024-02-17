CREATE DATABASE University;
USE University;
CREATE TABLE Students
(
    ID INT PRIMARY KEY,
    Name VARCHAR(20)
);
CREATE TABLE Courses
(
    Code VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(20)
);
CREATE table Semester
(
    CourseEntry INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseCode VARCHAR(10),
    FOREIGN KEY(StudentID) -- specifying foreign key
        REFERENCES Students(ID) -- connect to parent table
        ON DELETE CASCADE, -- optional operation
    -- without ON DELETE, parent table rows -
    -- that are foreign key, can't be deleted
    -- CASCADE deletes the rows containing the deleted key
    -- SET NULL sets NULLs for the deleted key in foregn table
    FOREIGN KEY(CourseCode)
        REFERENCES Courses(Code)
        ON DELETE SET NULL -- Primary Keys can't be NULL
);