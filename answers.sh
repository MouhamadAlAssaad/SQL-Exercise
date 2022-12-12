# 1:
SELECT name FROM students ;
# 2 :
select * FROM students WHERE Age>30;
# 3 :
SELECT name FROM students WHERE Age=30 AND Gender = 'f';
# 4 :
SELECT Points from students WHERE id = 1 ;
#  5:
INSERT INTO students (Name, Age, Gender, Points)
VALUES('Mouhamad', '23', 'M', '350');
# 6 :
UPDATE students
SET Points='350'
WHERE name='Basma';
# 7 :
UPDATE students
SET Points='150'
WHERE id='1';



#creating table
# 1 :
CREATE TABLE "Graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER NOT NULL UNIQUE,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);


# 2 :
INSERT INTO Graduates (Name, Age, Gender, Points)
SELECT Name, Age, Gender, Points FROM students
WHERE name="Layal"; 

# 3 :
UPDATE Graduates SET Graduation = '08/09/2018'
WHERE name = 'Layal';

# 4 :
DELETE FROM students WHERE name="Layal" ;

# joins :
SELECT employees.Name , employees.Company , companies.Date FROM employees INNER JOIN companies ON companies.Name=employees.Company ;

SELECT employees.name FROM employees INNER JOIN companies ON employees.Company=companies.Name WHERE companies.Date<2000;

SELECT companies.Name FROM companies INNER JOIN employees ON employees.Company=companies.Name WHERE Role="Graphic Designer";

# Count and Filter

# 1 :
SELECT * FROM students WHERE Points=(SELECT max(Points) FROM students);

# 2 :
SELECT avg(Points) FROM students;

# 3 :
SELECT count(ID) FROM students WHERE Points="500";

# 4 :
SELECT Name FROM students WHERE Name like '%s%';

# 5 :
SELECT * FROM students ORDER BY Points DESC