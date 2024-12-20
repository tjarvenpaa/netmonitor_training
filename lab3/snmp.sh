#!/bin/bash

ip addr add 10.10.10.2/24 dev eth1
ip route add 1.1.1.0/24 via 10.10.10.1

