with temp as
(
    select * from {{ ref('ConnectRawdata') }}    
)
select * from temp where client_id is null