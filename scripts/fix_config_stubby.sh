#!/bin/bash

mkdir -p /etc/stubby \
    && cp -n /static/config/stubby.yml /etc/stubby/
sed -i "s|  - 0\.0\.0\.0\@53|  - 0\.0\.0\.0\@$DNS_PORT|g" '/config/stubby/stubby.yml'
echo '[info] stubby fixed.'
