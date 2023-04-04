USE school;
CREATE table student (

ID INT NOT NULL AUTO_INCREMENT,
First_name VARCHAR(255),
Last_name VARCHAR(255)NOT NULL,
School_ID INT,
Start_date DATE,
Date_entered DATETIME,
PRIMARY KEY (ID)
);

CREATE TABLE school (
ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(255),
Date_founded DATE,
Date_entered DATETIME,
PRIMARY KEY (ID)
);

SELECT * FROM student;
SELECT * FROM school;

INSERT INTO school (Name, Date_entered)
VALUES ('Coding Academy', NOW()), ('MJC', NOW()), ('CSU Stanislaus', NOW());

INSERT INTO student (First_Name, Last_Name, Date_entered)
Values ('John','Smith', NOW()), ('Debra', 'Smith', NOW()), ('Joe', 'Mama', NOW()), ('Hilary', 'Duff', NOW()), ('Hayley', 'Williams', NOW());

UPDATE school SET Date_founded = '2019-05-04' WHERE ID = 1;
UPDATE school SET Date_founded = '1921-03-02' WHERE ID = 2;
UPDATE school SET Date_founded = '1957-06-09' WHERE ID = 3;

UPDATE student SET School_ID = 1 WHERE ID IN (1,3,5);
UPDATE student SET School_ID = 2 WHERE ID = 2;
UPDATE student SET School_ID = 3 WHERE ID = 4;

UPDATE student SET start_date = '2022-10-06' WHERE ID IN (1,3,5);
UPDATE student SET start_date = '2020-05-04' WHERE ID = 2;
UPDATE student SET start_date = '2018-04-05' WHERE ID = 4;

SELECT t.id, t.First_name, t.Last_name, c.Name, c.Date_Founded
FROM student t
LEFT JOIN school c ON t.school_ID = c.id;


SELECT t.First_name, t.Last_name, c.Name
FROM student t
Left JOIN school c ON t.school_ID = c.id
WHERE school_id > 1;

SELECT * FROM student WHERE School_id = "Code Academy";
SELECT * FROM school ORDER BY Date_founded;

SELECT t.First_name, t.Last_name, c.Name
FROM student t
LEFT JOIN school c ON t.school_ID = c.id;

UPDATE student SET School_ID = 1 WHERE last_name = 'Smith';




