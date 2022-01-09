#!/bin/sh

# configs

wget -qO- $CONFIGXRAY | sed -e "s/\$AUUID/$AUUID/g" -e "s/\$PORT/$PORT/g" >/xray.json

# start

/xray -config /xray.json