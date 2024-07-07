with int_cut as 
(
select * from 
{{ ref('stg_customer') }}
),

 int_order as 
(
select * from 
{{ ref('stg_orders') }}
),
cust_order as
(

select 
customer_id,
min(order_date) as first_order,
max(order_date) as last_order,
count(order_id) as numberoforders

from int_order
group by customer_id
)
,
final as
(
select
a.customer_id, a.first_name,a.last_name
,b.first_order,b.last_order
,numberoforders
from


int_cut a
 inner join cust_order b 
 on a.customer_id = b.customer_id




)

select * from final