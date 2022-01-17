#!/bin/sh

set -e
set -u


VERSION=${JAVA_VERSION}

# Download
download adoptopenjdk-x64-linux-jre-${VERSION}.tar.gz \
  https://github.com/adoptium/temurin11-binaries/releases/download/jdk-$(echo $VERSION | sed "s:+:%2B:g")/OpenJDK11U-jre_x64_linux_hotspot_$(echo $VERSION | sed "s:+:_:g").tar.gz

# Prepare folder
mkdir -p $DIST/lib/adoptopenjdk

# Unzip content
tar -zxf $TMP/adoptopenjdk-x64-linux-jre-${VERSION}.tar.gz --strip 1 -C $DIST/lib/adoptopenjdk
