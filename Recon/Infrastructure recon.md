# Passive
## Whois, domain tools
### Google.com
search engine will list subdomains:
```
site: <target>
```
### Amass - Subdomains brute force

```
apt install snapd
service snapd start
snap install amass
snap run amass
```

### Sublist3r
sublist3r -d <target>

![Github](https://github.com/aboul3la/Sublist3r)

## DNS - zone transfer


# Active
1. Identify targets ip (if not specyfied in scope)
2. Identify OS versions
3. Identyfi open ports
4. Identify services
5. Go to enumeration of specyfic services.

## fping - Ping sweep
Build in Kali.
```
fping -a -g start_ip end_ip 2> /dev/null
```

## nmap
### Ping sweep
nmap -sn 

### OS fingerprinting
```
nmap -Pn -O <tar>
```

### Open ports
sudo nmap -sS -p- <target> -oN opent_ports.txt -vv
sudo nmap -sS -p- -iL <targets> -oN opent_ports.txt -vv

### Retrieve open ports as comma separeted file
cat results.nmap | grep "open" | grep -v "filt" | cut -d"/" -f 1 | sort -u | xargs | tr ' ' ',' > open_ports.txt

### Services and basic scripts
sudo nmap -sC -sV -p <ports> <target> -oN services.txt -vv

## MASSSCAN
### Command
./masscan -p22,80 -Pn --rate=800 --baners <ip> -e tap0 --router-ip 10.10.10.1 
### Config file
./masscan -p22,80 -Pn --rate=800 --baners <ip> -e tap0 --router-ip 10.10.10.1 --echo > mas.conf
```
output-file=scan.list

```
masscan -c ms.conf

### Install


## UDP - Unicorn scan


# Nmap responses
filtered - nmap doesn't get response. (Firewall, IDS), **TEST ANOTHER TECHNIQUE**
tcpwrapped - TCP handshake was completed but remote host closed the connection without receiving andy data. 
--reason use it to make nmap report why it marked port
# Firewall bypass
## Scan for few common ports
Check only ports 22,445,80,443 to identyfi alive hosts.

## Identyfi firewall
If nmap scan succeded with full TCP scan against well known service fingerprint should succeed sa well.
--reson will debug a little nmap behaviour. If RST package is send during tcp handshake it could be firewall. 

