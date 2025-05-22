{{ config(meterialized = 'Table') }}

select * from {{ source('raw','provet_clients_new') }}
where ORGANIZATION_NAME is not null

