# Quick wins
- robots.txt
- 


# Dirbusting/Fuzzing
1. wfuzz -c -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt --hc 404,403 -u "http://172.16.160.102/FUZZ.txt" -t 100

# Preparation
## Mozilla 
- Firebug 
- FoxyProxy
## Burp
- Define scope
- Adjust intercept client requests
![](https://github.com/emilpaz/Tools-and-cheatsheets/blob/master/Recon/WebApp/1.png?raw=true)
