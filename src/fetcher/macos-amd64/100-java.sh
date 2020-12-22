#!/bin/sh

set -e
set -u


# maxos64
mkdir -p $DIST/lib/corretto

download amazon-corretto-8-x64-macos-jdk.tar.gz \
  https://corretto.aws/downloads/latest/amazon-corretto-8-x64-macos-jdk.tar.gz

tar -zxf $TMP/amazon-corretto-8-x64-macos-jdk.tar.gz --strip 3 -C $DIST/lib/corretto
rm -f $DIST/lib/corretto/libjli.dylib