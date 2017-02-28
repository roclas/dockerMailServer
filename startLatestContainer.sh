#!/usr/bin/env bash

container=$(docker ps -a | grep poste.io | awk '{print $1}'| head -1)
echo "restarting $container"
docker restart $container
