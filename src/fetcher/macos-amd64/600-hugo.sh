#!/bin/sh

set -e
set -u


VERSION=${HUGO_VERSION:-"0.83.1"}

# MacOS
mkdir -p $DIST/lib/hugo

download hugo_${VERSION}_macOS-64bit.tar.gz \
  https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_macOS-64bit.tar.gz

tar xzf $TMP/hugo_${VERSION}_macOS-64bit.tar.gz -C $DIST/lib/hugo
