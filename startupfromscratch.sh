#!/usr/bin/env bash

docker run \
    -p 25:25 \
    -p 1080:80 \
    -p 443:443 \
    -p 110:110 \
    -p 143:143 \
    -p 465:465 \
    -p 587:587 \
    -p 993:993 \
    -p 995:995 \
    -v /etc/localtime:/etc/localtime:ro \
    -v data:/data \
    -t analogic/poste.io
