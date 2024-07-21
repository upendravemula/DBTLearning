select 
e.empid, e.full_Name,r.dept_name

 from {{ ref('Dim_Emp') }} e
  inner join {{ ref('stag_dept_emp') }} r 
  on e.empid = r.empid



