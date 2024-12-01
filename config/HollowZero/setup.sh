export DEBIAN_FRONTEND=noninteractive
apt update
apt install apache2 -y
cp ~/index.html /var/www/html/index.html
cp ~/000-default.conf /etc/apache2/sites-available/000-default.conf
service apache2 restart

#iptables -P INPUT DROP
iptables -A INPUT -s 192.232.1.0/24 -m time --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
iptables -A INPUT -s 192.232.2.64/26 -m time --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT

# Allow only 2 active connections
# iptables -A INPUT -p tcp --dport http -m conntrack --ctstate NEW -m recent --set
# iptables -A INPUT -p tcp --dport http -m conntrack --ctstate NEW -m recent --update --seconds 1 --hitcount 3 -j REJECT
# iptables -A INPUT -p tcp --dport http -j ACCEPT
