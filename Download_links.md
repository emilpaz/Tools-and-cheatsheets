# EgressCheck Framework
 Help check for egress filtering between your host and a client system.
 Generate commnad and check for traffic in wireshark
```
 egresschecker> set ports 8500-9500
PORTS => 8500-9500 (1001 ports)

egresschecker> set targetip 172.16.91.10
TARGETIP => 172.16.91.10

egresschecker> set sourceip 172.16.91.100
SOURCEIP => 172.16.91.100

egresschecker> set protocol tcp
PROTOCOL => TCP

egresschecker> generate powershell-cmd
```
[GitHub](https://github.com/stufus/egresscheck-framework)

# PacketWhisper
### Exfiltrates data via DNS querries 
1. run python scipr from commandline
We used command sequance 1 credentials 3 y y 1 
2. on target send via DNS file
3. on cali run the same script and extract it 
[GitHub](https://github.com/TryCatchHCF/PacketWhisper)