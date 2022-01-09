# Репозиторий для домашних заданий по курсу DevOps
###### 3.8
## ДЗ 3.8
#### Компьютерные сети, лекция 3
1. *Подключитесь к публичному маршрутизатору в интернет. Найдите маршрут к вашему публичному IP*  
```
telnet route-views.routeviews.org
Username: rviews
show ip route x.x.x.x/32
show bgp x.x.x.x/32
```  
**Ответ:**  
```
route-views>show ip route 31.185.7.234
Routing entry for 31.185.0.0/21
  Known via "bgp 6447", distance 20, metric 0
  Tag 6939, type external
  Last update from 64.71.137.241 3w6d ago
  Routing Descriptor Blocks:
  * 64.71.137.241, from 64.71.137.241, 3w6d ago
      Route metric is 0, traffic share count is 1
      AS Hops 2
      Route tag 6939
      MPLS label: none
```
```
route-views>show bgp 31.185.7.234
BGP routing table entry for 31.185.0.0/21, version 1413162774
Paths: (23 available, best #23, table default)
  Not advertised to any peer
  Refresh Epoch 1
  57866 28917 48573
    37.139.139.17 from 37.139.139.17 (37.139.139.17)
      Origin IGP, metric 0, localpref 100, valid, external
      Community: 0:6939 0:16276 28917:2000 28917:5110 28917:5112 28917:5171 28917:5334 57866:304 57866:501
      path 7FE12FE7A198 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  53767 174 174 3257 28917 48573
    162.251.163.2 from 162.251.163.2 (162.251.162.3)
      Origin IGP, localpref 100, valid, external
      Community: 174:21000 174:22013 53767:5000
      path 7FE10AD169E0 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  3333 1257 28917 48573
    193.0.0.56 from 193.0.0.56 (193.0.0.56)
      Origin IGP, localpref 100, valid, external
      Community: 1257:50 1257:51 1257:2000 1257:3428 1257:4103 28917:2000 28917:5110 28917:5112 28917:5171 28917:5334
      path 7FE168FAD918 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 3
  3303 28917 48573
    217.192.89.50 from 217.192.89.50 (138.187.128.158)
      Origin IGP, localpref 100, valid, external
      Community: 3303:1004 3303:1006 3303:1030 3303:3056 28917:2000 28917:5112 28917:5122
      path 7FE04BEF9DF8 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  7018 3257 28917 48573
    12.0.1.63 from 12.0.1.63 (12.0.1.63)
      Origin IGP, localpref 100, valid, external
      Community: 7018:5000 7018:37232
      path 7FE0AEEC3CE8 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  1351 6939 48573
    132.198.255.253 from 132.198.255.253 (132.198.255.253)
      Origin IGP, localpref 100, valid, external
      path 7FE053C49510 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  20912 3257 28917 48573
    212.66.96.126 from 212.66.96.126 (212.66.96.126)
      Origin IGP, localpref 100, valid, external
      Community: 3257:4000 3257:8133 3257:50001 3257:50110 3257:54901 20912:65004
      path 7FE17B64F788 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 2
  8283 28917 48573
    94.142.247.3 from 94.142.247.3 (94.142.247.3)
      Origin IGP, metric 0, localpref 100, valid, external
      Community: 0:6939 0:16276 8283:1 8283:101 28917:2000 28917:5110 28917:5112 28917:5171 28917:5334
      unknown transitive attribute: flag 0xE0 type 0x20 length 0x18
        value 0000 205B 0000 0000 0000 0001 0000 205B
              0000 0005 0000 0001
      path 7FE0D6930FE8 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  3549 3356 3257 28917 48573
    208.51.134.254 from 208.51.134.254 (67.16.168.191)
      Origin IGP, metric 0, localpref 100, valid, external
      Community: 3257:3257 3356:3 3356:22 3356:86 3356:575 3356:666 3356:903 3356:2011 3549:2581 3549:30840
      path 7FE144948C60 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  3356 3257 28917 48573
    4.68.4.46 from 4.68.4.46 (4.69.184.201)
      Origin IGP, metric 0, localpref 100, valid, external
      Community: 3257:3257 3356:3 3356:86 3356:576 3356:666 3356:903 3356:2012
      path 7FE1338AFF50 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  20130 6939 48573
    140.192.8.16 from 140.192.8.16 (140.192.8.16)
      Origin IGP, localpref 100, valid, external
      path 7FE128FDF6A8 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  852 3257 28917 48573
    154.11.12.212 from 154.11.12.212 (96.1.209.43)
      Origin IGP, metric 0, localpref 100, valid, external
      path 7FE01E88C4B0 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  101 174 3257 28917 48573
    209.124.176.223 from 209.124.176.223 (209.124.176.223)
      Origin IGP, localpref 100, valid, external
      Community: 101:20100 101:20110 101:22100 174:21000 174:22013
      Extended Community: RT:101:22100
      path 7FE0CD0EB0C0 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  7660 2516 3257 28917 48573
    203.181.248.168 from 203.181.248.168 (203.181.248.168)
      Origin IGP, localpref 100, valid, external
      Community: 2516:1030 7660:9003
      path 7FE0375A3530 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  2497 3257 28917 48573
    202.232.0.2 from 202.232.0.2 (58.138.96.254)
      Origin IGP, localpref 100, valid, external
      path 7FE0D9774188 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  49788 12552 28917 48573
    91.218.184.60 from 91.218.184.60 (91.218.184.60)
      Origin IGP, localpref 100, valid, external
      Community: 12552:12000 12552:12100 12552:12101 12552:22000
      Extended Community: 0x43:100:1
      path 7FE0C51ACEE0 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  1221 4637 3257 28917 48573
    203.62.252.83 from 203.62.252.83 (203.62.252.83)
      Origin IGP, localpref 100, valid, external
      path 7FE0B96BAC88 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  701 3257 28917 48573
    137.39.3.55 from 137.39.3.55 (137.39.3.55)
      Origin IGP, localpref 100, valid, external
      path 7FE122B4FA70 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  3257 28917 48573
    89.149.178.10 from 89.149.178.10 (213.200.83.26)
      Origin IGP, metric 10, localpref 100, valid, external
      Community: 3257:4000 3257:8133 3257:50001 3257:50110 3257:54901
      path 7FE138999238 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  19214 3257 28917 48573
    208.74.64.40 from 208.74.64.40 (208.74.64.40)
      Origin IGP, localpref 100, valid, external
      Community: 3257:4000 3257:8133 3257:50001 3257:50110 3257:54901
      path 7FE00D1EE498 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  4901 6079 3257 28917 48573
    162.250.137.254 from 162.250.137.254 (162.250.137.254)
      Origin IGP, localpref 100, valid, external
      Community: 65000:10100 65000:10300 65000:10400
      path 7FE147BEF7D8 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  3561 209 3356 3257 28917 48573
    206.24.210.80 from 206.24.210.80 (206.24.210.80)
      Origin IGP, localpref 100, valid, external
      path 7FE15FA669A0 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  6939 48573
    64.71.137.241 from 64.71.137.241 (216.218.252.164)
      Origin IGP, localpref 100, valid, external, best
      path 7FE131BB4318 RPKI State not found
      rx pathid: 0, tx pathid: 0x0
```
2. *Создайте dummy0 интерфейс в Ubuntu. Добавьте несколько статических маршрутов. Проверьте таблицу маршрутизации.*  
**Ответ:**  
- Запуск модуля  
```  
# echo "dummy" > /etc/modules-load.d/dummy.conf
# echo "options dummy numdummies=2" > /etc/modprobe.d/dummy.conf
```  
- Настройка интерфейса  
```  
# cat << "EOF" >> /etc/systemd/network/10-dummy0.netdev
[NetDev]
Name=dummy0
Kind=dummy
EOF

# cat << "EOF" >> /etc/systemd/network/20-dummy0.network
[Match]
Name=dummy0

[Network]
Address=10.0.8.1/24
EOF

# systemctl restart systemd-networkd
```  
- Добавление статического маршрута  
```  
# vi /etc/netplan/network_stat.yaml
network:
  version: 2
  ethernets:
    eth0:
      optional: true
      addresses:
        - 10.0.2.3/24
      routes:
        - to: 10.0.4.0/24
          via: 10.0.2.2
```  
- Таблица маршрутизации  
```  
$ ip r
default via 10.0.2.2 dev eth0 proto dhcp src 10.0.2.15 metric 100
10.0.2.0/24 dev eth0 proto kernel scope link src 10.0.2.3
10.0.2.2 dev eth0 proto dhcp scope link src 10.0.2.15 metric 100
10.0.4.0/24 via 10.0.2.2 dev eth0 proto static
10.0.8.0/24 dev dummy0 proto kernel scope link src 10.0.8.1
``` 
- Статический маршрут  
```  
$ ip r | grep static
10.0.4.0/24 via 10.0.2.2 dev eth0 proto static
```  
3. *Проверьте открытые TCP порты в Ubuntu, какие протоколы и приложения используют эти порты? Приведите несколько примеров.*  
**Ответ:**  
```
$ ss -tnlp
State     Recv-Q   Send-Q    Local Address:Port     Peer Address:Port     Process
LISTEN    0        4096            0.0.0.0:111           0.0.0.0:*
LISTEN    0        4096      127.0.0.53%lo:53            0.0.0.0:*
LISTEN    0        128             0.0.0.0:22            0.0.0.0:*
LISTEN    0        4096               [::]:111              [::]:*
LISTEN    0        128                [::]:22               [::]:*
```  
:53 - DNS  
:22 - SSH  
4. *Проверьте используемые UDP сокеты в Ubuntu, какие протоколы и приложения используют эти порты?*  
**Ответ:**  
```
$ ss -unap
State     Recv-Q   Send-Q    Local Address:Port     Peer Address:Port     Process
LISTEN    0        0         127.0.0.53%lo:53            0.0.0.0:*
LISTEN    0        0        10.0.2.15%eth0:68            0.0.0.0:*
LISTEN    0        0               0.0.0.0:111           0.0.0.0:*
LISTEN    0        0                  [::]:111              [::]:*
```
:53 - DNS  
:68 - Используется клиентскими машинами для получения информации о динамической IP-адресации от DHCP-сервера.  
5. *Используя diagrams.net, создайте L3 диаграмму вашей домашней сети или любой другой сети, с которой вы работали.*  
**Ответ:**  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/imgNetDiagram.png)  


###### 3.7
## ДЗ 3.7
#### Компьютерные сети, лекция 2
1. *Проверьте список доступных сетевых интерфейсов на вашем компьютере. Какие команды есть для этого в Linux и в Windows?*  
**Ответ:**  
- ip link show (Linux)  
```
$ ip link show
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether 08:00:27:73:60:cf brd ff:ff:ff:ff:ff:ff
```  
- ip a (Linux)  
```
$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:73:60:cf brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic eth0
       valid_lft 84206sec preferred_lft 84206sec
    inet6 fe80::a00:27ff:fe73:60cf/64 scope link
       valid_lft forever preferred_lft forever
```  
- ipconfig /all (Windows)  
```
Windows IP Configuration

   Host Name . . . . . . . . . . . . : Wiktor-PC
   Primary Dns Suffix  . . . . . . . :
   Node Type . . . . . . . . . . . . : Hybrid
   IP Routing Enabled. . . . . . . . : No
   WINS Proxy Enabled. . . . . . . . : No

Ethernet adapter VirtualBox Host-Only Network:

   Connection-specific DNS Suffix  . :
   Description . . . . . . . . . . . : VirtualBox Host-Only Ethernet Adapter
   Physical Address. . . . . . . . . : 0A-00-27-00-00-11
   DHCP Enabled. . . . . . . . . . . : No
   Autoconfiguration Enabled . . . . : Yes
   Link-local IPv6 Address . . . . . : fe80::25c7:3720:ea2e:b597%17(Preferred)
   IPv4 Address. . . . . . . . . . . : 192.168.56.1(Preferred)
   Subnet Mask . . . . . . . . . . . : 255.255.255.0
   Default Gateway . . . . . . . . . :
   DHCPv6 IAID . . . . . . . . . . . : 621412391
   DHCPv6 Client DUID. . . . . . . . : 00-01-00-01-24-0A-D1-20-10-60-4B-7E-81-22
   DNS Servers . . . . . . . . . . . : fec0:0:0:ffff::1%1
                                       fec0:0:0:ffff::2%1
                                       fec0:0:0:ffff::3%1
   NetBIOS over Tcpip. . . . . . . . : Enabled

Ethernet adapter Ethernet 3:

   Connection-specific DNS Suffix  . :
   Description . . . . . . . . . . . : Intel(R) 82578DM Gigabit Network Connection
   Physical Address. . . . . . . . . : 18-A9-05-C1-FE-68
   DHCP Enabled. . . . . . . . . . . : Yes
   Autoconfiguration Enabled . . . . : Yes
   IPv4 Address. . . . . . . . . . . : 192.168.88.254(Preferred)
   Subnet Mask . . . . . . . . . . . : 255.255.255.0
   Lease Obtained. . . . . . . . . . : wtorek, 4 stycznia 2022 11:08:33
   Lease Expires . . . . . . . . . . : wtorek, 4 stycznia 2022 21:08:38
   Default Gateway . . . . . . . . . : 192.168.88.1
   DHCP Server . . . . . . . . . . . : 192.168.88.1
   DNS Servers . . . . . . . . . . . : 192.168.88.1
                                       192.168.0.1
   NetBIOS over Tcpip. . . . . . . . : Enabled

Ethernet adapter Сетевое подключение Bluetooth 2:

   Media State . . . . . . . . . . . : Media disconnected
   Connection-specific DNS Suffix  . :
   Description . . . . . . . . . . . : Bluetooth Device (Personal Area Network) #2
   Physical Address. . . . . . . . . : 00-1A-7D-DA-71-10
   DHCP Enabled. . . . . . . . . . . : Yes
   Autoconfiguration Enabled . . . . : Yes
```  

2. *Какой протокол используется для распознавания соседа по сетевому интерфейсу? Какой пакет и команды есть в Linux для этого?*  
**Ответ:**  
- Протокол LLDP.  
- Пакет lldpd.  
- Команда lldpctl.  
3. *Какая технология используется для разделения L2 коммутатора на несколько виртуальных сетей? Какой пакет и команды есть в Linux для этого? Приведите пример конфига.*  
**Ответ:**  
- Технология называется VLAN (Virtual LAN).  
- Пакет в Ubuntu Linux - vlan.  
Пример конфига:
- Добавляем vlan с тегом 200, затем выводим командой `ifconfig -a` список всех интерфейсов:  
```
$ sudo vconfig add eth0 200

Warning: vconfig is deprecated and might be removed in the future, please migrate to ip(route2) as soon as possible!

$ ifconfig -a
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::a00:27ff:fe73:60cf  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:73:60:cf  txqueuelen 1000  (Ethernet)
        RX packets 931  bytes 103280 (103.2 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 883  bytes 140624 (140.6 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eth0.200: flags=4098<BROADCAST,MULTICAST>  mtu 1500
        ether 08:00:27:73:60:cf  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 8  bytes 776 (776.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8  bytes 776 (776.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```
- Из вывода видно, что появился еще один логический интерфейс "eth0.200", который будет обрабатывать все пакеты, помеченные тегом 200 (принадлежащие сети VLAN200).  
- Повесим ip-адрес на новый интерфейс "eth0.200":  
```
$ sudo ifconfig eth0.200 192.168.8.10 netmask 255.255.255.0 up
$ ifconfig -a
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::a00:27ff:fe73:60cf  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:73:60:cf  txqueuelen 1000  (Ethernet)
        RX packets 1801  bytes 980240 (980.2 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2423  bytes 416399 (416.3 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eth0.200: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.8.10  netmask 255.255.255.0  broadcast 192.168.8.255
        inet6 fe80::a00:27ff:fe73:60cf  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:73:60:cf  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 6  bytes 516 (516.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 12  bytes 1202 (1.2 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 12  bytes 1202 (1.2 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```  
- Следует отметить, что после перезагрузки интерфейс "eth0.200" слетит.  
4. *Какие типы агрегации интерфейсов есть в Linux? Какие опции есть для балансировки нагрузки? Приведите пример конфига.*  
**Ответ:**  
- В Linux есть две технологии агрегации (LAG): bonding и teaming.  

Типы агрегации bonding:  

```
$ modinfo bonding | grep mode:
parm:           mode:Mode of operation; 0 for balance-rr, 1 for active-backup, 2 for balance-xor, 3 for broadcast, 4 for 802.3ad, 5 for balance-tlb, 6 for balance-alb (charp)
```

- `active-backup` и `broadcast` обеспечивают только отказоустойчивость  
- `balance-tlb`, `balance-alb`, `balance-rr`, `balance-xor` и `802.3ad` обеспечат отказоустойчивость и балансировку  

- `balance-rr` - Политика round-robin. Пакеты отправляются последовательно, начиная с первого доступного интерфейса и заканчивая последним. Эта политика применяется для балансировки нагрузки и отказоустойчивости.  
- `active-backup` - Политика активный-резервный. Только один сетевой интерфейс из объединённых будет активным. Другой интерфейс может стать активным, только в том случае, когда упадёт текущий активный интерфейс. Эта политика применяется для отказоустойчивости.  
- `balance-xor` - Политика XOR. Передача распределяется между сетевыми картами используя формулу: `[( «MAC адрес источника» XOR «MAC адрес назначения») по модулю «число интерфейсов»]`. Получается одна и та же сетевая карта передаёт пакеты одним и тем же получателям. Политика XOR применяется для балансировки нагрузки и отказоустойчивости.  
- `broadcast` - Широковещательная политика. Передает всё на все сетевые интерфейсы. Эта политика применяется для отказоустойчивости.  
- `802.3ad` - Политика агрегирования каналов по стандарту IEEE 802.3ad. Создаются агрегированные группы сетевых карт с одинаковой скоростью и дуплексом. При таком объединении передача задействует все каналы в активной агрегации, согласно стандарту IEEE 802.3ad. Выбор через какой интерфейс отправлять пакет определяется политикой по умолчанию XOR политика.  
- `balance-tlb` - Политика адаптивной балансировки нагрузки передачи. Исходящий трафик распределяется в зависимости от загруженности каждой сетевой карты (определяется скоростью загрузки). Не требует дополнительной настройки на коммутаторе. Входящий трафик приходит на текущую сетевую карту. Если она выходит из строя, то другая сетевая карта берёт себе MAC адрес вышедшей из строя карты.  
- `balance-alb` - Политика адаптивной балансировки нагрузки. Включает в себя политику balance-tlb плюс осуществляет балансировку входящего трафика. Не требует дополнительной настройки на коммутаторе. Балансировка входящего трафика достигается путём ARP переговоров.  
  
Файлы конфигурации сети для Ubuntu 20.10 находятся по пути /etc/netplan/01-netcfg.yaml. Если нам нужна  
отказоустойчивость `active-backup`, приводим его к виду:
```
 network:
   version: 2
   renderer: networkd
   ethernets:
     ens3:
       dhcp4: no 
       optional: true
     ens5: 
       dhcp4: no 
       optional: true
   bonds:
     bond0: 
       dhcp4: yes 
       interfaces:
         - ens3
         - ens5
       parameters:
         mode: active-backup
         primary: ens3
         mii-monitor-interval: 2
```
Если нам нужна балансировка `balance-alb`, приводим его к виду:  
```
   bonds:
     bond0: 
       dhcp4: yes 
       interfaces:
         - ens3
         - ens5
       parameters:
         mode: balance-alb
         mii-monitor-interval: 2
```  
5. *Сколько IP адресов в сети с маской /29 ? Сколько /29 подсетей можно получить из сети с маской /24. Приведите несколько примеров /29 подсетей внутри сети 10.10.10.0/24.*  
**Ответ:**  
```
$ ipcalc -b 10.10.10.0/24
Address:   10.10.10.0           
Netmask:   255.255.255.0 = 24
Wildcard:  0.0.0.255
=>
Network:   10.10.10.0/24
HostMin:   10.10.10.1
HostMax:   10.10.10.254
Broadcast: 10.10.10.255
Hosts/Net: 254                   Class A, Private Internet

$ ipcalc -b 10.10.10.0/29
Address:   10.10.10.0           
Netmask:   255.255.255.248 = 29
Wildcard:  0.0.0.7
=>
Network:   10.10.10.0/29
HostMin:   10.10.10.1
HostMax:   10.10.10.6
Broadcast: 10.10.10.7
Hosts/Net: 6                     Class A, Private Internet

$ ipcalc -b 10.10.10.8/29
Address:   10.10.10.8           
Netmask:   255.255.255.248 = 29
Wildcard:  0.0.0.7
=>
Network:   10.10.10.8/29
HostMin:   10.10.10.9
HostMax:   10.10.10.14
Broadcast: 10.10.10.15
Hosts/Net: 6                     Class A, Private Internet

$ ipcalc -b 10.10.10.16/29
Address:   10.10.10.16          
Netmask:   255.255.255.248 = 29
Wildcard:  0.0.0.7
=>
Network:   10.10.10.16/29
HostMin:   10.10.10.17
HostMax:   10.10.10.22
Broadcast: 10.10.10.23
Hosts/Net: 6                     Class A, Private Internet

* И так далее...
```  
- 8 адресов = 6 для хостов, 1 адрес сети и 1 широковещательный адрес.  
- Сеть с маской /24 можно разбить на 32 подсети с маской /29  
6. *Задача: вас попросили организовать стык между 2-мя организациями. Диапазоны 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 уже заняты. Из какой подсети допустимо взять частные IP адреса? Маску выберите из расчета максимум 40-50 хостов внутри подсети.*  
**Ответ:**  
- Можно взять адреса из сети для CGNAT - 100.64.0.0/10:   
```
$ ipcalc -b 100.64.0.0/10 -s 40
Address:   100.64.0.0           
Netmask:   255.192.0.0 = 10
Wildcard:  0.63.255.255
=>
Network:   100.64.0.0/10
HostMin:   100.64.0.1
HostMax:   100.127.255.254
Broadcast: 100.127.255.255
Hosts/Net: 4194302               Class A

1. Requested size: 40 hosts
Netmask:   255.255.255.192 = 26 
Network:   100.64.0.0/26
HostMin:   100.64.0.1
HostMax:   100.64.0.62
Broadcast: 100.64.0.63
Hosts/Net: 62                    Class A
```  
- Точно в диапазоне 40-50 адресов не получится т.к. предыдущая маска /27 - это 30 хост адресов (мало), а следующая /26 - это уже 62 хост адреса.  
7. *Как проверить ARP таблицу в Linux, Windows? Как очистить ARP кеш полностью? Как из ARP таблицы удалить только один нужный IP?*  
**Ответ:**  
Проверить таблицу можно так:  
- Linux: `ip neigh`, `arp -n`  
- Windows: `arp -a`  
    

В Linux полностью очистить ARP таблицу штатными средствами нельзя. Можно использовать скрипт или команду: `sudo ip neigh flush all`. Эта команда для всех пунктов состояния задает failed. В дальнейшем ядро операционной системы удалит помеченные MAC адреса.  
- В Windows очищаем кэш так: `arp -d *`

Удалить один IP можно так:

- Linux: `ip neigh delete <IP> dev <INTERFACE>`, `arp -d <IP>`  
- Windows: `arp -d <IP>`




###### 3.6
## ДЗ 3.6
#### Компьютерные сети, лекция 1
1. *Работа c HTTP через телнет.*  
   - *Подключитесь утилитой телнет к сайту stackoverflow.com `telnet stackoverflow.com 80`*  
   - *отправьте HTTP запрос*  
```
GET /questions HTTP/1.0
HOST: stackoverflow.com
[press enter]
[press enter]
```
   - *В ответе укажите полученный HTTP код, что он означает?*  
**Ответ:**  
```
vagrant@vagrant:~$ telnet stackoverflow.com 80
Trying 151.101.193.69...
Connected to stackoverflow.com.
Escape character is '^]'.
GET /questions HTTP/1.0
HOST: stackoverflow.com

HTTP/1.1 301 Moved Permanently
cache-control: no-cache, no-store, must-revalidate
location: https://stackoverflow.com/questions
x-request-guid: 6f4a0a01-f11e-4660-8823-43c72afeb69c
feature-policy: microphone 'none'; speaker 'none'
content-security-policy: upgrade-insecure-requests; frame-ancestors 'self' https://stackexchange.com
Accept-Ranges: bytes
Date: Mon, 03 Jan 2022 01:33:31 GMT
Via: 1.1 varnish
Connection: close
X-Served-By: cache-bma1682-BMA
X-Cache: MISS
X-Cache-Hits: 0
X-Timer: S1641173611.913769,VS0,VE106
Vary: Fastly-SSL
X-DNS-Prefetch-Control: off
Set-Cookie: prov=403d03ab-7551-9d0e-8a59-9796a147863f; domain=.stackoverflow.com; expires=Fri, 01-Jan-2055 00:00:00 GMT; path=/; HttpOnly
```
Мы получили ответ http сервера сайта `stackoverflow.com`. Ответ `301 Moved Permanently` в заголовке означает что сайт был окончательно перемещен. Т.е. редирект с http на https протокол того же url.  
  
2. *Повторите задание 1 в браузере, используя консоль разработчика F12.*  
- *откройте вкладку Network*  
- *отправьте запрос `http://stackoverflow.com`*  
- *найдите первый ответ HTTP сервера, откройте вкладку `Headers`*  
- *укажите в ответе полученный HTTP код.*  
- *проверьте время загрузки страницы, какой запрос обрабатывался дольше всего?*  
- *приложите скриншот консоли браузера в ответ.*  
**Ответ:**  
```
HTTP/2 200 OK
cache-control: private
content-type: text/html; charset=utf-8
content-encoding: gzip
strict-transport-security: max-age=15552000
x-frame-options: SAMEORIGIN
x-request-guid: 0a9eec06-8db1-427a-96fc-b944e5f8c890
feature-policy: microphone 'none'; speaker 'none'
content-security-policy: upgrade-insecure-requests; frame-ancestors 'self' https://stackexchange.com
accept-ranges: bytes
date: Mon, 03 Jan 2022 02:53:07 GMT
via: 1.1 varnish
x-served-by: cache-bma1671-BMA
x-cache: MISS
x-cache-hits: 0
x-timer: S1641178387.103850,VS0,VE144
vary: Accept-Encoding,Fastly-SSL
x-dns-prefetch-control: off
X-Firefox-Spdy: h2
```
  
- В ответ получили код 200 OK  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.6_1.jpg)  
- Дольше всего обрабатывался запрос - начальная загрузка страницы 170 мс  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.6_2.jpg)  
3. *Какой IP адрес у вас в интернете?*  
```
$ wget -O - -q icanhazip.com
31.185.7.234
```
4. *Какому провайдеру принадлежит ваш IP адрес? Какой автономной системе AS? Воспользуйтесь утилитой `whois`*  
**Ответ:**  
```
$ whois 31.185.7.234 | grep ^descr
descr:          NFS TELECOM
descr:          VIDNOE.NET
```
- IP адрес принадлежит NFS TELECOM
```
$ whois 31.185.7.234 | grep ^origin
origin:         AS48573
```
- AS - AS48573  

5. *Через какие сети проходит пакет, отправленный с вашего компьютера на адрес 8.8.8.8? Через какие AS? Воспользуйтесь утилитой `traceroute`*  
**Ответ:**  
```
$ traceroute -AnI 8.8.8.8
traceroute to 8.8.8.8 (8.8.8.8), 30 hops max, 60 byte packets
 1  10.0.2.2 [*]  0.305 ms  0.270 ms  0.255 ms
 2  172.16.0.1 [*]  4.283 ms  4.736 ms  5.261 ms
 3  172.68.9.1 [AS13335]  5.947 ms  6.218 ms  6.147 ms
 4  172.68.8.5 [AS13335]  7.296 ms  8.442 ms  8.841 ms
 5  108.170.250.129 [AS15169]  9.762 ms  9.750 ms  9.689 ms
 6  108.170.250.146 [AS15169]  9.668 ms  7.012 ms  7.404 ms
 7  * 142.250.239.64 [AS15169]  28.050 ms *
 8  74.125.253.109 [AS15169]  27.990 ms  29.031 ms  29.007 ms
 9  142.250.209.25 [AS15169]  29.233 ms  32.611 ms  30.227 ms
10  * * *
11  * * *
12  * * *
13  * * *
14  * * *
15  * * *
16  * * *
17  * * *
18  * * *
19  * * *
20  * 8.8.8.8 [AS15169]  28.679 ms *
```  
- Пакет проходит через AS - AS13335, AS15169.
```
$ grep OrgName <(whois AS13335)
OrgName:        Cloudflare, Inc.
$ grep OrgName <(whois AS15169)
OrgName:        Google LLC
```
6. *Повторите задание 5 в утилите `mtr`. На каком участке наибольшая задержка - delay?*  
**Ответ:**  
```
vagrant@vagrant:~$ mtr 8.8.8.8 -znrc 1
Start: 2022-01-03T03:54:37+0000
HOST: vagrant                     Loss%   Snt   Last   Avg  Best  Wrst StDev
  1. AS???    10.0.2.2             0.0%     1    0.4   0.4   0.4   0.4   0.0
  2. AS???    172.16.0.1           0.0%     1    5.2   5.2   5.2   5.2   0.0
  3. AS13335  172.68.9.1           0.0%     1    7.6   7.6   7.6   7.6   0.0
  4. AS13335  172.68.8.5           0.0%     1    6.8   6.8   6.8   6.8   0.0
  5. AS15169  108.170.250.129      0.0%     1    7.4   7.4   7.4   7.4   0.0
  6. AS15169  108.170.250.146      0.0%     1    6.2   6.2   6.2   6.2   0.0
  7. AS15169  142.250.239.64       0.0%     1   27.4  27.4  27.4  27.4   0.0
  8. AS15169  74.125.253.109       0.0%     1   27.8  27.8  27.8  27.8   0.0
  9. AS15169  142.250.209.25       0.0%     1   29.2  29.2  29.2  29.2   0.0
 10. AS???    ???                 100.0     1    0.0   0.0   0.0   0.0   0.0
 11. AS???    ???                 100.0     1    0.0   0.0   0.0   0.0   0.0
 12. AS???    ???                 100.0     1    0.0   0.0   0.0   0.0   0.0
 13. AS???    ???                 100.0     1    0.0   0.0   0.0   0.0   0.0
 14. AS???    ???                 100.0     1    0.0   0.0   0.0   0.0   0.0
 15. AS???    ???                 100.0     1    0.0   0.0   0.0   0.0   0.0
 16. AS???    ???                 100.0     1    0.0   0.0   0.0   0.0   0.0
 17. AS???    ???                 100.0     1    0.0   0.0   0.0   0.0   0.0
 18. AS15169  8.8.8.8              0.0%     1   29.0  29.0  29.0  29.0   0.0
```  
- Наибольшая задержка на 9 хопе.  
7. *Какие DNS сервера отвечают за доменное имя dns.google? Какие A записи? воспользуйтесь утилитой `dig`*  
**Ответ:**  
```
$ dig +short NS dns.google
ns1.zdns.google.
ns2.zdns.google.
ns3.zdns.google.
ns4.zdns.google.

$ dig +short A dns.google
8.8.8.8
8.8.4.4
```
8. *Проверьте PTR записи для IP адресов из задания 7. Какое доменное имя привязано к IP? воспользуйтесь утилитой `dig`*  
**Ответ:**  
```
$ for ip in `dig +short A dns.google`; do dig -x $ip | grep ^[0-9].*in-addr; done
4.4.8.8.in-addr.arpa.   72628   IN      PTR     dns.google.
8.8.8.8.in-addr.arpa.   72398   IN      PTR     dns.google.
```


###### 3.5
## ДЗ 3.5
#### Файловые системы
1. *Узнайте о sparse (разряженных) файлах.*  
**Ответ:**  
Узнал. Применяются для хранения контейнеров, резервных копий, файлов в файлообменных сетях.
  
  
2. *Могут ли файлы, являющиеся жесткой ссылкой на один объект, иметь разные права доступа и владельца? Почему?*  
**Ответ:**  
Нет, не могут. Из-за того что hardlink это ссылка на тот же самый файл и имеет тот же inode - права и владелец будут одни.  
```
vagrant@vagrant:~$ touch testhl
vagrant@vagrant:~$ ln testhl testhl2
vagrant@vagrant:~$ ls -ilh
131089 -rw-rw-r-- 2 vagrant vagrant    0 Jan  1 17:43 testhl
131089 -rw-rw-r-- 2 vagrant vagrant    0 Jan  1 17:43 testhl2

vagrant@vagrant:~$ chmod 0777 testhl
131089 -rwxrwxrwx 2 vagrant vagrant    0 Jan  1 17:43 testhl
131089 -rwxrwxrwx 2 vagrant vagrant    0 Jan  1 17:43 testhl2  

vagrant@vagrant:~$ sudo useradd test
vagrant@vagrant:~$ sudo chown test testhl
vagrant@vagrant:~$ ls -ilh
131089 -rwxrwxrwx 2 test    vagrant    0 Jan  1 17:43 testhl
131089 -rwxrwxrwx 2 test    vagrant    0 Jan  1 17:43 testhl2
```
3. *Сделайте `vagrant destroy` на имеющийся инстанс Ubuntu. Замените содержимое Vagrantfile следующим:*
```
Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.provider :virtualbox do |vb|
    lvm_experiments_disk0_path = "/tmp/lvm_experiments_disk0.vmdk"
    lvm_experiments_disk1_path = "/tmp/lvm_experiments_disk1.vmdk"
    vb.customize ['createmedium', '--filename', lvm_experiments_disk0_path, '--size', 2560]
    vb.customize ['createmedium', '--filename', lvm_experiments_disk1_path, '--size', 2560]
    vb.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', lvm_experiments_disk0_path]
    vb.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', lvm_experiments_disk1_path]
  end
end
```
*Данная конфигурация создаст новую виртуальную машину с двумя дополнительными неразмеченными дисками по 2.5 Гб.*  
**Ответ:**  
```
vagrant@vagrant:~$ lsblk
NAME                 MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
sda                    8:0    0   64G  0 disk
├─sda1                 8:1    0  512M  0 part /boot/efi
├─sda2                 8:2    0    1K  0 part
└─sda5                 8:5    0 63.5G  0 part
  ├─vgvagrant-root   253:0    0 62.6G  0 lvm  /
  └─vgvagrant-swap_1 253:1    0  980M  0 lvm  [SWAP]
sdb                    8:16   0  2.5G  0 disk
sdc                    8:32   0  2.5G  0 disk

```
4. *Используя `fdisk`, разбейте первый диск на 2 раздела: 2 Гб, оставшееся пространство.*  
**Ответ:**  
```
vagrant@vagrant:~$ sudo fdisk /dev/sdb

Welcome to fdisk (util-linux 2.34).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Device does not contain a recognized partition table.
Created a new DOS disklabel with disk identifier 0xd039d7a3.

Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (1-4, default 1):
First sector (2048-5242879, default 2048):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-5242879, default 5242879): +2G

Created a new partition 1 of type 'Linux' and of size 2 GiB.

Command (m for help): n
Partition type
   p   primary (1 primary, 0 extended, 3 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (2-4, default 2):
First sector (4196352-5242879, default 4196352):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (4196352-5242879, default 5242879):

Created a new partition 2 of type 'Linux' and of size 511 MiB.

Command (m for help): p
Disk /dev/sdb: 2.51 GiB, 2684354560 bytes, 5242880 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xd039d7a3

Device     Boot   Start     End Sectors  Size Id Type
/dev/sdb1          2048 4196351 4194304    2G 83 Linux
/dev/sdb2       4196352 5242879 1046528  511M 83 Linux

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
```
5. *Используя `sfdisk`, перенесите данную таблицу разделов на второй диск.*
**Ответ:**  
```
root@vagrant:~# sfdisk --dump /dev/sdb | sfdisk --force /dev/sdc
Checking that no-one is using this disk right now ... OK

Disk /dev/sdc: 2.51 GiB, 2684354560 bytes, 5242880 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

>>> Script header accepted.
>>> Script header accepted.
>>> Script header accepted.
>>> Script header accepted.
>>> Created a new DOS disklabel with disk identifier 0xe19547f2.
/dev/sdc1: Created a new partition 1 of type 'Linux' and of size 2 GiB.
/dev/sdc2: Created a new partition 2 of type 'Linux' and of size 511 MiB.
/dev/sdc3: Done.

New situation:
Disklabel type: dos
Disk identifier: 0xe19547f2

Device     Boot   Start     End Sectors  Size Id Type
/dev/sdc1          2048 4196351 4194304    2G 83 Linux
/dev/sdc2       4196352 5242879 1046528  511M 83 Linux

The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
```
6. *Соберите `mdadm` RAID1 на паре разделов 2 Гб.*  
**Ответ:**  
```
root@vagrant:~# mdadm --create --verbose /dev/md1 -l 1 -n 2 /dev/sd{b1,c1}
mdadm: Note: this array has metadata at the start and
    may not be suitable as a boot device.  If you plan to
    store '/boot' on this device please ensure that
    your boot-loader understands md/v1.x metadata, or use
    --metadata=0.90
mdadm: size set to 2094080K
Continue creating array? y
mdadm: Defaulting to version 1.2 metadata
mdadm: array /dev/md1 started.
```
7. *Соберите mdadm RAID0 на второй паре маленьких разделов.*  
**Ответ:**  
```
root@vagrant:~#  mdadm --create --verbose /dev/md0 -l 1 -n 2 /dev/sd{b2,c2}
mdadm: Note: this array has metadata at the start and
    may not be suitable as a boot device.  If you plan to
    store '/boot' on this device please ensure that
    your boot-loader understands md/v1.x metadata, or use
    --metadata=0.90
mdadm: size set to 522240K
Continue creating array? y
mdadm: Defaulting to version 1.2 metadata
mdadm: array /dev/md0 started.
```
8. *Создайте 2 независимых PV на получившихся md-устройствах.*  
**Ответ:**  
```
root@vagrant:~# pvcreate /dev/md1 /dev/md0
  Physical volume "/dev/md1" successfully created.
  Physical volume "/dev/md0" successfully created.
```
9. *Создайте общую volume-group на этих двух PV.*  
**Ответ:**  
```
root@vagrant:~# vgcreate vg1 /dev/md1 /dev/md0
  Volume group "vg1" successfully created
root@vagrant:~# vgdisplay
  --- Volume group ---
  VG Name               vgvagrant
  System ID
  Format                lvm2
  Metadata Areas        1
  Metadata Sequence No  3
  VG Access             read/write
  VG Status             resizable
  MAX LV                0
  Cur LV                2
  Open LV               2
  Max PV                0
  Cur PV                1
  Act PV                1
  VG Size               <63.50 GiB
  PE Size               4.00 MiB
  Total PE              16255
  Alloc PE / Size       16255 / <63.50 GiB
  Free  PE / Size       0 / 0
  VG UUID               PaBfZ0-3I0c-iIdl-uXKt-JL4K-f4tT-kzfcyE

  --- Volume group ---
  VG Name               vg1
  System ID
  Format                lvm2
  Metadata Areas        2
  Metadata Sequence No  1
  VG Access             read/write
  VG Status             resizable
  MAX LV                0
  Cur LV                0
  Open LV               0
  Max PV                0
  Cur PV                2
  Act PV                2
  VG Size               2.49 GiB
  PE Size               4.00 MiB
  Total PE              638
  Alloc PE / Size       0 / 0
  Free  PE / Size       638 / 2.49 GiB
  VG UUID               IqcrwX-o8IH-3bgl-F2Ku-MyUd-UDIK-uSeyoN
```
10. *Создайте LV размером 100 Мб, указав его расположение на PV с RAID0.*  
**Ответ:**  
```
root@vagrant:~# lvcreate -L 100M vg1 /dev/md0
  Logical volume "lvol0" created.
root@vagrant:~# vgs
  VG        #PV #LV #SN Attr   VSize   VFree
  vg1         2   1   0 wz--n-   2.49g 2.39g
  vgvagrant   1   2   0 wz--n- <63.50g    0
root@vagrant:~# lvs
  LV     VG        Attr       LSize   Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  lvol0  vg1       -wi-a----- 100.00m
  root   vgvagrant -wi-ao---- <62.54g
  swap_1 vgvagrant -wi-ao---- 980.00m
```
11. *Создайте `mkfs.ext4` ФС на получившемся LV.*  
**Ответ:**  
```
root@vagrant:~# mkfs.ext4 /dev/vg1/lvol0
mke2fs 1.45.5 (07-Jan-2020)
Creating filesystem with 25600 4k blocks and 25600 inodes

Allocating group tables: done
Writing inode tables: done
Creating journal (1024 blocks): done
Writing superblocks and filesystem accounting information: done
```
12. *Смонтируйте этот раздел в любую директорию, например, `/tmp/new`.*  
**Ответ:**  
```
root@vagrant:~# mkdir /tmp/new
root@vagrant:~# mount /dev/vg1/lvol0 /tmp/new
```
13. *Поместите туда тестовый файл, например `wget https://mirror.yandex.ru/ubuntu/ls-lR.gz -O /tmp/new/test.gz`.*  
**Ответ:**  
```
root@vagrant:~# mkdir /tmp/new
root@vagrant:~# mount /dev/vg1/lvol0 /tmp/new
root@vagrant:~# wget https://mirror.yandex.ru/ubuntu/ls-lR.gz -O /tmp/new/test.gz
--2022-01-01 19:12:41--  https://mirror.yandex.ru/ubuntu/ls-lR.gz
Resolving mirror.yandex.ru (mirror.yandex.ru)... 213.180.204.183, 2a02:6b8::183
Connecting to mirror.yandex.ru (mirror.yandex.ru)|213.180.204.183|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 21500400 (21M) [application/octet-stream]
Saving to: ‘/tmp/new/test.gz’

/tmp/new/test.gz     100%[===================>]  20.50M  5.72MB/s    in 3.7s

2022-01-01 19:12:45 (5.60 MB/s) - ‘/tmp/new/test.gz’ saved [21500400/21500400]

root@vagrant:~# ls -l /tmp/new
total 21016
drwx------ 2 root root    16384 Jan  1 19:08 lost+found
-rw-r--r-- 1 root root 21500400 Jan  1 17:41 test.gz
```
14. *Прикрепите вывод `lsblk`.*  
**Ответ:**  
```
root@vagrant:~# lsblk
NAME                 MAJ:MIN RM  SIZE RO TYPE  MOUNTPOINT
sda                    8:0    0   64G  0 disk
├─sda1                 8:1    0  512M  0 part  /boot/efi
├─sda2                 8:2    0    1K  0 part
└─sda5                 8:5    0 63.5G  0 part
  ├─vgvagrant-root   253:0    0 62.6G  0 lvm   /
  └─vgvagrant-swap_1 253:1    0  980M  0 lvm   [SWAP]
sdb                    8:16   0  2.5G  0 disk
├─sdb1                 8:17   0    2G  0 part
│ └─md1                9:1    0    2G  0 raid1
└─sdb2                 8:18   0  511M  0 part
  └─md0                9:0    0  510M  0 raid1
    └─vg1-lvol0      253:2    0  100M  0 lvm   /tmp/new
sdc                    8:32   0  2.5G  0 disk
├─sdc1                 8:33   0    2G  0 part
│ └─md1                9:1    0    2G  0 raid1
└─sdc2                 8:34   0  511M  0 part
  └─md0                9:0    0  510M  0 raid1
    └─vg1-lvol0      253:2    0  100M  0 lvm   /tmp/new
```
15. *Протестируйте целостность файла:*  
```
root@vagrant:~# gzip -t /tmp/new/test.gz
root@vagrant:~# echo $?
0
```
**Ответ:**  
```
root@vagrant:~# gzip -t /tmp/new/test.gz && echo $?
0
```
16. *Используя `pvmove`, переместите содержимое PV с RAID0 на RAID1.*  
**Ответ:**  
```
root@vagrant:~# pvmove /dev/md0
  /dev/md0: Moved: 12.00%
  /dev/md0: Moved: 100.00%
root@vagrant:~# lsblk
NAME                 MAJ:MIN RM  SIZE RO TYPE  MOUNTPOINT
sda                    8:0    0   64G  0 disk
├─sda1                 8:1    0  512M  0 part  /boot/efi
├─sda2                 8:2    0    1K  0 part
└─sda5                 8:5    0 63.5G  0 part
  ├─vgvagrant-root   253:0    0 62.6G  0 lvm   /
  └─vgvagrant-swap_1 253:1    0  980M  0 lvm   [SWAP]
sdb                    8:16   0  2.5G  0 disk
├─sdb1                 8:17   0    2G  0 part
│ └─md1                9:1    0    2G  0 raid1
│   └─vg1-lvol0      253:2    0  100M  0 lvm   /tmp/new
└─sdb2                 8:18   0  511M  0 part
  └─md0                9:0    0  510M  0 raid1
sdc                    8:32   0  2.5G  0 disk
├─sdc1                 8:33   0    2G  0 part
│ └─md1                9:1    0    2G  0 raid1
│   └─vg1-lvol0      253:2    0  100M  0 lvm   /tmp/new
└─sdc2                 8:34   0  511M  0 part
  └─md0                9:0    0  510M  0 raid1
```
17. *Сделайте `--fail` на устройство в вашем RAID1 md.*  
**Ответ:**  
```
root@vagrant:~# mdadm /dev/md1 --fail /dev/sdb1
mdadm: set /dev/sdb1 faulty in /dev/md1
root@vagrant:~# mdadm -D /dev/md1
/dev/md1:
           Version : 1.2
     Creation Time : Sat Jan  1 18:58:57 2022
        Raid Level : raid1
        Array Size : 2094080 (2045.00 MiB 2144.34 MB)
     Used Dev Size : 2094080 (2045.00 MiB 2144.34 MB)
      Raid Devices : 2
     Total Devices : 2
       Persistence : Superblock is persistent

       Update Time : Sat Jan  1 19:24:32 2022
             State : clean, degraded
    Active Devices : 1
   Working Devices : 1
    Failed Devices : 1
     Spare Devices : 0

Consistency Policy : resync

              Name : vagrant:1  (local to host vagrant)
              UUID : 13d85249:8b92d2ec:8eaa52b2:b5435fe1
            Events : 19

    Number   Major   Minor   RaidDevice State
       -       0        0        0      removed
       1       8       33        1      active sync   /dev/sdc1

       0       8       17        -      faulty   /dev/sdb1
```
18. *Подтвердите выводом `dmesg`, что RAID1 работает в деградированном состоянии.*  
**Ответ:**  
```
root@vagrant:~# dmesg |grep md1
[ 2775.755215] md/raid1:md1: not clean -- starting background reconstruction
[ 2775.755282] md/raid1:md1: active with 2 out of 2 mirrors
[ 2775.755300] md1: detected capacity change from 0 to 2144337920
[ 2775.757343] md: resync of RAID array md1
[ 2786.370604] md: md1: resync done.
[ 4309.762426] md/raid1:md1: Disk failure on sdb1, disabling device.
               md/raid1:md1: Operation continuing on 1 devices.
```
19. *Протестируйте целостность файла, несмотря на "сбойный" диск он должен продолжать быть доступен:*  
```
root@vagrant:~# gzip -t /tmp/new/test.gz
root@vagrant:~# echo $?
0
```
**Ответ:**  
```
root@vagrant:~# gzip -t /tmp/new/test.gz && echo $?
0
```
20. *Погасите тестовый хост, `vagrant destroy`.*  
**Ответ:**  
```
Viktor@Wiktor-PC MINGW64 /d/DevOps-netology/vagrant (main)
$ vagrant destroy
    default: Are you sure you want to destroy the 'default' VM? [y/N] y
==> default: Forcing shutdown of VM...
==> default: Destroying VM and associated drives...
```
## ДЗ 3.4
#### Операционные системы, лекция 2
1. *Используя знания из лекции по systemd, создайте самостоятельно простой unit-файл для node_exporter:*  
    - *поместите его в автозагрузку,*  
    - *предусмотрите возможность добавления опций к запускаемому процессу через внешний файл (посмотрите, например, на systemctl cat cron),*  
    - *удостоверьтесь, что с помощью systemctl процесс корректно стартует, завершается, а после перезагрузки автоматически поднимается.*  
**Ответ:**  
    - Node_exporter установлен, порт  9100 проброшен:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_1.jpg)
    - Node_exporter помещен в автозагрузку:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_3.jpg)
    - Предусмотрена возможность добавления опций:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_2.jpg)
    - Сервис стартует и завершается корректно:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_4.jpg)
    - При перезапуске переменная окружения выставляется:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_5.jpg)  
  
2. *Ознакомьтесь с опциями node_exporter и выводом /metrics по-умолчанию. Приведите несколько опций, которые вы бы выбрали для базового мониторинга хоста по CPU, памяти, диску и сети.*  
**Ответ:**  
```
CPU:
node_cpu_seconds_total{cpu="0",mode="idle"} 1046.19
node_cpu_seconds_total{cpu="0",mode="system"} 14.38
node_cpu_seconds_total{cpu="0",mode="user"} 17.06
process_cpu_seconds_total 0.24

Memory:
node_memory_MemAvailable_bytes 5.59202304e+08
node_memory_MemFree_bytes 7.5513856e+07

Disk:
node_disk_io_time_seconds_total{device="sda"} 51.42
node_disk_read_bytes_total{device="sda"} 6.76783104e+08
node_disk_read_time_seconds_total{device="sda"} 94.678
node_disk_write_time_seconds_total{device="sda"} 5.863

Network:
node_network_receive_bytes_total{device="eth0"} 170971
node_network_receive_bytes_total{device="eth0"} 189159
node_network_transmit_bytes_total{device="eth0"} 201603
node_network_transmit_errs_total{device="eth0"} 0
```
  
3. *Установите в свою виртуальную машину Netdata. Воспользуйтесь готовыми пакетами для установки (sudo apt install -y netdata). После успешной установки:*  
- *в конфигурационном файле /etc/netdata/netdata.conf в секции [web] замените значение с localhost на bind to = 0.0.0.0,*  
- *добавьте в Vagrantfile проброс порта Netdata на свой локальный компьютер и сделайте vagrant reload:*

`config.vm.network "forwarded_port", guest: 19999, host: 19999`
- *После успешной перезагрузки в браузере на своем ПК (не в виртуальной машине) вы должны суметь зайти на localhost:19999. Ознакомьтесь с метриками, которые по умолчанию собираются Netdata и с комментариями, которые даны к этим метрикам.*  
**Ответ:**  
- Netdata установлена:  
      ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_6.jpg)  
  
4. *Можно ли по выводу dmesg понять, осознает ли ОС, что загружена не на настоящем оборудовании, а на системе виртуализации?*  
**Ответ:**  
По выводу dmesg видим что - да, а так же тип ВМ, так как есть соответсвующая строка:  
```
vagrant@vagrant:~$ dmesg |grep virtualiz
[    0.004879] CPU MTRRs all blank - virtualized system.
[    0.221288] Booting paravirtualized kernel on KVM
[    4.883013] systemd[1]: Detected virtualization oracle.
```
  
5. *Как настроен sysctl fs.nr_open на системе по-умолчанию? Узнайте, что означает этот параметр. Какой другой существующий лимит не позволит достичь такого числа (ulimit --help)?*  
**Ответ:**  
`sysctl` настроен по умолчанию так:
```
vagrant@vagrant:~$ /sbin/sysctl -n fs.nr_open
1048576
```
Это максимальное число открытых дескрипторов для ядра (системы), для пользователя задать больше этого числа нельзя. 
Число задается кратное 1024, в данном случае =1024*1024.  
Но максимальный предел ОС можно посмотреть так:
```
vagrant@vagrant:~$ cat /proc/sys/fs/file-max
9223372036854775807
```
Мягкий лимит (так же ulimit -n) на пользователя (может быть увеличен в процессе работы):
```
vagrant@vagrant:~$ ulimit -Sn
1024
```
Жесткий лимит на пользователя (не может быть увеличен, только уменьшен).
```
vagrant@vagrant:~$ ulimit -Hn
1048576
```
Оба эти лимита не могут превысить `fs.nr_open`.  
  
6. *Запустите любой долгоживущий процесс (не ls, который отработает мгновенно, а, например, sleep 1h) в отдельном неймспейсе процессов; покажите, что ваш процесс работает под PID 1 через nsenter. Для простоты работайте в данном задании под root (sudo -i). Под обычным пользователем требуются дополнительные опции (--map-root-user) и т.д.*  
**Ответ:**  
   ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_7.jpg)
   ![](https://github.com/WiktorMysz/devops-netology/blob/main/img/3.4_8.jpg)  
  
7. *Найдите информацию о том, что такое :(){ :|:& };:. Запустите эту команду в своей виртуальной машине Vagrant с Ubuntu 20.04 (это важно, поведение в других ОС не проверялось). Н екоторое время все будет "плохо", после чего (минуты) – ОС должна стабилизироваться. Вызов dmesg расскажет, какой механизм помог автоматической стабилизации. Как настроен этот механизм по-умолчанию, и как изменить число процессов, которое можно создать в сессии?*  
**Ответ:**  
Это так называемая Fork-бомба. Команда определяет функцию под названием `:` ( :() ). 
Внутри функции ( {...} ) есть `:|:&`, которая выглядит следующим образом:  
    - `:` снова вызывает эту функцию `:`.  
    - `|` означает передачу выходных данных в команду.  
    - `:` после `|` означает трубу к функции `:`.  
    - `&`, в данном случае, означает выполнение предыдущего в фоновом режиме.  
     
   Затем есть `;`, который известен как разделитель команд.  
   Наконец, `:` запускает эту "цепную реакцию". Таким образом, каждый экземпляр `:` начинает два новых `:` и так далее...  
   Это приводит к тому, что компьютеру не хватает памяти из-за бесконечного разветвления процесса.  

С разрывами строк понятнее:
```
:()
{
    :|:&
};
:
```
Механизм судя по всему этот:  
```
[ 3947.162817] cgroup: fork rejected by pids controller in /user.slice/user-1000.slice/session-6.scope
```
`Systemd` создает группу для каждого пользователя, и все процессы пользователя принадлежат одной и той же группе.  

`Cgroups` - это механизм Linux, устанавливающий ограничения на системные ресурсы, такие как максимальное количество процессов, циклы ЦП, использование ОЗУ и т. Д. Это другой, более современный уровень ограничения ресурсов, чем ulimit (который использует getrlimit() системный вызов).  

Если запустить `systemctl status user-<uid>.slice` (где <uid> - cgroup пользователя), увидим текущее и максимальное количество задач (процессов и потоков), которые разрешены в этой cgroup.  
```
root@vagrant:~# systemctl status user-1000.slice
● user-1000.slice - User Slice of UID 1000
     Loaded: loaded
    Drop-In: /usr/lib/systemd/system/user-.slice.d
             └─10-defaults.conf
     Active: active since Sun 2021-12-19 01:47:55 UTC; 2h 13min ago
       Docs: man:user@.service(5)
      Tasks: 37 (limit: 2357)
     Memory: 38.9M
```
По умолчанию максимальное количество задач, которое systemd разрешает для каждого пользователя, составляет 33% от «общесистемного максимума» (sysctl kernel.threads-max); обычно это составляет около 10000 задач. Если необходимо изменить это ограничение:  

В systemd v239 и более поздних версиях пользователь по умолчанию устанавливается через `TasksMax = in`:
```
    /usr/lib/systemd/system/user-.slice.d/10-defaults.conf
```
Чтобы настроить ограничение для конкретного пользователя (которое будет применено сразу же, а также сохранено в /etc/systemd/system.control), выполните:
```
    systemctl [--runtime] set-property user-<uid>.slice TasksMax=<value>
```
Также можно использовать механизмы переопределения настроек устройства (например, systemctl edit), но они потребуют перезагрузки.  
Если вы хотите изменить ограничение для каждого пользователя, вы можете создать `/etc/systemd/system/user-.slice.d/15-limits.conf`.


## ДЗ 3.3
#### Операционные системы, лекция 1
1. Системный вызов CD `chdir("/tmp")`  
2. База данных `file` находится здесь `/usr/share/misc/magic.mgc`  
Пытается искать еще и здесь:  
```
newfstatat(AT_FDCWD, "/home/wiktormyszolow/.magic.mgc", 0x7fff3633b110, 0) = -1 ENOENT (Нет такого файла или каталога)
newfstatat(AT_FDCWD, "/home/wiktormyszolow/.magic", 0x7fff3633b110, 0) = -1 ENOENT (Нет такого файла или каталога)
openat(AT_FDCWD, "/etc/magic.mgc", O_RDONLY) = -1 ENOENT (Нет такого файла или каталога)
newfstatat(AT_FDCWD, "/etc/magic", {st_mode=S_IFREG|0644, st_size=111, ...}, 0) = 0
openat(AT_FDCWD, "/etc/magic", O_RDONLY) = 3
```
3. Используем lsof чтобы найти удаленный, но открытый файл, все еще занимающий место:  
```
# lsof | grep deleted | grep 703bebcf.log
gnome-she 1027                 wiktormyszolow   50r      REG               0,38    32768        955 /home/wiktormyszolow/share/metadata/703bebcf.log (deleted)
```
Найдем запись, `/proc/<pid>/fd/` которая соответствует дескриптору файла:  
```
$ ls -l /proc/1027/fd/703bebcf.log
lrwx------. 1 wiktormyszolow wiktormyszolow 64 дек  5 01:13 77 -> /home/wiktormyszolow/share/metadata/703bebcf.log (deleted)
```
Далее `cat /dev/null` в FD:  
`$ cat /dev/null > /proc/1027/fd/77`

Процесс еще открыт, но теперь имеет длину 0:  
```
gnome-she 1027                 wiktormyszolow   50r      REG               0,38    0        955 /home/wiktormyszolow/share/metadata/703bebcf.log (deleted)
```
4. Процессы "Зомби", в отличие от "сирот", освобождают свои ресурсы, но не освобождают запись в таблице процессов. Запись освободиться при вызове wait() родительским процессом.
5. `# /usr/sbin/opensnoop-bpfcc`  
```
PID    COMM               FD ERR PATH
870    vminfo              4   0 /var/run/utmp
559    dbus-daemon        -1   2 /usr/local/share/dbus-1/system-services
559    dbus-daemon        26   0 /usr/share/dbus-1/system-services
559    dbus-daemon        -1   2 /lib/dbus-1/system-services
559    dbus-daemon        26   0 /var/lib/snapd/dbus-1/system-services/
```
6. Системный вызов `uname()`.  
`$ man 2 uname`:
> Часть информации из структуры utsname может быть получена также через /proc/sys/kernel/ {ostype, hostname, osrelease, version, domainname}.  
7. `&&` - условный оператор,   
а `;`  - разделитель последовательных команд.  
`test -d /tmp/some_dir; echo Hi` - `echo` отработает в любом случае.  
`test -d /tmp/some_dir && echo Hi` - `echo` отработает только при успешном завершении команды test.  
`set -e` - прерывает сессию при любом ненулевом значении исполняемых команд в конвейере кроме последней.  
Использование `&&` вместе с `set -e` вероятно не имеет смысла, так как при ошибке выполнение команды прекратиться.
8. `-e` - прерывает выполнение исполнения при ошибке любой команды кроме последней в последовательности.   
`-x` - вывод трейса простых команд.   
`-u` - неустановленные/не заданные параметры и переменные считаются как ошибки, с выводом в stderr текста ошибки и выполнит завершение неинтерактивного вызова.  
`-o` - pipefail возвращает код возврата набора/последовательности команд, ненулевой при последней команды или 0 для успешного выполнения команд.  
В сценариях повышает детализациею вывода ошибок (логирования), и завершит сценарий при наличии ошибок, на любом этапе выполнения сценария, кроме последней завершающей команды.
9. `$ ps -A -o s | sort -k2 | uniq -c | sort -n`
```
      1 R
      4 T
     42 I
     94 S
```
Наиболее часто встречающиеся статусы:  
     `I` - Фоновые (бездействующие) процессы ядра (42 процесса).  
     `S` - Процессы ожидающие завершения (94 процесса).  
  
Дополнительные буквы означают дополнительные характеристики - например приоритет.
## ДЗ 3.2
#### Работа в терминале, лекция 2
1. Команда cd - это команда изменения рабочего каталога, встроенная в shell.  
Работая в терминале логичнее преходить по директориям с помощью встроенной функции.  
Если использовать внешнюю функцию, то каждый раз после смены каталога придется вызывать bash из этого каталога, но тогда мы получим новый shell, а на вызвавший shell он влиять не будет.  
2. ``grep <some_string> <some_file> -c``
3. Процесс systemd.
4. ``ls % 2>/dev/pts/1``
5. Да, получится:
```
$ cat newfile
cat: newfile: No such file or directory  
$ vi newfile  
$ cat newfile  
newline1  
$ cat newfile-out  
cat: newfile-out: No such file or directory  
$ cat <newfile >newfile-out  
$ cat newfile-out  
newline1  
```
6. Получится. Для этого нужно направить вывод `$ echo Hello from pts0 to tty0 >/dev/tty0`.  
Наблюдать в графическом режиме не получиться, нужно переключиться в контекст TTY.  
7. `>&` - это синтаксис для перенаправления потока на другой файловый дескриптор, в нашем случае это дескриптор 1, т.е stdout. Таким образом командой `bash 5>&1` мы создаем дескриптор 5 процесса bash и перенаправляем его в stdout.  
`$$` - это PID процесса bash.  
```
$ echo $$  
1501  
$ ls -la /proc/1501/fd/ 
lrwx------ 1 vagrant vagrant 64 Nov 26 21:28 0 -> /dev/pts/0
lrwx------ 1 vagrant vagrant 64 Nov 26 21:28 1 -> /dev/pts/0
lrwx------ 1 vagrant vagrant 64 Nov 26 21:28 2 -> /dev/pts/0
lrwx------ 1 vagrant vagrant 64 Nov 26 21:28 255 -> /dev/pts/0
lrwx------ 1 vagrant vagrant 64 Nov 26 21:28 5 -> /dev/pts/0
```  
Эти файл дескрипторы связаны с устройством 0 псевдотерминала /dev/pts, т.е. с нашим терминалом:
```
$ who
vagrant  pts/0
```
Поэтому `echo netology > /proc/$$/fd/5` - результат команды `echo netology` перенаправляет в файловый дескриптор 5 процесса 1501 (bash), а оттуда на 1 (stdout).  
На выходе имеем `netology`.  
8. `$ ls % 5>&2 2>&1 1>&5 | grep % -c`  
9. Команда выводит переменные окружения. Мы также можем увидеть список всех переменных окружения, используя команды `env` или `printenv`.  
10. `/proc/<PID>/cmdline` - этот доступный только для чтения файл содержит полный путь до исполняемого файла процесса [PID], если только процесс не является зомби. В последнем случае в этом файле ничего нет: то есть чтение этого файла вернет 0 символов. Аргументы командной строки появляются в этом файле в виде набора строк, разделенных нулевыми байтами ('\ 0'), с последующим нулевым байтом после последней строки.   (строка 172).  
`/proc/<PID>/exe` - этот файл представляет собой символическую ссылку, содержащую фактический путь к исполняемой команде для процесса [PID], `cat` выведет содержимое запущенного файла, запуск этого файла, запустит еще одну копию того же исполняемого файла, который запускается процессом [pid] (строка 212).
11. `$ grep sse /proc/cpuinfo`  
SSE 4.2  
12. Так происходит потому что ожидается подключение пользователя, а не другого процесса. Опция `-t` принудительно вызывает tty, даже если ssh не имеет локального tty. 
13. ```
    Установка:
    sudo apt-get install reptyr  
    
    Использование в новой консоли:  
    screen -S <screen name>  
    reptyr <PID of running process to attach>
    ```
14. Команда `tee` делает вывод одновременно и в файл, указанный в качестве параметра, и в stdout, 
в данном примере команда получает вывод из stdin, перенаправленный через pipe от stdout команды echo
поскольку команда запущена от sudo она получает права на запись в файл.

## ДЗ 3.1
#### Работа в терминале, лекция 1
1. VirtualBox установлен
2. Vagrant установлен
3. Git Bash
4. Выполнено
5. RAM: 1024 mb  
CPU: 1 cpu  
HDD: 64 gb  
Video: 4 mb  
6. Добавить в VagrantFile:
```
   config.vm.provider "virtualbox" do |v|  
       v.memory = 2048  
       v.cpus = 3  
   end
   ```
7. Выполнено
8. Переменной `HISTFILESIZE` можно задать максимальное число строк журнала history, это описывается на строчке 589.  
Переменной `HISTSIZE` можно задать число команд для сохранения журнала history, это описывается на строчке 598.  
Директива `ignoreboth` является сокращением для ignorespace и ignoredups.  
    - ignorespace - не сохранять команды начинающиеся с пробела,   
    - ignoredups - не сохранять команду, если такая уже имеется в истории
9. `{и}` - зарезервированные слова, список, в т.ч. список команд. В отличии от `(и)` должны встречаться там, где разрешено распознать зарезервированное слово. Используется в различных условных циклах, условных операторах, или ограничивают тело функции. 
В командах выполняет подстановку элементов из списка, например mkdir ./DIR_{A..Z} - создаст каталоги с именами DIR_A, DIR_B и т.д. до DIR_Z.  
Описано в строке 197.
10. `touch file-{000000..100000}`  
Нет, 300000 не получится, слишком длинный список аргументов.  
Максимальное количество аргументов 2097152.
11. `[[ ... ]]` это конструкции проверки условий, расширенный вариант команды test.  
Bash исполняет `[[ ... ]]` как один элемент, который имеет код возврата.  
Конструкция `[[ -d /tmp ]]` возвращат 1 если директория tmp существует в корне.  
Например:
```
if [[ -d /tmp ]] 
then 
  echo "Директория tmp надена" 
else
  echo "Директория tmp не надена"
fi
```
12. 
```
$ mkdir /tmp/new_path_directory
$ cp /usr/local/bin/bash /tmp/new_path_directory/
$ export PATH=/tmp/new_path_directory:$PATH
$ source ~/.bashrc
```
13. Команда `at` используется для назначения одноразового задания на заданное время, а команда `batch` — для назначения одноразовых задач, которые должны выполняться, когда загрузка системы становится меньше 0,8.
14. `vagrant suspend`

## ДЗ 2.4
#### Инструменты Git
1. $ git show aefea   
   commit aefead2207ef7e2aa5dc81a34aedf0cad4c32545 Update CHANGELOG.md  
  

2. $ git show 85024d3   
   tag: v0.12.23  
  

3. $ git show b8d720   
   Merge: 56cd7859e05c36c06b56d013b55a252d0bb7e158 9ea88f22fc6269854151c571162c5bcf958bee2b  
  

4. $ git show v0.12.23..v0.12.24 --compact-summary  
   commit 85024d3100126de36331c6982bfaac02cdab9e76 v0.12.23  
   commit 225466bc3e5f35baa5d07197bbc079345b77525e Cleanup after v0.12.23 release  
   commit dd01a35078f040ca984cdd349f18d0b67e486c35 Update CHANGELOG.md  
   commit 4b6d06cc5dcb78af637bbb19c198faff37a066ed Update CHANGELOG.md  
   commit d5f9411f5108260320064349b757f55c09bc4b80 command: Fix bug when using terraform login on Windows  
   commit 06275647e2b53d97d4f0a19a0fec11f6d69820b5 Update CHANGELOG.md  
   commit 5c619ca1baf2e21a155fcdb4c264cc9e24a2a353 website: Remove links to the getting started guide's old location  
   commit 6ae64e247b332925b872447e9ce869657281c2bf registry: Fix panic when server is unreachable  
   commit 3f235065b9347a758efadc92295b540ee0a5e26e Update CHANGELOG.md  
   commit b14b74c4939dcab573326f4e3ee2a62e23e12f89 [Website] vmc provider links  
   commit 33ff1c03bb960b332be3af2e333462dde88b279e v0.12.24  
  

5. $ git grep -p func*.providerSource*.  
   $ git log -L :providerSource:provider_source.go -p -s  
   commit 8c928e83589d90a031f811fae52a81be7153e82f main: Consult local directories as potential mirrors of providers  
  

6. $ git grep -p func*.globalPluginDirs*.  
   $ git log -L :globalPluginDirs:plugins.go -p -s  
   commit 78b12205587fe839f10d946ea3fdc06719decb05 Remove config.go and update things using its aliases  
   commit 52dbf94834cb970b510f2fba853a5b49ad9b1a46 keep .terraform.d/plugins for discovery  
   commit 41ab0aef7a0fe030e84018973a64135b11abcd70 Add missing OS_ARCH dir to global plugin paths  
   commit 66ebff90cdfaa6938f26f908c7ebad8d547fea17 move some more plugin search path logic to command  
   commit 8364383c359a6b738a436d1b7745ccdce178df47 Push plugin discovery down into command package  
  

7. $ git log -S synchronizedWriters --oneline  
   $ git show 5ac311e2a  
   Author: Martin Atkins <mart@degeneration.co.uk>  

## ДЗ 2.3
#### Ветвления в Git
Цель задания - попробовать на практике то, как выглядит решение конфликтов. 

## ДЗ 2.1
#### Дирректория Terraform содержит файл .gitignore. 
Игнорируются: 
- Local .terraform directories
- .tfstate files
- сrash log files
- override files
- CLI configuration files