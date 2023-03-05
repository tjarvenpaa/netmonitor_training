#!/bin/bash

apt-get update

apt-get install frr-snmp -y
N

rm -rf /etc/snmp/snmpd.conf
mv /etc/snmp/snmpd.conf.new /etc/snmp/snmpd.conf

service snmpd start

sleep 10
/usr/lib/frr/frr-reload
