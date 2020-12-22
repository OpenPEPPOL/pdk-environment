#!/bin/sh

set -e
set -u

# TODO Stop using Docker image

VERSION=${SCHUNIT_VERSION:-edge}

docker run --rm -i \
    -v $DIST/lib:/work \
    --entrypoint cp \
    schunit/schunit:${VERSION} \
    -r /usr/lib/schunit /work

docker run --rm -i \
    -v $DIST/lib:/work \
    --entrypoint chown \
    schunit/schunit:${VERSION} \
    -R $(id -u).$(id -g) schunit
