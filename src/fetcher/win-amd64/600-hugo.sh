#!/bin/sh

set -e
set -u


VERSION=${HUGO_VERSION:-"0.74.2"}

# Win64
mkdir -p $DIST/lib/hugo

download hugo_${VERSION}_Windows-64bit.zip \
  https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Windows-64bit.zip

unzip -qo $TMP/hugo_${VERSION}_Windows-64bit.zip -d $DIST/lib/hugo