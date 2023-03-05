# Lab 2

![Lab 2](lab2.drawio.png)

Deploy the lab with command `./deploy.sh lab2`

Lab consists of 3 Nokia Linux SR routers and 2 servers
* SNMP, 10.10.10.2
* Nagios, 10.10.20.2
* Srl1, 1.1.1.1
* Srl2, 1.1.1.2
* Srl3, 1.1.1.3

Servers are connected to SRL1, and the routers are connected to eachother with direct links. Routing between them is done with OSPF.

SNMP is version 2c, the community string is `lab2` and authentication needs to be protected with SHA (snmpwalk -v 2c -c lab2 -a SHA x.x.x.x OID)

The usable OIDs and instructions for configurating Nokia SR Linux can be found from Nokia's web page [Nokia Service Router Linux](https://documentation.nokia.com/cgi-bin/dbaccessfilename.cgi/3HE16819AAAATQZZA01_V1_SR%20Linux%20R21.3%20Configuration%20Basics.pdf)

You can enter the servers console with command `./server.sh lab2 snmp` or `./server.sh lab2 nagios` and the routers CLI with command `./router.sh lab2 1`

NagiOS username and password is default `nagiosadmin / nagios` and can be accessed by web browser http://localhost:8102

## Task



## Cleanup
After the lab is done remember to destroy the lab with command `./destroy.sh lab2`