#!/bin/bash

set -a
set -e
set -u

source env-vars.sh

./build-volume.sh

DOCKER_VOLUMES=$(docker network ls | grep ${NETWORK_ID})
if [ -z "${DOCKER_VOLUMES}" ]; then
    docker network create ${NETWORK_ID}
fi

docker build -t ${DOCKER_MANTAINER_NAME}/${DOCKER_NAME} .
