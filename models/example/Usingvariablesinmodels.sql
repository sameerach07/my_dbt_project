{% set v_client_id = 123 %}
{% do log ('Cliend id is ' ~ v_client_id, info = true) %}

with temp as (
    select * from {{ ref('ConnectRawdata') }}
)
select * from temp where client_id = {{v_client_id}}

