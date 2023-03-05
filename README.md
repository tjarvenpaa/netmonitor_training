# Network monitoring labs

This repository is a collection of network management labs generated with [Containerlab](https://containerlab.dev/). They include full working software routers (Nokia SR Linux) and some network management tools to test your understanding of network management.
## Prerequisites
You need to have docker (and Git, of course) installed before using this lab.

## Installation
Go to the directory where you would like to install the labs and clone this repository with command `git clone https://github.com/rikeardi/netmonitor_training.git`

Change directory to the repo directory `cd netmonitor_training`

Now you´re ready to start the first lab!

## Usage

Deploy lab with command
```
./deploy.sh <lab>
```
Destroy lab with command
```
./destroy.sh <lab>
```

Access server console with command
```
./server.sh <lab> <server>
```
for example
```
./server.sh lab1 snmp
```

Access router CLI with command
```
./router.sh <lab> <router_number>
```

## Labs

[Lab 1](lab1/lab1.md)

SNMP tools

[Lab 2](lab2/lab2.md)

NagiOS Network monitor