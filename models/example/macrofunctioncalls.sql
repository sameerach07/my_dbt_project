{{ config(Materialized='table')  }}

{% do log ('This is a custom message for displaying ', info=true) %}

with temp as (
    select * from {{ ref('ConnectRawdata') }} 
)
select a.client_id, 
{{ to_upper_function('first_name') }} first_name,
{{ to_lower_function('last_name')}} last_name,
{{ newclientid('client_id')}} new_client_id
 from temp a