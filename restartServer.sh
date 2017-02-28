#!/usr/bin/env bash

container=$(docker ps | grep poste.io | awk '{print $1}')
echo "connecting to $container"
docker exec -i $container /opt/poste.io/poste.io-dxp-digital-enterprise-7.0-ga1/tomcat-8.0.32/bin/shutdown.sh 
sleep 30
docker exec -i $container /opt/poste.io/poste.io-dxp-digital-enterprise-7.0-ga1/tomcat-8.0.32/bin/startup.sh 
