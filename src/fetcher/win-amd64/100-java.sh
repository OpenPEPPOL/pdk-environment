#!/bin/sh

set -e
set -u


VERSION=${JAVA_VERSION}

# Download
download adoptopenjdk-x64-windows-jre-${VERSION}.zip \
  https://github.com/adoptium/temurin11-binaries/releases/download/jdk-$(echo $VERSION | sed "s:+:%2B:g")/OpenJDK11U-jre_x64_windows_hotspot_$(echo $VERSION | sed "s:+:_:g").zip

# Prepare folder
mkdir -p $DIST/lib
test ! -e $DIST/lib/adoptopenjdk || rm -rf $DIST/lib/adoptopenjdk

# Unzip content
unzip -qo $TMP/adoptopenjdk-x64-windows-jre-${VERSION}.zip -d $DIST/lib
mv $DIST/lib/jdk-${VERSION}-jre $DIST/lib/adoptopenjdk