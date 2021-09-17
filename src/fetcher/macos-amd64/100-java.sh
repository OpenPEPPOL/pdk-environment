#!/bin/sh

set -e
set -u


VERSION=${JAVA_VERSION}

# Download
download adoptopenjdk-x64-mac-jre-${VERSION}.tar.gz \
  https://github.com/adoptium/temurin8-binaries/releases/download/jdk${VERSION}/OpenJDK8U-jre_x64_mac_hotspot_$(echo $VERSION | sed "s:\-::g").tar.gz

# Prepare folder
mkdir -p $DIST/lib/adoptopenjdk

# Unzip content
tar -zxf $TMP/adoptopenjdk-x64-mac-jre-${VERSION}.tar.gz --strip 3 -C $DIST/lib/adoptopenjdk
rm -f $DIST/lib/adoptopenjdk/libjli.dylib