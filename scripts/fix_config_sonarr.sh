#!/bin/bash

mkdir -p /etc/sonarr \
    && cp -n /static/config/sonarr.xml /etc/sonarr/config.xml
sed -i "s|8989|$SONARR_PORT|g" '/etc/sonarr/config.xml'
echo '[info] sonarr fixed.'
