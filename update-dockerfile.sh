#!/usr/bin/env bash

source ./get-version.sh

echo $DEBIAN_MONO_VERSION
echo $MONO_VERSION

sed -i \
    -re "s/^ENV\s+MONO_VERSION\s+(.*)$/ENV MONO_VERSION $MONO_VERSION/" \
     -e "s/^ENV\s+DEBIAN_MONO_VERSION\s+(.*)$/ENV DEBIAN_MONO_VERSION $DEBIAN_MONO_VERSION/" \
     Dockerfile
