#!/bin/bash

REDMINE_VERSION=${1:-5.0-alpine3.18}

# wget -O /volume1/docker/docker-compose/Redmine/MyRedmine/dockerfile/docker-entrypoint.sh https://raw.githubusercontent.com/chris85618/redmine/master/docker-entrypoint.sh
docker build --build-arg="REDMINE_VERSION=${REDMINE_VERSION}" -t chris85618/my-redmine:${REDMINE_VERSION} $(dirname ${BASH_SOURCE[0]})/dockerfile
