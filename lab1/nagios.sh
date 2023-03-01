#!/bin/bash

ip addr add 10.10.20.2/24 dev eth1
ip route add 1.1.1.0/24 via 10.10.20.1

echo "cfg_file=/opt/nagios/etc/objects/router.cfg" >> /opt/nagios/etc/nagios.cfg
