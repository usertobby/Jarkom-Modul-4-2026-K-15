# Jarkom-Modul-4-2026-K-15

| Nama | NRP |
| ---  | --- |
| I Made Tobby Anantha Adiwijaya | 5027251064 |
| Rheza Pramudita Adi Putra | 5027251090 |

## Link Spreadsheet
[LINK SPREADSHEET]  
https://docs.google.com/spreadsheets/d/11alOrE_nM6N1S3ChYQFPtsKm0776pas7/edit?usp=sharing

## CPT - VLSM

VLSM (Variable Length Subnet Mask) membagi satu blok alamat menjadi subnet dengan netmask berbeda sesuai kebutuhan tiap jaringan. Subnet besar mendapat blok besar, dan link antar router cukup /30, sehingga alamat tidak terbuang.

### Aturan hitung
1. **Jumlah IP** = jumlah host + jumlah interface router pada subnet itu.
2. **Netmask** = netmask terkecil yang alamat usable-nya (2^n - 2) cukup untuk Jumlah IP.
3. **Urutkan** subnet dari yang terbesar, lalu alokasikan berurutan dari `10.71.0.0` tanpa celah.

### Kenapa induknya /19
Jumlah IP semua subnet adalah 2814, yang terlihat muat di /20 (4096 alamat). Tapi tiap subnet memakai blok utuh, dan total bloknya 4188 alamat. Angka itu lebih dari 4096, jadi induknya **10.71.0.0/19** (8192 alamat).

### Tabel rute
| Subnet | Rute | Perhitungan | Jumlah IP | Netmask |
|---|---|---|---|---|
| A1 | Cyberia > Switch1 > JJ, MyuMyu | 95 + 30 + 1 | 126 | /25 |
| A2 | Cyberia > Wired | 2 router | 2 | /30 |
| A3 | Wired > Switch2 > Psyche, Copland, Schumann | 4 router | 4 | /29 |
| A4 | Wired > Navi | 2 router | 2 | /30 |
| A5 | Wired > Tachibana | 2 router | 2 | /30 |
| A6 | Psyche > Switch3 > Karl, Lin | 700 + 180 + 1 | 881 | /22 |
| A7 | Copland > Switch4 > Masayuki | 300 + 1 | 301 | /23 |
| A8 | Copland > Juri | 31 + 1 | 32 | /26 |
| A9 | Schumann > Akashic | 3 + 1 | 4 | /29 |
| A10 | Schumann > Accela | 2 router | 2 | /30 |
| A11 | Accela > Switch5 > Omnipresence, Denpa | 510 + 3 + 1 | 514 | /22 |
| A12 | Navi > Switch6 > Alice, Reika | 208 + 45 + 1 | 254 | /24 |
| A13 | Navi > Switch7 > Taro | 57 + 1 | 58 | /26 |
| A14 | Navi > Switch8 > Yasuo, Miho, Kuma | 120 + 18 + 4 + 1 | 143 | /24 |
| A15 | Tachibana > Switch9 > Collective, Ghost | 260 + 6 + 1 | 267 | /23 |
| A16 | Tachibana > Deus | 2 router | 2 | /30 |
| A17 | Deus > Switch10 > Lilith, Specter | 77 + 21 + 1 | 99 | /25 |
| A18 | Deus > Protocol7 | 2 router | 2 | /30 |
| A19 | Protocol7 > Switch11 > Chisa, Hodgeson | 23 + 9 + 1 | 33 | /26 |
| A20 | Protocol7 > Knights | 2 router | 2 | /30 |
| A21 | Knights > Eiri | 2 + 1 | 3 | /29 |
| A22 | Knights > Phantoma | 2 router | 2 | /30 |
| A23 | Phantoma > Switch12 > Semi | 14 + 1 | 15 | /27 |
| A24 | Phantoma > Shibuya | 2 router | 2 | /30 |
| A25 | Shibuya > Switch13 > Lain, Mika | 57 + 4 + 1 | 62 | /26 |
| Total | | | 2814 | /19 |

### Pembagian IP
Urutan tabel ini mengikuti urutan alokasi, dari blok terbesar.

| Subnet | Network ID | Netmask | Broadcast | Range IP |
|---|---|---|---|---|
| A6 | 10.71.0.0 | 255.255.252.0 | 10.71.3.255 | 10.71.0.1 - 10.71.3.254 |
| A11 | 10.71.4.0 | 255.255.252.0 | 10.71.7.255 | 10.71.4.1 - 10.71.7.254 |
| A7 | 10.71.8.0 | 255.255.254.0 | 10.71.9.255 | 10.71.8.1 - 10.71.9.254 |
| A15 | 10.71.10.0 | 255.255.254.0 | 10.71.11.255 | 10.71.10.1 - 10.71.11.254 |
| A12 | 10.71.12.0 | 255.255.255.0 | 10.71.12.255 | 10.71.12.1 - 10.71.12.254 |
| A14 | 10.71.13.0 | 255.255.255.0 | 10.71.13.255 | 10.71.13.1 - 10.71.13.254 |
| A1 | 10.71.14.0 | 255.255.255.128 | 10.71.14.127 | 10.71.14.1 - 10.71.14.126 |
| A17 | 10.71.14.128 | 255.255.255.128 | 10.71.14.255 | 10.71.14.129 - 10.71.14.254 |
| A8 | 10.71.15.0 | 255.255.255.192 | 10.71.15.63 | 10.71.15.1 - 10.71.15.62 |
| A13 | 10.71.15.64 | 255.255.255.192 | 10.71.15.127 | 10.71.15.65 - 10.71.15.126 |
| A19 | 10.71.15.128 | 255.255.255.192 | 10.71.15.191 | 10.71.15.129 - 10.71.15.190 |
| A25 | 10.71.15.192 | 255.255.255.192 | 10.71.15.255 | 10.71.15.193 - 10.71.15.254 |
| A23 | 10.71.16.0 | 255.255.255.224 | 10.71.16.31 | 10.71.16.1 - 10.71.16.30 |
| A3 | 10.71.16.32 | 255.255.255.248 | 10.71.16.39 | 10.71.16.33 - 10.71.16.38 |
| A9 | 10.71.16.40 | 255.255.255.248 | 10.71.16.47 | 10.71.16.41 - 10.71.16.46 |
| A21 | 10.71.16.48 | 255.255.255.248 | 10.71.16.55 | 10.71.16.49 - 10.71.16.54 |
| A2 | 10.71.16.56 | 255.255.255.252 | 10.71.16.59 | 10.71.16.57 - 10.71.16.58 |
| A10 | 10.71.16.60 | 255.255.255.252 | 10.71.16.63 | 10.71.16.61 - 10.71.16.62 |
| A4 | 10.71.16.64 | 255.255.255.252 | 10.71.16.67 | 10.71.16.65 - 10.71.16.66 |
| A5 | 10.71.16.68 | 255.255.255.252 | 10.71.16.71 | 10.71.16.69 - 10.71.16.70 |
| A16 | 10.71.16.72 | 255.255.255.252 | 10.71.16.75 | 10.71.16.73 - 10.71.16.74 |
| A18 | 10.71.16.76 | 255.255.255.252 | 10.71.16.79 | 10.71.16.77 - 10.71.16.78 |
| A20 | 10.71.16.80 | 255.255.255.252 | 10.71.16.83 | 10.71.16.81 - 10.71.16.82 |
| A22 | 10.71.16.84 | 255.255.255.252 | 10.71.16.87 | 10.71.16.85 - 10.71.16.86 |
| A24 | 10.71.16.88 | 255.255.255.252 | 10.71.16.91 | 10.71.16.89 - 10.71.16.90 |

### Konsep routing
Topologi ini berbentuk pohon dengan Cyberia di puncak, jadi routing-nya memakai static route dengan dua aturan:
- **Ke arah atas:** setiap router punya satu default route ke router di atasnya.
- **Ke arah bawah:** router hanya mencatat subnet di bawahnya yang tidak terhubung langsung, dengan next hop router anak.

Supaya efisien, subnet berdampingan dengan next hop sama digabung. Contohnya `10.71.12.0/23` di Wired mencakup A12 dan A14, karena keduanya lewat Navi. Router ujung seperti Psyche, Copland, Accela, Navi, dan Shibuya cukup punya default route.

### Langkah 1: konfigurasi router
Klik router, buka tab **CLI**, lalu ketik perintahnya. Jawab `no` kalau muncul dialog konfigurasi awal.

**Cyberia**
```
enable
configure terminal
hostname Cyberia
interface FastEthernet0/0
no shutdown
exit
interface FastEthernet0/1
ip address 10.71.14.1 255.255.255.128
no shutdown
exit
interface FastEthernet1/0
ip address 10.71.16.57 255.255.255.252
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 FastEthernet0/0
ip route 10.71.0.0 255.255.224.0 10.71.16.58
end
write memory
```

**Wired**
```
enable
configure terminal
hostname Wired
interface FastEthernet1/0
ip address 10.71.16.58 255.255.255.252
no shutdown
exit
interface FastEthernet0/0
ip address 10.71.16.33 255.255.255.248
no shutdown
exit
interface FastEthernet1/1
ip address 10.71.16.65 255.255.255.252
no shutdown
exit
interface FastEthernet0/1
ip address 10.71.16.69 255.255.255.252
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.57
ip route 10.71.0.0 255.255.252.0 10.71.16.34
ip route 10.71.8.0 255.255.254.0 10.71.16.35
ip route 10.71.15.0 255.255.255.192 10.71.16.35
ip route 10.71.4.0 255.255.252.0 10.71.16.36
ip route 10.71.16.40 255.255.255.248 10.71.16.36
ip route 10.71.16.60 255.255.255.252 10.71.16.36
ip route 10.71.12.0 255.255.254.0 10.71.16.66
ip route 10.71.15.64 255.255.255.192 10.71.16.66
ip route 10.71.10.0 255.255.254.0 10.71.16.70
ip route 10.71.14.128 255.255.255.128 10.71.16.70
ip route 10.71.15.128 255.255.255.128 10.71.16.70
ip route 10.71.16.0 255.255.255.224 10.71.16.70
ip route 10.71.16.48 255.255.255.248 10.71.16.70
ip route 10.71.16.72 255.255.255.248 10.71.16.70
ip route 10.71.16.80 255.255.255.240 10.71.16.70
end
write memory
```

**Psyche**
```
enable
configure terminal
hostname Psyche
interface FastEthernet0/0
ip address 10.71.16.34 255.255.255.248
no shutdown
exit
interface FastEthernet0/1
ip address 10.71.0.1 255.255.252.0
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.33
end
write memory
```

**Copland**
```
enable
configure terminal
hostname Copland
interface FastEthernet0/0
ip address 10.71.16.35 255.255.255.248
no shutdown
exit
interface FastEthernet0/1
ip address 10.71.8.1 255.255.254.0
no shutdown
exit
interface FastEthernet1/0
ip address 10.71.15.1 255.255.255.192
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.33
end
write memory
```

**Schumann**
```
enable
configure terminal
hostname Schumann
interface FastEthernet0/0
ip address 10.71.16.36 255.255.255.248
no shutdown
exit
interface FastEthernet0/1
ip address 10.71.16.41 255.255.255.248
no shutdown
exit
interface FastEthernet1/0
ip address 10.71.16.61 255.255.255.252
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.33
ip route 10.71.4.0 255.255.252.0 10.71.16.62
end
write memory
```

**Accela**
```
enable
configure terminal
hostname Accela
interface FastEthernet0/1
ip address 10.71.16.62 255.255.255.252
no shutdown
exit
interface FastEthernet0/0
ip address 10.71.4.1 255.255.252.0
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.61
end
write memory
```

**Navi**
```
enable
configure terminal
hostname Navi
interface FastEthernet1/1
ip address 10.71.16.66 255.255.255.252
no shutdown
exit
interface FastEthernet0/0
ip address 10.71.12.1 255.255.255.0
no shutdown
exit
interface FastEthernet0/1
ip address 10.71.15.65 255.255.255.192
no shutdown
exit
interface FastEthernet1/0
ip address 10.71.13.1 255.255.255.0
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.65
end
write memory
```

**Tachibana**
```
enable
configure terminal
hostname Tachibana
interface FastEthernet0/1
ip address 10.71.16.70 255.255.255.252
no shutdown
exit
interface FastEthernet0/0
ip address 10.71.10.1 255.255.254.0
no shutdown
exit
interface FastEthernet1/0
ip address 10.71.16.73 255.255.255.252
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.69
ip route 10.71.14.128 255.255.255.128 10.71.16.74
ip route 10.71.15.128 255.255.255.128 10.71.16.74
ip route 10.71.16.0 255.255.255.224 10.71.16.74
ip route 10.71.16.48 255.255.255.248 10.71.16.74
ip route 10.71.16.76 255.255.255.252 10.71.16.74
ip route 10.71.16.80 255.255.255.240 10.71.16.74
end
write memory
```

**Deus**
```
enable
configure terminal
hostname Deus
interface FastEthernet0/1
ip address 10.71.16.74 255.255.255.252
no shutdown
exit
interface FastEthernet0/0
ip address 10.71.14.129 255.255.255.128
no shutdown
exit
interface FastEthernet1/0
ip address 10.71.16.77 255.255.255.252
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.73
ip route 10.71.15.128 255.255.255.128 10.71.16.78
ip route 10.71.16.0 255.255.255.224 10.71.16.78
ip route 10.71.16.48 255.255.255.248 10.71.16.78
ip route 10.71.16.80 255.255.255.240 10.71.16.78
end
write memory
```

**Protocol7**
```
enable
configure terminal
hostname Protocol7
interface FastEthernet0/1
ip address 10.71.16.78 255.255.255.252
no shutdown
exit
interface FastEthernet0/0
ip address 10.71.15.129 255.255.255.192
no shutdown
exit
interface FastEthernet1/0
ip address 10.71.16.81 255.255.255.252
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.77
ip route 10.71.15.192 255.255.255.192 10.71.16.82
ip route 10.71.16.0 255.255.255.224 10.71.16.82
ip route 10.71.16.48 255.255.255.248 10.71.16.82
ip route 10.71.16.80 255.255.255.240 10.71.16.82
end
write memory
```

**Knights**
```
enable
configure terminal
hostname Knights
interface FastEthernet0/1
ip address 10.71.16.82 255.255.255.252
no shutdown
exit
interface FastEthernet0/0
ip address 10.71.16.49 255.255.255.248
no shutdown
exit
interface FastEthernet1/0
ip address 10.71.16.85 255.255.255.252
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.81
ip route 10.71.15.192 255.255.255.192 10.71.16.86
ip route 10.71.16.0 255.255.255.224 10.71.16.86
ip route 10.71.16.88 255.255.255.252 10.71.16.86
end
write memory
```

**Phantoma**
```
enable
configure terminal
hostname Phantoma
interface FastEthernet0/1
ip address 10.71.16.86 255.255.255.252
no shutdown
exit
interface FastEthernet0/0
ip address 10.71.16.1 255.255.255.224
no shutdown
exit
interface FastEthernet1/0
ip address 10.71.16.89 255.255.255.252
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.85
ip route 10.71.15.192 255.255.255.192 10.71.16.90
end
write memory
```

**Shibuya**
```
enable
configure terminal
hostname Shibuya
interface FastEthernet0/1
ip address 10.71.16.90 255.255.255.252
no shutdown
exit
interface FastEthernet0/0
ip address 10.71.15.193 255.255.255.192
no shutdown
exit
ip route 0.0.0.0 0.0.0.0 10.71.16.89
end
write memory
```

`FastEthernet0/0` di Cyberia terhubung ke Cloud dan tidak diberi IP, jadi default route Cyberia tertulis di konfigurasi tapi tidak aktif. Ping antar node tidak terpengaruh, karena semua subnet tercakup `10.71.0.0/19`.

### Langkah 2: konfigurasi host
Klik host, pilih **Desktop > IP Configuration**, pilih **Static**, lalu isi sesuai tabel.

| Node | Subnet | IP | Netmask | Gateway |
|---|---|---|---|---|
| JJ | A1 | 10.71.14.2 | 255.255.255.128 | 10.71.14.1 |
| MyuMyu | A1 | 10.71.14.3 | 255.255.255.128 | 10.71.14.1 |
| Karl | A6 | 10.71.0.2 | 255.255.252.0 | 10.71.0.1 |
| Lin | A6 | 10.71.0.3 | 255.255.252.0 | 10.71.0.1 |
| Juri | A8 | 10.71.15.2 | 255.255.255.192 | 10.71.15.1 |
| Masayuki | A7 | 10.71.8.2 | 255.255.254.0 | 10.71.8.1 |
| Akashic | A9 | 10.71.16.42 | 255.255.255.248 | 10.71.16.41 |
| Omnipresence | A11 | 10.71.4.2 | 255.255.252.0 | 10.71.4.1 |
| Denpa | A11 | 10.71.4.3 | 255.255.252.0 | 10.71.4.1 |
| Alice | A12 | 10.71.12.2 | 255.255.255.0 | 10.71.12.1 |
| Reika | A12 | 10.71.12.3 | 255.255.255.0 | 10.71.12.1 |
| Taro | A13 | 10.71.15.66 | 255.255.255.192 | 10.71.15.65 |
| Yasuo | A14 | 10.71.13.2 | 255.255.255.0 | 10.71.13.1 |
| Miho | A14 | 10.71.13.3 | 255.255.255.0 | 10.71.13.1 |
| Kuma | A14 | 10.71.13.4 | 255.255.255.0 | 10.71.13.1 |
| Collective | A15 | 10.71.10.2 | 255.255.254.0 | 10.71.10.1 |
| Ghost | A15 | 10.71.10.3 | 255.255.254.0 | 10.71.10.1 |
| Lilith | A17 | 10.71.14.130 | 255.255.255.128 | 10.71.14.129 |
| Specter | A17 | 10.71.14.131 | 255.255.255.128 | 10.71.14.129 |
| Chisa | A19 | 10.71.15.130 | 255.255.255.192 | 10.71.15.129 |
| Hodgeson | A19 | 10.71.15.131 | 255.255.255.192 | 10.71.15.129 |
| Eiri | A21 | 10.71.16.50 | 255.255.255.248 | 10.71.16.49 |
| Semi | A23 | 10.71.16.2 | 255.255.255.224 | 10.71.16.1 |
| Lain | A25 | 10.71.15.194 | 255.255.255.192 | 10.71.15.193 |
| Mika | A25 | 10.71.15.195 | 255.255.255.192 | 10.71.15.193 |

### Tes 1: cek konfigurasi router
Di CLI router:
```
enable
show ip interface brief
show ip route
```
- Semua interface yang dipakai harus `up/up`. `Vlan1` yang `administratively down` itu normal.
- Wired harus menampilkan `Gateway of last resort is 10.71.16.57`, 4 rute `C`, 15 rute `S`, dan 1 default `S*`.
- Cyberia harus menampilkan `Fa0/0` `unassigned`, `Gateway of last resort is not set`, dan `S 10.71.0.0/19 via 10.71.16.58`.

### Tes 2: ping antar node
Di host, buka **Desktop > Command Prompt**, lalu ketik `ping <IP>`.

| Dari | Ke | IP tujuan | Yang dites |
|---|---|---|---|
| JJ | Lain | 10.71.15.194 | Ujung ke ujung, 8 router |
| Karl | Omnipresence | 10.71.4.2 | Antar cabang di Switch2 |
| Alice | Eiri | 10.71.16.50 | Navi ke Knights |
| Akashic | Semi | 10.71.16.2 | Schumann ke Phantoma |
| Reika | Collective | 10.71.10.2 | Navi ke Tachibana |
| Karl | Router Copland | 10.71.16.35 | Interface router |

### Tes 3: lihat jalur paket
Di Command Prompt JJ:
```
tracert 10.71.15.194
```
Urutan yang benar:

| Hop | Alamat | Router |
|---|---|---|
| 1 | 10.71.14.1 | Cyberia |
| 2 | 10.71.16.58 | Wired |
| 3 | 10.71.16.70 | Tachibana |
| 4 | 10.71.16.74 | Deus |
| 5 | 10.71.16.78 | Protocol7 |
| 6 | 10.71.16.82 | Knights |
| 7 | 10.71.16.86 | Phantoma |
| 8 | 10.71.16.90 | Shibuya |
| 9 | 10.71.15.194 | Lain |

### Tree CPT - VLSM

![image](/assets/cpt/tree-vlsm-sheets.png)

## GNS3 - CIDR

GNS3 di sini yang digunakan...

### Topologi
![image](/assets/gns3/topologi-tahapan-1.png)

### Perhitungan Penggabungan IP (Supernetting)

![image](/assets/gns3/supernetting-1.png)

![image](/assets/gns3/supernetting-2.png)

Visualisasi sebagai berikut.

![image](/assets/gns3/topologi-tahapan-1.png)

![image](/assets/gns3/topologi-tahapan-2-tingkat1.png)

![image](/assets/gns3/topologi-tahapan-3-tingkat2.png)

![image](/assets/gns3/topologi-tahapan-4-tingkat3.png)

![image](/assets/gns3/topologi-tahapan-5-tingkat4.png)

![image](/assets/gns3/topologi-tahapan-6-tingkat5.png)

### Perhitungan Pembagian IP (Subnetting)

![image](/assets/gns3/subnetting.png)

### Konfigurasi & Routing

### Test Koneksi (Ping)
