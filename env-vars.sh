#!/bin/bash

# Essential environment variables

DOCKER_MANTAINER_NAME=gciotto
DOCKER_NAME=alarm-postgres-db
DOCKER_RUN_NAME=alarm-postgres-db
DOCKER_VOLUME_NAME=alarm-database-volume

# Postgres variables

POSTGRES_USER=lnls_alarm_user
POSTGRES_PASSWORD=controle
POSTGRES_DB=lnls_alarms
POSTGRES_PORT=5432
PGDATA=/var/lib/postgresql/data/alarm-db

NETWORK_ID=alarm-server-internal-network


