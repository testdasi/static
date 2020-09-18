#!/bin/bash

mkdir -p /root/rtorrent/session \
    && rm -f /root/rtorrent/session/rtorrent.lock \
    && cp -n /static/config/.rtorrent.rc /root/ \
    && mkdir -p /data/rtorrent/watch \
    && mkdir -p /data/rtorrent/incomplete \
    && mkdir -p /data/rtorrent/complete \
    && mkdir -p /data/rtorrent/torrent
echo '[info] rtorrent fixed.'
