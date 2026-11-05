auto eth0
iface eth0 inet static
    address 10.71.80.1
    netmask 255.255.255.248
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.71.67.254
    netmask 255.255.252.0

up ip route add default via 10.71.80.6
