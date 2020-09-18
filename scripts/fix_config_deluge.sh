#!/bin/bash

mkdir -p /etc/deluge-web \
    && cp -n /static/config/deluge.conf /etc/deluge-web/core.conf \
    && cp -n /static/config/deluge-web.conf /etc/deluge-web/web.conf \
    && mkdir -p /data/deluge/watch \
    && mkdir -p /data/deluge/incomplete \
    && mkdir -p /data/deluge/complete \
    && mkdir -p /data/deluge/torrent
sed -i "s|\"port\": 8112|\"port\": $DELUGE_PORT|g" '/etc/deluge-web/web.conf'
echo '[info] deluge fixed.'
