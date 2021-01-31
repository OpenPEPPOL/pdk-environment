#!/bin/sh

set -e
set -u


VERSION=${JAVA_VERSION:-"8u282-b08"}

# Download
download adoptopenjdk-x64-linux-jre-${VERSION}.tar.gz \
  https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk${VERSION}/OpenJDK8U-jre_x64_linux_hotspot_$(echo $VERSION | sed "s:\-::g").tar.gz

# Prepare folder
mkdir -p $DIST/lib/adoptopenjdk

# Unzip content
tar -zxf $TMP/adoptopenjdk-x64-linux-jre-${VERSION}.tar.gz --strip 1 -C $DIST/lib/adoptopenjdk
