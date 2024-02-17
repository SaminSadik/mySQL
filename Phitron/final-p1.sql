CREATE DATABASE Student_Library;
USE Student_Library;

CREATE TABLE Student (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone VARCHAR(15),
    Address TEXT
);

CREATE TABLE Book (
    ISBN VARCHAR(13) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(50),
    TotalCopies INT NOT NULL,
    AvailableCopies INT NOT NULL
);

CREATE TABLE Borrowing (
    BorrowID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    ISBN VARCHAR(13),
    BorrowDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);

INSERT INTO Student (StudentID, Name, Email, Phone, Address) 
    VALUES(2, 'Student2', 's1@mail.co', '999', "___");
INSERT INTO Book (ISBN, Title, Author, Genre, TotalCopies, AvailableCopies) 
    VALUES('XxX','DaBook','DaAuthor','DaGenre', 10, 5);
INSERT INTO Book (ISBN, Title, Author, Genre, TotalCopies, AvailableCopies) 
    VALUES('AaA','DeBook','DeAuthor','DeGenre', 20, 2);
    

    INSERT INTO Borrowing (StudentID, ISBN, BorrowDate, DueDate, ReturnDate) VALUES
        (
            1,
            (SELECT ISBN FROM Book ORDER BY AvailableCopies DESC LIMIT 1),
            CURDATE(),
            DATE_ADD(CURDATE(), INTERVAL 7 DAY),
            DATE_ADD(CURDATE(), INTERVAL 7 DAY)
        );

    SET SQL_SAFE_UPDATES = 0;
    UPDATE Book
    SET AvailableCopies = AvailableCopies - 1
    WHERE ISBN = '9780132350884';
    SET SQL_SAFE_UPDATES = 1;

    SELECT s.Name, COUNT(b.ISBN) AS BooksBorrowed
    FROM Student AS s JOIN Borrowing AS b
        ON s.StudentID = b.StudentID
    GROUP BY s.Name
    HAVING BooksBorrowed = (
        SELECT MAX(BorrowedBooks)
        FROM (
            SELECT COUNT(b.ISBN) AS BorrowedBooks
            FROM Student AS s JOIN Borrowing AS b
                ON s.StudentID = b.StudentID
            GROUP BY s.Name
        ) AS bCount
    );
    
    SELECT *
    FROM Borrowing
    WHERE ReturnDate IS NULL
    AND DueDate < CURDATE();

