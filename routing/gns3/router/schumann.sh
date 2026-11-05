auto eth0
iface eth0 inet static
    address 10.71.80.3
    netmask 255.255.255.248
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.71.76.6
    netmask 255.255.255.248

auto eth2
iface eth2 inet static
    address 10.71.76.9
    netmask 255.255.255.252

up ip route add 10.71.78.0/23 via 10.71.76.10
up ip route add default via 10.71.80.6
