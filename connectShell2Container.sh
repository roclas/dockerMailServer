#!/usr/bin/env bash

container=$(docker ps | grep poste.io | awk '{print $1}')
echo "connecting to $container"
docker exec -it $container bash
