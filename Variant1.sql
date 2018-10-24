--1.
-- +1
Select * 
from Students
Order by groupid Asc, name desc
--2.
-- +1
select groupid, count(*)
from students
group by groupid
--3.
-- +1
Select s.name, g.num 
from students s join groups g on(s.groupid=g.groupid)
--4.
--нет группировки (group by...)
--неправильно отфильтрованы группы (having вместо where)
-- +0
select sub.subjectid, sub.name, AVG(mark), count(ex.mark)
from subjects sub join Exams ex on (sub.subjectid = ex.subjectid)
where count(ex.mark)>10
--5.
-- +2
select studentid
from students
where studentid not in(select studentid from exams)
--6.
-- забыл select
-- from (select subjectid from subjects) лишнее
-- +1
select s.name
from students s join exams ex on (s.studentid = ex.studentid)
group by s.name
having min(mark)>2 and count(mark)=select count(subjectid) from (select subjectid from subjects)

-- сумма 6