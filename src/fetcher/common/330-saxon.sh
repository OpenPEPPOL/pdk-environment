#!/bin/sh

set -e
set -u


VERSION=${SAXON_VERSION:-9-9-1-8}

# Create target folder
mkdir -p $DIST/lib/saxon

download saxon-$VERSION.zip \
  https://deac-ams.dl.sourceforge.net/project/saxon/Saxon-HE/9.9/SaxonHE${VERSION}J.zip

# Unzip content
unzip -qo $TMP/saxon-$VERSION.zip -d $DIST/lib/saxon