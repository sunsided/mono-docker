#!/usr/bin/env bash

source ./update-dockerfile.sh

echo "Using Debian package mono-devel=$DEBIAN_MONO_VERSION of Mono $MONO_VERSION"

echo "Building Docker image ..."
docker build -t sunside/mono:$MONO_VERSION .
#docker tag -f sunside/mono:$MONO_VERSION sunside/mono:latest
