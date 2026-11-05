auto eth0
iface eth0 inet static
    address 10.71.18.2
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.71.18.254
    netmask 255.255.255.128

auto eth2
iface eth2 inet static
    address 10.71.19.1
    netmask 255.255.255.252

# Meneruskan seluruh subnet 10.71.19.64/26 dan 10.71.19.128/25 ke Protocol7
up ip route add 10.71.19.64/26 via 10.71.19.2
up ip route add 10.71.19.128/25 via 10.71.19.2
up ip route add default via 10.71.18.1
