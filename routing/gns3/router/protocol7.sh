auto eth0
iface eth0 inet static
    address 10.71.19.2
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.71.19.126
    netmask 255.255.255.192

auto eth2
iface eth2 inet static
    address 10.71.19.129
    netmask 255.255.255.252

# Rute maju ke Knights (A20 s/d A25)
up ip route add 10.71.19.128/25 via 10.71.19.130

# DEFAULT ROUTE BALIK KE DEUS (10.71.19.1)
up ip route add default via 10.71.19.1
