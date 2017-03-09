#!/bin/bash

DOCKER_MANTAINER_NAME=gciotto
DOCKER_NAME=alarm-database-docker
DOCKER_RUN_NAME=alarm-database-docker-container
DOCKER_VOLUME_NAME=alarm-database-volume

POSTGRES_USER=lnls_alarm_user
POSTGRES_PASSWORD=controle
POSTGRES_DB=lnls_alarms
POSTGRES_PORT=5432
PGDATA=/var/lib/postgresql/data/alarm-db

NETWORK_ID=alarm-server-internal-network


