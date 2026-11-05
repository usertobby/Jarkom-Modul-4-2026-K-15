auto eth0
iface eth0 inet static
    address 10.71.0.129
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.71.34.1
    netmask 255.255.255.252

auto eth2
iface eth2 inet static
    address 10.71.20.1
    netmask 255.255.255.252

auto eth3
iface eth3 inet static
    address 10.71.80.6
    netmask 255.255.255.248

# Rute Spesifik Cabang Barat via Switch2
up ip route add 10.71.64.0/22 via 10.71.80.1
up ip route add 10.71.72.0/23 via 10.71.80.2
up ip route add 10.71.74.0/26 via 10.71.80.2
up ip route add 10.71.76.0/29 via 10.71.80.3
up ip route add 10.71.76.8/30 via 10.71.80.3
up ip route add 10.71.78.0/23 via 10.71.80.3

# Rute Cabang Timur & Cabang Dalam
up ip route add 10.71.32.0/20 via 10.71.34.2
up ip route add 10.71.16.0/20 via 10.71.20.2

# Default Route melempar ke Cyberia (NAT)
up ip route add default via 10.71.0.130
