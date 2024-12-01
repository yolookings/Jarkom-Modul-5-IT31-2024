iptables -t nat -A PREROUTING -p tcp --dport 12345 -j DNAT --to-destination 192.232.2.130
iptables -t nat -A POSTROUTING -p tcp --dport 12345 -j MASQUERADE

#MISI3
#iptables -P INPUT DROP
#iptables -P OUTPUT DROP
#iptables -P FORWARD DROP
