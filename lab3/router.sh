#!/bin/bash

apk update

apk add frr-snmp

snmpd

mv /etc/frr/router.conf /etc/frr/frr.conf

/usr/lib/frr/watchfrr.sh restart all