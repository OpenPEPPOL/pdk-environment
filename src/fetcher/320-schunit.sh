#!/bin/sh

set -e
set -u

VERSION=${SCHUNIT_VERSION}

# Download
download schunit-cli-${VERSION}-dist.tar.gz \
  https://github.com/schunit/schunit/releases/download/v${VERSION}/schunit-cli-${VERSION}-dist.tar.gz

# Prepare folder
mkdir -p $DIST/lib/schunit

# Unzip content
tar xzf $TMP/schunit-cli-${VERSION}-dist.tar.gz -C $DIST/lib/schunit
