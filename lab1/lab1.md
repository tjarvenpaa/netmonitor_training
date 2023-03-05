# Lab 1

![Lab 1](lab1.drawio.png)

Deploy the lab with command `./deploy.sh lab1`

Lab consists of 3 Nokia Linux SR routers and a Linux server with SNMP tools installed
* SNMP, 10.10.10.2
* Srl1, 1.1.1.1
* Srl2, 1.1.1.2
* Srl3, 1.1.1.3

Server is connected to SRL1 (ethernet-1/5), and the routers are connected to eachother with direct links. Routing between them is done with OSPF.

SNMP is version 2c, the community string is `lab1` and authentication needs to be protected with SHA (snmpwalk -v 2c -c lab1 -a SHA x.x.x.x OID)

The usable OIDs and instructions for configurating Nokia SR Linux can be found from Nokia's web page [Nokia Service Router Linux](https://documentation.nokia.com/cgi-bin/dbaccessfilename.cgi/3HE16819AAAATQZZA01_V1_SR%20Linux%20R21.3%20Configuration%20Basics.pdf)

You can enter the server console with command `./server.sh lab1 snmp` and the routers CLI with command `./router.sh lab1 1` or `./router.sh lab1 2` and so on.

After the lab is done remember to destroy the lab with command `./destroy.sh lab1`

## Task

Login to SNMP server console and use SNMPWalk to query the routers from the addresses above.

See if all the interfaces in the network diagram are operational and working correctly (hint. ifName, ifOperStatus and ifAdminStatus will help with this).

Fix any broken links between the routers by connecting them and configuring if needed.

## Cleanup
After the lab is done remember to destroy the lab with command `./destroy.sh lab2`