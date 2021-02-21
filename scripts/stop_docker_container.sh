#!/bin/bash
cd `dirname $0`
docker-compose -f ../docker-compose.yml -f ../docker-compose.prod.yml down --rmi all --volumes --remove-orphans
#rm -rf /opt/node-app/*

