#!/bin/sh

set -e
set -u


VERSION=${JRUBY_VERSION:-"9.2.14.0"}

# Download
download jruby-dist-${VERSION}-bin.zip \
  https://repo1.maven.org/maven2/org/jruby/jruby-dist/${VERSION}/jruby-dist-${VERSION}-bin.zip

# Make sure there are no existing jruby folders
test ! -e $DIST/lib/jruby || rm -rf $DIST/lib/jruby

# Unzip jruby
mkdir -p $DIST/lib
unzip -qo $TMP/jruby-dist-${VERSION}-bin.zip -d $DIST/lib
mv $DIST/lib/jruby-${VERSION} $DIST/lib/jruby
