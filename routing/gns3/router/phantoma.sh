auto eth0
iface eth0 inet static
    address 10.71.19.146
    netmask 255.255.255.252
    up echo 1 > /proc/sys/net/ipv4/ip_forward

auto eth1
iface eth1 inet static
    address 10.71.19.5
    netmask 255.255.255.252

auto eth2
iface eth2 inet static
    address 10.71.19.190
    netmask 255.255.255.224

# Rute melempar Subnet A25 ke Shibuya
up ip route add 10.71.19.192/26 via 10.71.19.6

# DEFAULT ROUTE BALIK KE KNIGHTS (10.71.19.145)
up ip route add default via 10.71.19.145
