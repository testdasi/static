#!/bin/bash

mkdir -p /root/flood/db \
    && cp -n /static/config/flood.db /root/flood/db/users.db
echo '[info] flood fixed.'
