#!/bin/bash

mkdir -p /etc/jackett \
    && cp -n /static/config/jackett.json /etc/jackett/ServerConfig.json \
    && chmod -R 666 /etc/jackett
sed -i "s|: 9117|: $JACKETT_PORT|g" '/etc/jackett/ServerConfig.json'
sed -i "s|: 1080|: $DANTE_PORT|g" '/etc/jackett/ServerConfig.json'
echo '[info] jackett fixed.'
