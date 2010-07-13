select count(*) from servers, registers_servers rs, registers r 
where servers.client_id=2 
and r.id=rs.register_id 
and r.id=5 
and servers.id = rs.server_id;
