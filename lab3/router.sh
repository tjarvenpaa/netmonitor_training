#!/bin/bash

apt-get update

apt-get install frr-snmp -y

#adduser --quiet --system --group --home $SNMPDIR --shell /usr/sbin/nologin Debian-snmp

service snmpd start

/usr/lib/frr/frr-reload
