USE database1;
CREATE TABLE Students
(
    id CHAR(4) UNIQUE, -- format-1:  field-name  data-type  constraint-type
    name VARCHAR(50) NOT NULL, -- only constraint type that must follow format-1
    age INT CHECK(age>12), -- checks condition inside (), errors if false
    mail VARCHAR(50), -- having constraints is not compulsory
    PRIMARY KEY(id), -- format-2: constraint-type (existing-field)
    dues DOUBLE, -- multiple formats can mix together, can be in separate lines
    CONSTRAINT UNIQUE(mail), -- format-3: optional-keyword  format-2
    CONSTRAINT con_Name CHECK(dues<100.0) -- format-4: CONSTRAINT  optional-name  format-2
);
INSERT into Students
(id, name, age, mail) VALUES('1001', 'San', 13, "test@gmail.com");
INSERT into Students
(id, name, age, mail, dues) VALUES('1002', 'Sad', 11, "demo@gmail.com", 100.0); -- check error
