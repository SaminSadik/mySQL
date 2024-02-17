CREATE database database1; -- Creating Schema (must be unique name)

USE database1; -- Selecting the schema to interact 

CREATE table Students -- multiple tables can't have same name
(
    Name VARCHAR(50), -- field format: field-name  data-type
    Roll CHAR(4) PRIMARY KEY, -- Declaring PK, must always be unique
    Marks DOUBLE -- last field doesn't end with comma
); -- Basic table creation

-- # Data Modify:
INSERT into Students
(Roll, Name, Marks) values(1018, 'Sadik', 80.5);
INSERT into Students
(Name, Roll) values('Khan', 1021); -- Unspecified field values are null

set SQL_SAFE_UPDATES = 0;  -- Can't update / delete without this
UPDATE Students -- updating specific table
SET Name = 'Samin' -- Changing specific field value
WHERE Roll = 1018; -- targetting through PK to avoid duplicate confusion
set SQL_SAFE_UPDATES = 1; -- Turning back on for security

SET SQL_SAFE_UPDATES = 0;
DELETE from Students -- deleting specific region of a table
WHERE Roll = 1021; -- if not specified, whole table gets deleted
SET SQL_SAFE_UPDATES = 1;

-- # Structure Change:
ALTER table Students
ADD COLUMN Contact VARCHAR(18); -- Adds column to the table

ALTER table Students
MODIFY COLUMN Marks INT; -- modifies column type

ALTER table Students
DROP COLUMN Contact; -- deletes the column

DROP TABLE Students; -- Deletes the entire table