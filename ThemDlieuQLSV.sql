SELECT * FROM quanlysinhvien.class;
USE quanlysinhvien;
INSERT INTO Class
VALUES (4, 'A1', '2008-12-20', 1);
INSERT INTO Class
VALUES (5, 'A2', '2008-12-22', 1);
INSERT INTO Class
VALUES (6student, 'B3', current_date, 0);

INSERT INTO Student (StudentName, Address, Phone, Statsubjectus, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
       
INSERT INTO mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1,1,8,1),
(1,2,10,2),
(2,1,12,1);

SELECT * FROM student ;
SELECT * FROM student WHERE Status = true ;
SELECT * FROM subject
where credit <10  ;
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C ON S.ClassId = C.ClassId;
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C ON S.ClassId = C.ClassId
where C.ClassName = 'A1';

SELECT S.StudentId , S.StudentName, Sub.SubName,M.Mark
FROM Student S 
join Mark M on S.StudentId = M.StudentId
join Subject Sub on M.SubId = Sub.SubId;

SELECT S.StudentId, S.StudentName, Sub.SubName,M.Mark
FROM Student S 
join Mark M on S.StudentId = M.StudentId 
join Subject sub on M.SubID = Sub.subId
where sub.subname ='CF';



