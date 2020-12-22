#!/bin/sh

set -e
set -u


# Download
download amazon-corretto-8-x64-linux-jdk.tar.gz \
  https://corretto.aws/downloads/latest/amazon-corretto-8-x64-linux-jdk.tar.gz

# Prepare folder
mkdir -p $DIST/lib/corretto

# Unzip content
tar -zxf $TMP/amazon-corretto-8-x64-linux-jdk.tar.gz --strip 1 -C $DIST/lib/corretto
