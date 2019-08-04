#!/bin/sh

echo "Receiving root hints..."
curl -o /etc/unbound/root.hints https://www.internic.net/domain/named.cache

exec /usr/sbin/unbound -d
