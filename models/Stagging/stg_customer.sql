{{ config ( materialized ="table" ,) }}

--select * from DBTTRAINING.SCH_DBT.CUSTOMER;
-- below is calling table directly
/*with source as (

select * from DBTTRAINING.SCH_DBT.CUSTOMER

), */
-- calling using Source from yml file
with source as (
select * from 
{{ source('upendra', 'CUSTOMER') }}

),

renamed as (
select id as customer_id,
first_name,
last_name
from source
)

select * from renamed

