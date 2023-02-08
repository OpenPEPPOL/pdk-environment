#!/bin/sh

set -e
set -u


VERSION=${JAVA_VERSION}

# Download
download adoptopenjdk-x64-mac-jre-${VERSION}.tar.gz \
  https://github.com/adoptium/temurin17-binaries/releases/download/jdk-$(echo $VERSION | sed "s:+:%2B:g")/OpenJDK17U-jre_x64_mac_hotspot_$(echo $VERSION | sed "s:+:_:g").tar.gz

# Prepare folder
mkdir -p $DIST/lib/adoptopenjdk

# Unzip content
tar -zxf $TMP/adoptopenjdk-x64-mac-jre-${VERSION}.tar.gz --strip 3 -C $DIST/lib/adoptopenjdk
rm -f $DIST/lib/adoptopenjdk/libjli.dylib