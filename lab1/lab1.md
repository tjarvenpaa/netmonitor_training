# Lab 1

![Lab 1](lab1.drawio.png)

Deploy the lab with command `./deploy.sh lab1`

Lab consists of 3 Nokia Linux SR routers and 2 servers
* SNMP, 10.10.10.2
* Nagios, 10.10.20.2
* Srl1, 1.1.1.1
* Srl2, 1.1.1.2
* Srl3, 1.1.1.3

Servers are connected to SRL1, and the routers are connected to eachother with direct links. Routing between them is done with OSPF.
