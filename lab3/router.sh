#!/bin/bash

apk update

apk add frr-snmp net-snmp

snmpd -X

/usr/lib/frr/watchfrr.sh restart all