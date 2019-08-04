# unbound
unbound - simple recursive caching dns server

This container is based on alpine:edge and is configured against primary root dns servers with qname minimisation on.

Usage:
  docker run -d --restart always --name unbound -p 53:53 -p 53:53/udp artee666/unbound

docker-compose.yml:

services:
  unbound:
      container_name: unbound
      image: artee666/unbound
      ports:
        - 53:53/tcp
        - 53:53/udp
      restart:always
