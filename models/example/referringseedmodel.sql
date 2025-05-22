select a.* from {{ ref("provetclientsdata") }} a
left outer join {{ ref("ConnectRawdata") }} b  on a.client_id = b.client_id