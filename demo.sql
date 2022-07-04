use quanlysinhvien;
CREATE VIEW STUDENTS_VIEW AS
SELECT studentName, address, studentId
FROM  student;
SELECT * FROM STUDENTS_VIEW
WHERE address is not null;

UPDATE STUDENTS_VIEW
SET address = 'DaNang'
WHERE studentId = 1;

EXPLAIN SELECT * FROM Student 
WHERE address = 'hue';

-- Tao index tren bang
CREATE UNIQUE INDEX Index_name ON student(studentName);

DELIMITER //
-- DROP PROCEDURE IF EXISTS allrecords;
Create procedure allrecords()
BEGIN
SELECT * FROM Student;
END ;
 // DELIMITER ;

   
   

