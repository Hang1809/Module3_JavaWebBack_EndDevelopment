SELECT * FROM quanlysinhvien.subject;
SELECT SubName, SubId, Status FROM subject
HAVING MAX(Credit);

SELECT S.StudentId,S.StudentName
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING max(mark);

SELECT S.StudentId,S.StudentName, S.Address, S.phone,S.status, S.classID, M.mark
FROM Student S join Mark M on S.StudentId = M.StudentId
order by mark DESC;