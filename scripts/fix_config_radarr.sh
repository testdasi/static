#!/bin/bash

mkdir -p /etc/radarr \
    && cp -n /static/config/radarr.xml /etc/radarr/config.xml
sed -i "s|7878|$RADARR_PORT|g" '/etc/radarr/config.xml'
echo '[info] radarr fixed.'
