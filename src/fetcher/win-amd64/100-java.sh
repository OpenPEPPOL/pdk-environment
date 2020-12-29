#!/bin/sh

set -e
set -u


VERSION=${JAVA_VERSION:-"8u275-b01"}

# Download
download adoptopenjdk-x64-windows-jre-${VERSION}.zip \
  https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk${VERSION}/OpenJDK8U-jre_x64_windows_hotspot_$(echo $VERSION | sed "s:\-::g").zip


# Prepare folder
mkdir -p $DIST/lib
test ! -e $DIST/lib/adoptopenjdk || rm -rf $DIST/lib/adoptopenjdk

# Unzip content
unzip -qo $TMP/adoptopenjdk-x64-windows-jre-${VERSION}.zip -d $DIST/lib
mv $DIST/lib/jdk${VERSION}-jre $DIST/lib/adoptopenjdk