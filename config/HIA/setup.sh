export DEBIAN_FRONTEND=noninteractive
apt update
apt install apache2 -y
cp ~/index.html /var/www/html/index.html
cp ~/000-default.conf /etc/apache2/sites-available/000-default.conf
service apache2 restart

#iptables -P INPUT DROP
#iptables -A INPUT -s 192.232.0.128/25 -m time --timestart 08:00 --timestop 21:00 -j ACCEPT
#iptables -A INPUT -s 192.232.1.0/24 -m time --timestart 03:00 --timestop 23:00 -j ACCEPT

#Create a chain for handling port scanning
iptables -N PORTSCAN

#Detect and handle new connections to ports 1-100
iptables -I INPUT 1 -j LOG --log-prefix "PORT SCAN BRO: " --log-level 4 --log-tcp-options --log-ip-options
iptables -A INPUT -p tcp --dport 1:100 -m state --state NEW -m recent --set --name portscan
iptables -A INPUT -p tcp --dport 1:100 -m state --state NEW -m recent --update --seconds 10 --hitcount 25 --name portscan -j PORTSCAN
#Log and block port-scanning IPs
iptables -A PORTSCAN -m recent --set --name blacklist
iptables -I PORTSCAN 1 -j LOG --log-prefix "PORT SCAN DETECTED: " --log-level 4 --log-tcp-options --log-ip-options
iptables -A PORTSCAN -j DROP
# Block all further traffic from blacklisted IPs
iptables -A INPUT -m recent --name blacklist --rcheck -j DROP
iptables -A OUTPUT -m recent --name blacklist --rcheck -j DROP
