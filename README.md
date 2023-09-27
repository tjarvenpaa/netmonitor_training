# Network monitoring labs

This repository is a collection of network management labs generated with [Containerlab](https://containerlab.dev/). They include full working software routers (Nokia SR Linux) and some network management tools to test your understanding of network management.
## Prerequisites
You need to have docker (and Git, of course) installed before using this lab.

## Installation
Go to the directory where you would like to install the labs and clone this repository with command `git clone https://github.com/tjarvenpaa/netmonitor_training.git`

Change directory to the repo directory `cd netmonitor_training`

Now you´re ready to start the first lab!

## Usage

Deploy lab with command `sudo ./deploy.sh <lab>`

Destroy lab with command `sudo ./destroy.sh <lab>`

Access server console with command `sudo ./server.sh <lab> <server>`

for example `sudo ./server.sh lab1 snmp`

You can also access routers CLI with command `sudo ./router.sh <lab> <router_number>`

for example `sudo ./router.sh lab2 1`

## Labs

[Lab 1](lab1/lab1.md)

SNMP tools

[Lab 2](lab2/lab2.md)

Observium Network monitor

## References

This lab uses technologies from the following instances

* [ContainerLab](https://containerlab.dev/)
* [NOKIA](https://www.nokia.com/networks/data-center/service-router-linux-NOS/)
* [Observium](https://www.observium.org/)
