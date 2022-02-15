#!/bin/bash

mkdir -p /etc/prowlarr \
    && cp -n /static/config/prowlarr.xml /etc/prowlarr/config.xml
sed -i "s|9696|$PROWLARR_PORT|g" '/etc/prowlarr/config.xml'
echo '[info] prowlarr fixed.'
