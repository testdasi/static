#!/bin/bash

mkdir -p /config/nzbhydra2 \
    && cp -n /static/config/nzbhydra.yml /config/nzbhydra2/
sed -i "s|port: 5076|port: $HYDRA_PORT|g" '/config/nzbhydra2/nzbhydra.yml'
sed -i "s|127\.0\.0\.1:8080|127\.0\.0\.1:$SAB_PORT_A|g" '/config/nzbhydra2/nzbhydra.yml'
echo '[info] nzbhydra2 fixed.'
