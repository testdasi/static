#!/bin/bash

### Flusing ruleset and add missing route ###
echo '[info] Flusing ruleset'
nft flush ruleset
add_route="$(ip route | grep 'default')" ; add_route="$(sed "s|default|$HOST_NETWORK|g" <<< $add_route)"
ip route add $add_route
echo "[info] Added route $add_route"
