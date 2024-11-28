# Jarkom-Modul-4-IT31-2024

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
