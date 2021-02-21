#!/bin/bash
cd `dirname $0`
$(aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION)
docker-compose -f ../docker-compose.yml -f ../docker-compose.prod.yml pull
