#!/bin/bash

mkdir -p /etc/dante \
    && cp -n /static/config/danted.conf /etc/dante/
sed -i "s|internal: eth0 port=1080|internal: eth0 port=$DANTE_PORT|g" '/etc/dante/danted.conf'
echo '[info] danted fixed.'
