with temp as 
(select * from firstsnowflakedb.public.provet_clients_new
)
select a.* from temp a join {{ ref('ConnectRawdata') }} b 
where a.client_id = b.client_id