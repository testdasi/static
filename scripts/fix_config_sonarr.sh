#!/bin/bash

mkdir -p /etc/sonarr \
    && cp -n /static/config/sonarr.xml /etc/sonarr/config.xml \
    && mkdir -p /data/sonarr/downloads \
    && mkdir -p /data/sonarr/recycle \
    && mkdir -p /data/sonarr/watch \
    && mkdir -p /tv
sed -i "s|8989|$SONARR_PORT|g" '/etc/sonarr/config.xml'
echo '[info] sonarr fixed.'
