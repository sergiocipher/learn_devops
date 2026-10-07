# Networking Command Practice


## 1. `ip addr`

```text
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: wlp2s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether c0:35:32:eb:0c:83 brd ff:ff:ff:ff:ff:ff
    inet 100.128.162.239/20 brd 100.128.175.255 scope global dynamic noprefixroute wlp2s0
       valid_lft 82670sec preferred_lft 82670sec
    inet6 fe80::365e:758e:8982:cd9c/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
3: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    link/ether 86:cc:c2:d0:a4:4e brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
       valid_lft forever preferred_lft forever

```

**Understanding:** `ip addr` displays network interfaces, their state, MAC addresses, and assigned IPv4/IPv6 addresses. The Wi-Fi interface is currently connected.

## 2. `ip route`

```text
default via 100.128.160.1 dev wlp2s0 proto dhcp src 100.128.162.239 metric 600 
100.128.160.0/20 dev wlp2s0 proto kernel scope link src 100.128.162.239 metric 600 
172.17.0.0/16 dev docker0 proto kernel scope link src 172.17.0.1 linkdown 

```

**Understanding:** `ip route` shows how packets are forwarded. The default gateway is `10.114.0.1`, reached through the Wi-Fi interface.

## 3. `ip link`

```text
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: wlp2s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DORMANT group default qlen 1000
    link/ether c0:35:32:eb:0c:83 brd ff:ff:ff:ff:ff:ff
3: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN mode DEFAULT group default 
    link/ether 86:cc:c2:d0:a4:4e brd ff:ff:ff:ff:ff:ff
```

**Understanding:** `ip link` focuses on link-layer interfaces and their operational state. It does not show the IP addresses assigned to them.

## 4. `ip neigh`

```text
100.128.160.1 dev wlp2s0 lladdr d0:ea:11:32:00:19 REACHABLE 
100.128.172.29 dev wlp2s0 FAILED 
```

**Understanding:** `ip neigh` shows the ARP/neighbor cache, mapping local IP addresses to link-layer addresses. `REACHABLE` means the neighbor was recently confirmed; `STALE` means it may need confirmation.

## 5. `ping -c 4 127.0.0.1`

```text
PING 127.0.0.1 (127.0.0.1) 56(84) bytes of data.
64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.061 ms
64 bytes from 127.0.0.1: icmp_seq=2 ttl=64 time=0.091 ms
64 bytes from 127.0.0.1: icmp_seq=3 ttl=64 time=0.095 ms
64 bytes from 127.0.0.1: icmp_seq=4 ttl=64 time=0.074 ms

--- 127.0.0.1 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3079ms
rtt min/avg/max/mdev = 0.061/0.080/0.095/0.013 ms
```

**Understanding:** This checks the local loopback stack without using the physical network. The successful replies show that local IP networking is working.

## 6. `ping -c 4 8.8.8.8`

```text
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=120 time=19.5 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=120 time=19.0 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=120 time=14.8 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=120 time=34.9 ms

--- 8.8.8.8 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3006ms
rtt min/avg/max/mdev = 14.777/22.050/34.898/7.642 ms
```

**Understanding:** This tests Internet connectivity directly by IP address, avoiding DNS. All packets were received successfully.

## 7. `ping -c 4 google.com`

```text
PING google.com (142.250.134.100) 56(84) bytes of data.
64 bytes from fx-in-f100.1e100.net (142.250.134.100): icmp_seq=1 ttl=116 time=48.9 ms
64 bytes from fx-in-f100.1e100.net (142.250.134.100): icmp_seq=2 ttl=116 time=87.0 ms
64 bytes from fx-in-f100.1e100.net (142.250.134.100): icmp_seq=3 ttl=116 time=85.9 ms
64 bytes from fx-in-f100.1e100.net (142.250.134.100): icmp_seq=4 ttl=116 time=30.6 ms

--- google.com ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3004ms
rtt min/avg/max/mdev = 30.593/63.088/86.955/24.219 ms

```

**Understanding:** This tests both DNS resolution and Internet connectivity. The hostname resolved to an IP address and all four packets returned.

## 8. `nslookup google.com`

```text
Server:		127.0.0.53
Address:	127.0.0.53#53

Non-authoritative answer:
Name:	google.com
Address: 142.250.134.102
Name:	google.com
Name:	google.com
Address: 2404:6800:4000:1006::8a
Name:	google.com
Address: 2404:6800:4000:1006::65
Name:	google.com
Address: 2404:6800:4000:1006::71
Name:	google.com
Address: 2404:6800:4000:1006::8b

```

**Understanding:** `nslookup` queries DNS and presents a readable hostname-to-address result. This machine uses the local `systemd-resolved` DNS stub 

## 9. `dig google.com`

```text
; <<>> DiG 9.18.39-0ubuntu0.24.04.7-Ubuntu <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 21721
;; flags: qr rd ra; QUERY: 1, ANSWER: 6, AUTHORITY: 4, ADDITIONAL: 5

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		263	IN	A	142.250.134.113
google.com.		263	IN	A	142.250.134.100
google.com.		263	IN	A	142.250.134.101
google.com.		263	IN	A	142.250.134.138
google.com.		263	IN	A	142.250.134.139
google.com.		263	IN	A	142.250.134.102

;; AUTHORITY SECTION:
google.com.		1970	IN	NS	ns1.google.com.
google.com.		1970	IN	NS	ns3.google.com.
google.com.		1970	IN	NS	ns4.google.com.
google.com.		1970	IN	NS	ns2.google.com.

;; ADDITIONAL SECTION:
ns1.google.com.		24921	IN	A	216.239.32.10
ns3.google.com.		189812	IN	A	216.239.36.10
ns4.google.com.		305312	IN	A	216.239.38.10
ns2.google.com.		13903	IN	A	216.239.34.10

;; Query time: 91 msec
;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
;; WHEN: Sun Sep 06 11:57:28 IST 2026
;; MSG SIZE  rcvd: 271

```

**Understanding:** `dig` gives detailed DNS diagnostics, including query status, record type, TTL, answer, and DNS server. `NOERROR` indicates a successful query.

## 10. `traceroute google.com`

```text
timeout: failed to execute process: No such file or directory (os error 2)
```

**Understanding:** `traceroute` normally lists the routers, or hops, between this computer and a destination. It could not run because the `traceroute` program is not installed in this environment.

## 11. `ss -tuln`

```text
Netid  State   Local Address:Port
udp    UNCONN  127.0.0.53:53
tcp    LISTEN  127.0.0.1:631
tcp    LISTEN  127.0.0.1:5432
tcp    LISTEN  0.0.0.0:22
tcp    LISTEN  *:80
```

**Understanding:** `ss` displays sockets. `-t` selects TCP, `-u` selects UDP, `-l` shows listening sockets, and `-n` keeps addresses and ports numeric.

## 12. `sudo ss -tulpn`

```text
sudo: interactive authentication is required
```

**Understanding:** This command would show listening TCP/UDP sockets plus the owning process and PID. It needs administrator privileges, which were not available during this non-interactive run.

## 13. `sudo lsof -i`

```text
sudo: interactive authentication is required
```

**Understanding:** `lsof -i` lists processes that have Internet sockets open. `sudo` allows it to inspect sockets belonging to all users, but authentication was required here.

## 14. `curl -I https://google.com`

```text
HTTP/2 301
location: https://www.google.com/
content-type: text/html; charset=UTF-8
server: gws
```

**Understanding:** `curl -I` requests only HTTP headers. The `301` status means Google redirects the request to `https://www.google.com/`.

## 15. `hostname`

```text
somyajit-saha-IdeaPad-Slim-3-15IRH8
```

**Understanding:** `hostname` prints the computer's current host name, which identifies it on the local network.

