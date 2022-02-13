#!/bin/bash

mkdir -p /root/rtorrent/flood_db \
    && cp -n /static/config/flood.db /root/rtorrent/flood_db/users.db
sed -i "s|\.\/server\/db\/|\/root\/rtorrent\/flood_db|g" '/app/flood/config.js'
sed -i "s|127\.0\.0\.1|0\.0\.0\.0|g" '/app/flood/config.js'
sed -i "s|3000|$FLOOD_PORT|g" '/app/flood/config.js'
echo '[info] flood fixed.'
