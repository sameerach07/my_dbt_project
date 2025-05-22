{{ config(meterialized='view') }}

select * from {{  ref("ConnectRawdata") }}
where email is null
