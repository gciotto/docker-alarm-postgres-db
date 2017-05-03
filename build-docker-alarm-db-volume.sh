#!/bin/bash

source env-vars.sh

# Create volume container
DOCKER_DATA_CONTAINERS=$(docker ps -a | grep ${DOCKER_VOLUME_NAME})

if [ -z "${DOCKER_DATA_CONTAINERS}" ]; then
    docker create -v ${PGDATA} --name ${DOCKER_VOLUME_NAME} postgres
fi
