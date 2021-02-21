#!/bin/bash
docker-compose -f /opt/node-app/docker-compose.yml -f /opt/node-app/docker-compose.prod.yml down --rmi all --volumes --remove-orphans
#rm -rf /opt/node-app/*

