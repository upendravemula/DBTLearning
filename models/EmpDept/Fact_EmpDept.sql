select 
e.empid,
d.deptid,
sum(e.sal) sal
from

dept d
inner join emp e on d.deptid = e.deptid
group by e.empid, d.deptid