{# 
{% snapshot dim_provet_clients %}
{{ config(
    target_schema='PUBLIC',
    unique_key='client_id',
    updated_at= 'updated_at',
    meterialized='incremental'
    stretagy='check',
    invalidate_hard_delete=true
) }}

select * from raw.provet_clients_new

{% endshapshot %}

#}
