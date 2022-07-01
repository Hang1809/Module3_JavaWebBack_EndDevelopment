USE quanlysinhvien;
SELECT StudentName 
FROM student
WHERE studentname LIKE 'H%';

SELECT classname, startdate 
FROM class
WHERE startdate LIKE  '2008-12%';

SELECT subname 
FROM subject 
WHERE 3 < credit <5;

UPDATE student 
SET ClassId = '2' WHERE (StudentId = '4');

SELECT studentname,subname,mark 
from student, subject, mark 
order by mark;