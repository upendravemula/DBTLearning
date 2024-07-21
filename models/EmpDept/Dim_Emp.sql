

 select 
 Empid,
 first_name ||'  '|| last_name as full_Name,
 status
 deptid from
 {{source('deptemp','emp')}}
 where status ='active'

