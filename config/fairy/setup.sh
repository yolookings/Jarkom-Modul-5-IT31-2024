export DEBIAN_FRONTEND=noninteractive
apt update
apt install isc-dhcp-server netcat -y
cp ~/dhcpd.conf /etc/dhcp/dhcpd.conf
cp ~/isc-dhcp-server /etc/default/isc-dhcp-server
echo INTERFACESv4=\"eth0\" >/etc/default/isc-dhcp-server
service rsyslog start

service isc-dhcp-server start
#iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
