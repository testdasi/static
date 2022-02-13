#!/bin/bash

mkdir -p /root/flood \
    && cp -n /static/config/flood.db /root/flood/users.db
echo '[info] flood fixed.'
