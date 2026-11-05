auto eth0
iface eth0 inet static
    address 10.71.19.130
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.71.19.142
    netmask 255.255.255.248

auto eth2
iface eth2 inet static
    address 10.71.19.145
    netmask 255.255.255.252

# Rute maju ke Phantoma & Shibuya
up ip route add 10.71.19.160/27 via 10.71.19.146
up ip route add 10.71.19.4/30 via 10.71.19.146
up ip route add 10.71.19.192/26 via 10.71.19.146

# DEFAULT ROUTE BALIK KE PROTOCOL7 (10.71.19.129)
up ip route add default via 10.71.19.129
