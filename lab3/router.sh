#!/bin/bash

apk update

apk add frr-snmp

snmpd -X

/usr/lib/frr/watchfrr.sh restart all