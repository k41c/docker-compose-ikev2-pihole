#!/bin/bash

# create a new sub-network (if not exist)
docker network inspect vpn-net2 &>/dev/null || 
    docker network create --driver=bridge --subnet=172.110.1.0/24 --gateway=172.110.1.1 vpn-net2
