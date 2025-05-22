{{config(materialized='table') }}

select * from {{source('raw','provet_clients_new')}}
union all
select * from {{ source('raw','provet_clients_new') }}
