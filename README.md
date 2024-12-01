# Jarkom-Modul-5-IT31-2024

## Anggota Kelompok IT31 :

| Nama Lengkap         | NRP        |
| -------------------- | ---------- |
| Maulana Ahmad Zahiri | 5027231010 |
| Dzaky Faiq Fayyadhi  | 5027231047 |

## IP PREFIX

`192.232`

## Daftar Isi

- [Topology](#topology)
- [Rute](#rute)
- [Pembagian IP](#pembagian-ip)
- [Konfigurasi](#konfigurasi)

## Topology

![alt text](/img/top.png)

## Rute

![alt text](/img/rute.png)

## Pembagian IP

![alt text](/img/pembagian-ip.png)

## Konfigurasi

Settingan untuk setiap router, client, dll.

## NewEridu

```sh
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
  address 192.232.0.1
  netmask 255.255.255.252

auto eth2
iface eth2 inet static
  address 192.232.0.5
  netmask 255.255.255.252

#A4
post-up route add -net 192.232.0.128 netmask 255.255.255.128 gw 192.232.0.6

#A6
post-up route add -net 192.232.2.0 netmask 255.255.255.248 gw 192.232.0.2

#A3
post-up route add -net 192.232.0.8 netmask 255.255.255.248 gw 192.232.0.6

#A8
post-up route add -net 192.232.2.64 netmask 255.255.255.192 gw 192.232.0.2

#A7
post-up route add -net 192.232.2.8 netmask 255.255.255.248 gw 192.232.0.2

#A5
post-up route add -net 192.232.1.0 netmask 255.255.255.0 gw 192.232.0.6
```

## SixStreet (DHCP Relay)

```sh
auto eth0
iface eth0 inet static
  address 192.232.0.2
  netmask 255.255.255.252
  gateway 192.232.0.1

auto eth1
iface eth1 inet static
  address 192.232.2.1
  netmask 255.255.255.248

auto eth2
iface eth2 inet static
  address 192.232.2.9
  netmask 255.255.255.248

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A8
post-up route add -net 192.232.2.64 netmask 255.255.255.192 gw 192.232.2.3

#A9
post-up route add -net 192.232.2.128 netmask 255.255.255.252 gw 192.232.2.2

#A4
post-up route add -net 192.232.0.128 netmask 255.255.255.128 gw 192.232.0.1
```

## HDD (DNS)

```sh
auto eth0
iface eth0 inet static
  address 192.232.2.10
  netmask 255.255.255.248
  gateway 192.232.2.9

up echo nameserver 192.168.122.1 > /etc/resolv.conf
```

## Fairy (DHCP)

```sh
auto eth0
iface eth0 inet static
  address 192.232.2.11
  netmask 255.255.255.248
  gateway 192.232.2.9

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A8
post-up route add -net 192.232.2.16 netmask 255.255.255.192 gw 192.232.2.9

#A4
post-up route add -net 192.232.0.128 netmask 255.255.255.128 gw 192.232.2.9
```

## OuterRing (DHCP Relay)

```sh
auto eth0
iface eth0 inet static
  address 192.232.2.3
  netmask 255.255.255.248
  gateway 192.232.2.1

auto eth1
iface eth1 inet static
  address 192.232.2.65
  netmask 255.255.255.192

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A9
post-up route add -net 192.232.2.128 netmask 255.255.255.252 gw 192.232.2.2

#A1
post-up route add -net 192.232.0.0 netmask 255.255.255.252 gw 192.232.2.1

#A7
post-up route add -net 192.232.2.8 netmask 255.255.255.248 gw 192.232.2.1
```

## Burnice (Client)

```sh
auto eth0
iface eth0 inet dhcp

#Hollowzero
post-up route add -net 192.232.2.128 netmask 255.255.255.252 gw 192.232.2.65

#A1
post-up route add -net 192.232.0.0 netmask 255.255.255.252 gw 192.232.2.65
```

## Caesar (Client)

```sh
auto eth0
iface eth0 inet dhcp

#Hollowzero
post-up route add -net 192.232.2.128 netmask 255.255.255.252 gw 192.232.2.65

#A1
post-up route add -net 192.232.0.0 netmask 255.255.255.252 gw 192.232.2.65
```

## LuminaSquare (DCHP Relay)

```sh
auto eth0
iface eth0 inet static
  address 192.232.0.6
  netmask 255.255.255.252
  gateway 192.232.0.5

auto eth1
iface eth1 inet static
  address 192.232.0.9
  netmask 255.255.255.248

auto eth2
iface eth2 inet static
  address 192.232.1.1
  netmask 255.255.255.0

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A1
post-up route add -net 192.232.0.0 netmask 255.255.255.252 gw 192.232.0.5

#A4
post-up route add -net 192.232.0.128 netmask 255.255.255.128 gw 192.232.0.11

#A7
post-up route add -net 192.232.2.8 netmask 255.255.255.248 gw 192.232.0.5
```

## Jane (Client)

```sh
auto eth0
iface eth0 inet dhcp
```

## Policeboo (Client)

```sh
auto eth0
iface eth0 inet dhcp
```

## HIA (Web Server)

```sh
auto eth0
iface eth0 inet static
  address 192.232.0.10
  netmask 255.255.255.248
  gateway 192.232.0.9

up echo nameserver 192.168.122.1 > /etc/resolv.conf
```

## HollowZero (Web Server)

```sh
auto eth0
iface eth0 inet static
  address 192.232.2.130
  netmask 255.255.255.252
  gateway 192.232.2.129

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A1
post-up route add -net 192.232.0.0 netmask 255.255.255.252 gw 192.232.2.129
```

## BalletTwins (DHCP Relay)

```sh
auto eth0
iface eth0 inet static
  address 192.232.0.11
  netmask 255.255.255.248
  gateway 192.232.0.9

auto eth1
iface eth1 inet static
  address 192.232.0.129
  netmask 255.255.255.128

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A2
post-up route add -net 192.232.0.4 netmask 255.255.255.252 gw 192.232.0.9

#A1
post-up route add -net 192.232.0.0 netmask 255.255.255.252 gw 192.232.0.9

#A7
post-up  route add -net 192.232.2.8 netmask 255.255.255.248 gw 192.232.0.9
```

## Ellen (Client)

```sh
auto eth0
iface eth0 inet dhcp
```

## Lycaon (Client)

```sh
auto eth0
iface eth0 inet dhcp
```

## ScootOutpost

```sh
auto eth0
iface eth0 inet static
  address 192.232.2.2
  netmask 255.255.255.248
  gateway 192.232.2.1

auto eth1
iface eth1 inet static
  address 192.232.2.129
  netmask 255.255.255.252

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A2
post-up route add -net 192.232.0.4 netmask 255.255.255.252 gw 192.232.2.1

#A8
post-up route add -net 192.232.2.16 netmask 255.255.255.192 gw 192.232.2.3

#A1
post-up  route add -net 192.232.0.0 netmask 255.255.255.252 gw 192.232.2.1
```

## Demonstrasi

- setelah selesai subnetting dan routing, maka langkah selanjutnya config
- setup DNS 192.168.122.1 , pada web console `NewEridu` dan run `setup.sh`

![alt text](/img/1.png)

- lalu coba ping dari NewEridu, SixStreet, OuterRing, Fairy
  ![alt text](/img/2.png)
  ![alt text](/img/3.png)
  ![alt text](/img/4.png)
  ![alt text](/img/5.png)

## Config DHCP

- Jangan lupa buat ganti IP di isc-dhcp-relay ini pake IP dari DHCP Server (Fairy) untuk isc-dhcp-relay itu sama semua untuk OuterRing, SixStreet, LuminaSquare, BalletTwins

![alt text](/img/6.png)
![alt text](/img/7.png)
![alt text](/img/8.png)
![alt text](/img/9.png)

![alt text](/img/image.png)

trus coba liat juga di web console Fairy tail -f /var/log/syslog
![alt text](/img/image-1.png)

# Nomor 2

- web console fairy dan cat iptables yang paling bawah
  ![alt text](/img/image-2.png)
- cek iptables masi kosong
  ![alt text](/img/image-3.png)

- run command `iptables -A INPUT -p icmp --icmp-type echo-request -j DROP` terus bakal tertampil di iptables
  ![alt text](/img/image-4.png)

- tes ping ke scootOutpost
  ![alt text](/img/image-5.png)

# Nomor 3

- test ping ke semua nodes
- ke ballettwins
  ![alt text](/img/image-6.png)

- bash setup.sh
  ![alt text](/img/image-7.png)

- liat command iptables paling bawah
  ![alt text](/img/image-8.png)

- masih belum ada policy
  ![alt text](/img/image-9.png)

- bikin aturan untuk block semua request
  ![alt text](/img/image-10.png)

- lalu buat aturan agar hanya Fairy, yang bisa akses iptables -A INPUT -s 192.232.2.11 -j ACCEPT

![alt text](/img/image-11.png)

- fairy bisa ping ke hdd

![alt text](/img/image-12.png)

- lalu install netcat untuk memastikan

```sh
apt install netcat
```

- lalu ke hdd
  ![alt text](/img/image-13.png)

- lalu test di fairy
  ![alt text](/img/image-14.png)

- sehingga tertampil di HDD
  ![alt text](/img/image-15.png)

# Nomor 4

- jalankan setup.sh pada HollowZero
  ![alt text](/img/image-16.png)

- setalh dijalankan cek webserver nya
  ![alt text](/img/image-17.png)

- cek command iptables paling bawah pada setup.sh
  ![alt text](/img/image-18.png)

- date buat liat tanggal sekarang
  ![alt text](/img/image-19.png)

- lalu jalankan 3 iptables paling bawah
  ![alt text](/img/image-20.png)

- caesar tidak bisa ping ke hollowzero karena hari ini hari minggu
  ![alt text](/img/image-21.png)

- lalu ganti aturan agar minggu bisa diakses
  ![alt text](/img/image-22.png)

- lalu drop aturan 1 yang (192.232.2.64), `iptables -D INPUT 1` dan `iptables -A INPUT -s 192.232.2.64/26 -m time --weekdays Sat -j ACCEPT`

![alt text](/img/image-23.png)

- lalu setelah itu tes di caesar bisa nge ping dan curl di hollowzero

![alt text](/img/image-24.png)

# Nomor 5

- jalankan setup.sh dan cek curl localhost nya
  ![alt text](/img/image-25.png)

- jalankan iptables dibawah
  ![alt text](/img/image-26.png)

- lalu kita cek
  ![alt text](/img/image-27.png)

- pada lycaon tidak bisa karena melebihi waktu akses
  ![alt text](/img/image-28.png)

- pada jane bisa karena ada hak akses kepolisian
  ![alt text](/img/image-29.png)

# Nomor 6

- jalankan bagian iptables dari `create chain` sampao `block all`
  ![alt text](/img/image-33.png)

- lalu tes ping dan curl pada policeboo ke HIA
  ![alt text](/img/image-34.png)

- kan masih bisa oleh karena itu kita coba nmap ke sana `nmap -p 1-100 192.232.0.10`
  ![alt text](/img/image-35.png)

- lalu setelah itu kita coba ping dan curl lagi
  ![alt text](/img/image-36.png)

# Nomor 7

- cat setup.sh pada hollowzero dan jalankan iptables yang `Allow only 2 active connections`
  ![alt text](/img/image-37.png)

  ![alt text](/img/image-38.png)

- lalu setelah itu coba testing pake parallel di client bebas, antara Caesar, Burnice, Jane atau Policeboo dan jangan lupa buat install parallel dulu `apt update` dan `apt install parallel -y`

- setelah itu coba `parallel curl -s IP_HOLLOWZER ::: IPCAESAR IPBURNICE IPJANE IPPOLICEBOO`

![alt text](/img/image-39.png)

dari sini terlihat hanya ada 2 koneksi yang bisa mengakses curl

# Nomor 8

- bash setup.sh pada burnice dan cek ipnya
  ![alt text](/img/image-40.png)

- lalu setalah itu cek di hollowzero menggunaakan netcat `nc -l -p 12345`
  ![alt text](/img/image-41.png)

- lalu cek di fairy
  ![alt text](/img/image-42.png)

- dan nanti hollowzero akan mendapat pesan buakn dari burnice namun dari fairy
  ![alt text](/img/image-43.png)

# MISI 3

- ![alt text](/img/image-44.png)

![alt text](/img/image-45.png)
![alt text](/img/image-46.png)
![alt text](/img/image-47.png)
![alt text](/img/image-48.png)
