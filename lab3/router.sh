#!/bin/bash

apt-get update

apt-get install frr-snmp -y

#adduser --quiet --system --group --home $SNMPDIR --shell /usr/sbin/nologin Debian-snmp

service snmpd start

rm -rf /etc/frr/daemonds
mv /etc/frr/daemons.new /etc/frr/daemons

/usr/lib/frr/frr-reload
