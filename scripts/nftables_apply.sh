#!/bin/bash

### Add rules ###
echo '[info] Apply rules'
nft -f /nftables.rules
rm /nftables.rules
