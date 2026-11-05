auto eth0
iface eth0 inet static
    address 10.71.80.2
    netmask 255.255.255.248
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.71.74.62
    netmask 255.255.255.192

auto eth2
iface eth2 inet static
    address 10.71.73.254
    netmask 255.255.254.0

up ip route add default via 10.71.80.6
