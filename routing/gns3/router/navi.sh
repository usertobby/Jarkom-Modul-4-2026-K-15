auto eth0
iface eth0 inet static
    address 10.71.34.2
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.71.32.254
    netmask 255.255.255.0

auto eth2
iface eth2 inet static
    address 10.71.33.62
    netmask 255.255.255.192

auto eth3
iface eth3 inet static
    address 10.71.33.254
    netmask 255.255.255.128

up ip route add default via 10.71.34.1
