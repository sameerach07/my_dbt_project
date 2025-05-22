{{ config(meterialized="table") }}

with temp as (select * from {{ ref("ConnectRawdata") }})
select a.*
from temp a
join {{ ref("usingsourcerepresentation") }} b on a.client_id = b.client_id
