#!/bin/bash

apt-get update

apt-get install frr-snmp -y
N

adduser --quiet --system --group --home $SNMPDIR --shell /usr/sbin/nologin Debian-snmp

service snmpd start

sleep 10
/usr/lib/frr/frr-reload
