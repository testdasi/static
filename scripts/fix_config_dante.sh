#!/bin/bash

mkdir -p /config/dante \
    && cp -n /static/config/danted.conf /config/dante/
sed -i "s|internal: eth0 port=1080|internal: eth0 port=$DANTE_PORT|g" '/config/dante/danted.conf'
echo '[info] danted fixed.'
