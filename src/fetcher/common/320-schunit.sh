#!/bin/sh

set -e
set -u

VERSION=${SCHUNIT_VERSION:-"0.1.0"}

# Download
download schunit-core-${VERSION}-dist.tar.gz \
  https://github.com/schunit/schunit/releases/download/v${VERSION}/schunit-core-${VERSION}-dist.tar.gz

# Prepare folder
mkdir -p $DIST/lib/schunit

# Unzip content
tar xzf $TMP/schunit-core-${VERSION}-dist.tar.gz -C $DIST/lib/schunit
