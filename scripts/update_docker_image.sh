#!/bin/bash
cd `dirname $0`
AWS_DEFAULT_REGION=`curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone | sed -e 's/.$//g'`
$(aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION)
docker-compose -f ../docker-compose.yml -f ../docker-compose.prod.yml pull
