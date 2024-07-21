select d.deptid, d.dept_name,e.empid from 
dept d
inner join emp e
on d.deptid=e.deptid
