#!/usr/bin/env bash

docker ps | grep poste.io| awk '{print $1}' | xargs docker stop
