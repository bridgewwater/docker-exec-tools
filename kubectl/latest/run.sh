#!/bin/sh
#
# Run docker-compose in a container
#
# This script will attempt to mirror the host paths by using volumes for the
# following paths:
#   * $(pwd)
#   * $(dirname $COMPOSE_FILE) if it's set
#   * $HOME if it's set
#
# You can add additional volumes (or any docker run options) using
# the $COMPOSE_OPTIONS environment variable.
#


set -e

# tags see https://hub.docker.com/r/bitnami/kubectl/tags
VERSION="latest"
IMAGE="bitnami/kubectl:$VERSION"
DOCKER_API_VERSION="1.37"


# Setup options for connecting to docker host
if [ -z "$DOCKER_HOST" ]; then
    DOCKER_HOST="/var/run/docker.sock"
fi
if [ -S "$DOCKER_HOST" ]; then
    DOCKER_ADDR="-v $DOCKER_HOST:$DOCKER_HOST -e DOCKER_HOST"
else
    DOCKER_ADDR="-e DOCKER_API_VERSION=${DOCKER_API_VERSION}"
fi


# Setup volume mounts for compose config and context
VOLUMES="/var/run/docker.sock:/var/run/docker.sock"

# Only allocate tty if we detect one
if [ -t 0 -a -t 1 ]; then
        DOCKER_RUN_OPTIONS="$DOCKER_RUN_OPTIONS -t"
fi

# Always set -i to support piped and terminal input in run/exec
DOCKER_RUN_OPTIONS="$DOCKER_RUN_OPTIONS -i"


# Handle userns security
if [ ! -z "$(docker info 2>/dev/null | grep userns)" ]; then
    DOCKER_RUN_OPTIONS="$DOCKER_RUN_OPTIONS --userns=host"
fi

# echo "exec docker run --rm $DOCKER_RUN_OPTIONS $DOCKER_ADDR $COMPOSE_OPTIONS $VOLUMES \"$(pwd)\" $IMAGE \"$@\""
exec docker run --rm $DOCKER_RUN_OPTIONS $DOCKER_ADDR $COMPOSE_OPTIONS $VOLUMES -w "$(pwd)" $IMAGE "$@"
