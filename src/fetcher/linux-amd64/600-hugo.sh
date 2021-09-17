#!/bin/sh

set -e
set -u


VERSION=${HUGO_VERSION:-"0.88.1"}

# Download
download hugo_${VERSION}_Linux-64bit.tar.gz \
  https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz

# Prepare folder
mkdir -p $DIST/lib/hugo

# Unzip content
tar xzf $TMP/hugo_${VERSION}_Linux-64bit.tar.gz -C $DIST/lib/hugo