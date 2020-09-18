#!/bin/bash

mkdir -p /etc/sabnzbdplus \
    && cp -n /static/config/sabnzbdplus.ini /etc/sabnzbdplus/ \
    && mkdir -p /data/sabnzbdplus/watch \
    && mkdir -p /data/sabnzbdplus/incomplete \
    && mkdir -p /data/sabnzbdplus/complete \
    && mkdir -p /data/sabnzbdplus/script
sed -i "s|port = 8080|port = $SAB_PORT_A|g" '/etc/sabnzbdplus/sabnzbdplus.ini'
sed -i "s|https_port = 8090|https_port = $SAB_PORT_B|g" '/etc/sabnzbdplus/sabnzbdplus.ini'
echo '[info] sabnzbdplus fixed.'
