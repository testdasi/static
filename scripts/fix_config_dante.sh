#!/bin/bash

mkdir -p /etc/dante \
    && cp -n /static/config/danted.conf /etc/dante/
sed -i "s|port=1080|port=$DANTE_PORT|g" '/etc/dante/danted.conf'
echo '[info] danted fixed.'
