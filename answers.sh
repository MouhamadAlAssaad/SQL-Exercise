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



