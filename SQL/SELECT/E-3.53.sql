
SELECT Student.Sno,Sname,Ssex,Sage,Sdept,Cno,Grade
FROM  Student  LEFT OUTER JOIN SC ON  (Student.Sno=SC.Sno);
