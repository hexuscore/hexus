#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-hexuspay/hexusd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/hexusd docker/bin/
cp $BUILD_DIR/src/hexus-cli docker/bin/
cp $BUILD_DIR/src/hexus-tx docker/bin/
strip docker/bin/hexusd
strip docker/bin/hexus-cli
strip docker/bin/hexus-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
