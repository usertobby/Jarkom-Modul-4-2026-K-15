# Interface ke NAT1 (Cloud/NAT)
auto eth0
iface eth0 inet dhcp
    up echo 1 > /proc/sys/net/ipv4/ip_forward

# Interface ke Switch1 (Subnet A1 - JJ & MyuMyu)
auto eth1
iface eth1 inet static
    address 10.71.0.126
    netmask 255.255.255.128

# Interface ke Router Wired (Subnet A2 P2P)
auto eth2
iface eth2 inet static
    address 10.71.0.130
    netmask 255.255.255.252

# Static Route ke seluruh cabang internal via Router Wired (10.71.0.129)
up ip route add 10.71.64.0/19 via 10.71.0.129
up ip route add 10.71.32.0/20 via 10.71.0.129
up ip route add 10.71.16.0/20 via 10.71.0.129

up iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE