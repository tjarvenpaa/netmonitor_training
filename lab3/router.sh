#!/bin/bash

apt update

apt install libsnmp-dev snmpd snmp frr-snmp -y

/usr/lib/frr/watchfrr.sh restart all
