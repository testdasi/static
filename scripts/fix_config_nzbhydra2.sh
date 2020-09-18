#!/bin/bash

mkdir -p /etc/nzbhydra2 \
    && cp -n /static/config/nzbhydra.yml /etc/nzbhydra2/
sed -i "s|port: 5076|port: $HYDRA_PORT|g" '/etc/nzbhydra2/nzbhydra.yml'
sed -i "s|127\.0\.0\.1:8080|127\.0\.0\.1:$SAB_PORT_A|g" '/etc/nzbhydra2/nzbhydra.yml'
echo '[info] nzbhydra2 fixed.'
