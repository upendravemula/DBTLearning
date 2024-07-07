with source as
(

    select * from DBTTRAINING.SCH_DBT.payment
),
renamed as
(

select
id as paymentid,
order_id,
amount/100 as amount

from

source

)
select * from renamed