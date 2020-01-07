#!/bin/bash
#openssl genrsa -out portainer.key 2048
#openssl ecparam -genkey -name secp384r1 -out portainer.key
#openssl req -new -x509 -sha256 -key portainer.key -out portainer.crt -days 3650
docker run -d -p 9000:9000 -p 8000:8000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v /data:/data portainer/portainer -H unix:///var/run/docker.sock



