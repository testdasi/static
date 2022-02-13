#!/bin/bash

mkdir -p /root/transmission \
    && cp -n /static/config/transmission.json /root/transmission/settings.json \
    && mkdir -p /data/transmission/watch \
    && mkdir -p /data/transmission/incomplete \
    && mkdir -p /data/transmission/complete
echo '[info] transmission fixed.'
