#!/bin/bash

mkdir -p /etc/tinyproxy \
    && cp -n /static/config/tinyproxy.conf /etc/tinyproxy/
sed -i "s|Port 8080|Port $TINYPROXY_PORT|g" '/etc/tinyproxy/tinyproxy.conf'
sed -i "s|upstream socks5 localhost:1080|upstream socks5 $ETH0_IP:$DANTE_PORT|g" '/etc/tinyproxy/tinyproxy.conf'
echo '[info] tinyproxy fixed.'
