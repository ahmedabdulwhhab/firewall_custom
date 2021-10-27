# firewall_custom
mix topology between simepleswitch and firewall switches


s1 and s2 are simple_switches.
</n>
s21 is a firewall switch
</n>


https://youtu.be/ap2M-e_kAuw


</n>
 sudo ryu-manager ../flowmanager/flowmanager.py fw_custom_001.py sw_custom_001.py --verbose --observe-links
 </n>
 
 https://github.com/ahmedabdulwhhab/firewall_custom
</n>



sudo ryu-manager ../flowmanager/flowmanager.py fw_custom_001.py sw_custom_001.py --verbose --observe-links
</n>



curl -X PUT http://localhost:8080/firewall/module/enable/0000000000000040    #enable communication as it is by default disabled
</n>



curl -X POST -d '{"nw_src": "10.0.0.1", "nw_dst": "10.0.0.4","dl_type":"IPv4", "nw_proto": "ICMP"}' http://localhost:8080/firewall/rules/0000000000000040 #to allow ICMP
</n>



curl -X POST -d '{"nw_src": "10.0.0.4", "nw_dst": "10.0.0.1","dl_type":"IPv4", "nw_proto": "ICMP"}' http://localhost:8080/firewall/rules/0000000000000040 #to allow ICMP
</n>

#TO ALLOW SOCKET CONNECTION
</n>
curl -X POST -d '{"nw_src": "10.0.0.1/32", "nw_dst": "10.0.0.2/32","dl_type":"IPv4", "nw_proto": "TCP"}' http://localhost:8080/firewall/rules/0000000000000040 #to allow ICMP
</n>

curl -X POST -d '{"nw_src": "10.0.0.2/32", "nw_dst": "10.0.0.1/32","dl_type":"IPv4", "nw_proto": "TCP"}' http://localhost:8080/firewall/rules/0000000000000040 #to allow ICMP
