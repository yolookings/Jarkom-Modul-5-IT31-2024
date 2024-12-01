echo net.ipv4.ip_forward=1 >/etc/sysctl.conf
sysctl -p

export DEBIAN_FRONTEND=noninteractive
apt update
apt install isc-dhcp-relay netcat -y
cp ~/isc-dhcp-relay /etc/default/isc-dhcp-relay

service isc-dhcp-relay start
service rsyslog start
