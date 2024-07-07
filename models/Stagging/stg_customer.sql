{{ config ( materialized ="table" ,) }}

--select * from DBTTRAINING.SCH_DBT.CUSTOMER;
with source as (

select * from DBTTRAINING.SCH_DBT.CUSTOMER

),


renamed as (
select id as customer_id,
first_name,
last_name
from source
)

select * from renamed

