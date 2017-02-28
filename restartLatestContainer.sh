#!/usr/bin/env bash

container=$(docker ps -a | grep poste.io | awk '{print $1}'| head -1)

echo "trying to restart $container"
docker restart $container
