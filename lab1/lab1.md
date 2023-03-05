# Lab 1

## Description

In the first lab we have only 1 device to monitor with an SNMP server. The device is connected with the server by the network 10.10.10.0/24 but the monitoring is made via Loopback address.

A Loopback interface is a special interface that has an operational status allways up, unless it is manually disabled. This is especially useful with monitoring as the device is reachable as long as it's connected to the server. The reachability is thus not depended on a single interface.

![Lab 1](lab1.drawio.png)

Lab consists of 1 Nokia Linux SR router and a Linux server with SNMP tools installed
* SNMP, 10.10.10.2
* Srl1, 1.1.1.1

Server is connected to SRL1 (ethernet-1/5).

## Deployment

Deploy the lab with command `./deploy.sh lab1`

SNMP is version 2c, the community string is `lab1` (snmpwalk -v 2c -c lab1 1.1.1.1 OID)

The usable OIDs and instructions for configurating Nokia SR Linux can be found from Nokia's web page [Nokia Service Router Linux](https://documentation.nokia.com/cgi-bin/dbaccessfilename.cgi/3HE16819AAAATQZZA01_V1_SR%20Linux%20R21.3%20Configuration%20Basics.pdf)

You can enter the server console with command `./server.sh lab1 snmp` and the router CLI with command `./srl.sh lab1 1`

## Task

Login to SNMP server console and use SNMPWalk to query the router from the loopback address above.

Query the interface status and the description for ethernet-1/5 which is connected to the SNMP server.

Hint: you can first query for the ifIndex for all interfaces. Then you can query for ifOperStatus.<index> for the exact port.

## Cleanup
After the lab is done remember to destroy the lab with command `./destroy.sh lab1`