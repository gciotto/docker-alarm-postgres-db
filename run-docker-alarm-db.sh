#!/bin/bash

set -a
set -e
set -u

source env-vars.sh

CONTAINERS=$(docker ps -a | grep ${DOCKER_RUN_NAME})

if [ ! -z "$CONTAINERS" ]; then
    docker stop ${DOCKER_RUN_NAME}
    docker rm ${DOCKER_RUN_NAME}
fi

docker run -d --name=${DOCKER_RUN_NAME} -e POSTGRES_USER=${POSTGRES_USER} \
    -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} -e POSTGRES_DB=${POSTGRES_DB} \
    -e PGDATA=${PGDATA} -p ${POSTGRES_PORT}:${POSTGRES_PORT} --network=${NETWORK_ID} \
    --volumes-from=${DOCKER_VOLUME_NAME} ${DOCKER_MANTAINER_NAME}/${DOCKER_NAME}


