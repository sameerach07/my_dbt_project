select 
{{ dbt_utils.generate_surrogate_key(['client_id','first_name']) }} as PK_key,
a.* from {{ source('raw', 'provet_clients_new') }} a
