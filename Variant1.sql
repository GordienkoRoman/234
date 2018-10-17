1.  
Select * 
from Students
Order by groupid Asc, name desc
2.
select groupid,count(*)
from students
group by groupid
3.
Select s.name,g.num 
from students s join groups g on(s.group id=g.groupid)
4.
select sub.subjectid,sub.name,AVG(mark),count(ex.mark)
from subjects sub join Exams ex on(sub.subjectid=ex.subjectid)
where count(ex.mark)>10
5.
select studentid
from students
where studentid not in(select studentid from exams)
6.
select s.name
from students s join exams ex on(s.studentid=ex.studentid)
group by s.name
having min(mark)>2
