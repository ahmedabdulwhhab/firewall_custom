
curl -X PUT http://localhost:8080/firewall/module/enable/0000000000000040    #enable communication as it is by default disabled
curl -X POST -d '{"nw_src": "10.0.0.1", "nw_dst": "10.0.0.4","dl_type":"IPv4", "nw_proto": "ICMP"}' http://localhost:8080/firewall/rules/0000000000000040 #to allow ICMP
curl -X POST -d '{"nw_src": "10.0.0.4", "nw_dst": "10.0.0.1","dl_type":"IPv4", "nw_proto": "ICMP"}' http://localhost:8080/firewall/rules/0000000000000040 #to allow ICMP
 
