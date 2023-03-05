#!/bin/bash

apt-get update

apt-get install frr-snmp -y
N

service snmpd start

sleep 10
/usr/lib/frr/frr-reload
