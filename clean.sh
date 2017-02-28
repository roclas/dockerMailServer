#!/usr/bin/env bash

docker ps | grep poste.io | awk '{print $1}' | xargs docker stop
docker ps -a | grep poste.io | awk '{print $1}' | xargs docker rm 
docker ps -a | grep poste.io | awk '{print $1}' | xargs docker rm 
docker images | grep poste.io | awk '{print $3}' | xargs docker rmi
docker images | grep none | awk '{print $3}' | xargs docker rmi
