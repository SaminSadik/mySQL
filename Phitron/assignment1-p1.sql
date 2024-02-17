CREATE database School;
USE School;
CREATE table Student
(
    Roll CHAR(4) PRIMARY KEY,
    Nam VARCHAR(50) NOT NULL,
    Class INT CHECK(Class>5 and Class<=10),
    Phone CHAR(11) UNIQUE,
    Email VARCHAR(30) UNIQUE,
    Address VARCHAR(200) NOT NULL
);
CREATE table Library
(
    Book_Name VARCHAR(50) PRIMARY KEY,
    Borrower_Roll CHAR(4) UNIQUE,
    Borrowable_days INT CHECK(Borrowable_days<31),
    Borrowed_days INT CHECK(Borrowed_days>0),
    FOREIGN KEY (Borrower_Roll) REFERENCES Student(Roll)
);
CREATE table Fees
(
    Student_Roll CHAR(4) PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Book_Name VARCHAR(50) UNIQUE,
    Due_Amount INT CHECK(Due_Amount>=0),
    FOREIGN KEY (Student_Roll) REFERENCES Student(Roll),
    FOREIGN KEY (Book_Name) REFERENCES Library(Book_Name)
);