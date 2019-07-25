#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
IMAGE="justb4/jmeter:5.1.1"

# Finally run
docker stop ${NAME} > /dev/null 2>&1
docker rm ${NAME} > /dev/null 2>&1
docker run --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@
