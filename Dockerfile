# Docker container for BEAST Alarm Server's PostgreeSQL

# Author: Gustavo Ciotto Pinton
# LNLS - Brazilian Synchrotron Light Source Laboratory

FROM postgres:latest

MAINTAINER Gustavo Ciotto

COPY sql/*.sql /docker-entrypoint-initdb.d/
