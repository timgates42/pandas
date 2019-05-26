#!/bin/bash

set -euxo pipefail

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOCKER_IMAGE_NAME="pandas"

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    *)    # unknown option
    POSITIONAL+=("$1") # save it in an array for later
    shift # past argument
    ;;
esac
done
set -- ${POSITIONAL[@]+"${POSITIONAL[@]}"} # restore positional parameters

VERSION="latest"
docker build \
    --tag "${DOCKER_IMAGE_NAME}:${VERSION}" \
    -f Dockerfile.build .
