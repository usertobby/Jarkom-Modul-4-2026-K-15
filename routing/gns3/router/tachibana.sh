auto eth0
iface eth0 inet static
    address 10.71.20.2
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.71.17.254
    netmask 255.255.254.0

auto eth2
iface eth2 inet static
    address 10.71.18.1
    netmask 255.255.255.252

# Rute ke cabang Deus & seluruh subnet di bawahnya
up ip route add 10.71.18.128/25 via 10.71.18.2
up ip route add 10.71.19.0/24 via 10.71.18.2
up ip route add default via 10.71.20.1
