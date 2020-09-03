# Intro
- robots.txt
- comments in source code
- harvest domains
- harvest subdomians
- technology
- framework

# Check response codes and headers via curl 
Commandline URL, command line 
## Get http code
1. curl --write-out "%{http_code}" --output /dev/null --silent --insecure http://<target> 
2. curl -L --write-out "%{http_code}" --output /dev/null --silent --insecure http://<target>
-L follow redirections 

### Timeout
timeout 5 curl --write-out "%{http_code}" --output /dev/null --silent --insecure http://<target>  
### Alivecheck

# Web Spidering
## Hakrawler
### Usage
hakrawler -url 10.100.13.5 -depth 3
I needed to navigate to:
/root/go-workspace/bin

### Install
https://github.com/hakluke/hakrawler
go get github.com/hakluke/hakrawler

cd /root/go-workspace/src/github.com/hakluke
go run main.go

# Dirbusting/Fuzzing
1. wfuzz -c -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt --hc 404,403 -u "http://172.16.160.102/FUZZ.txt" -t 100
2. dirbuster GUI



# Preparation
## Mozilla 
- Firebug 
- FoxyProxy
## Burp
- Define scope
- Adjust intercept client requests
![](https://github.com/emilpaz/Tools-and-cheatsheets/blob/master/Recon/WebApp/1.png?raw=true)
