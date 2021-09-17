#!/bin/sh

set -e
set -u


VERSION=${SCHEMATRON_VERSION}

# Create target folder
mkdir -p $DIST/lib/schematron

download iso-schematron-$VERSION-xslt2.zip \
  https://github.com/Schematron/schematron/releases/download/$VERSION/iso-schematron-xslt2.zip

# Unzip content
unzip -qo $TMP/iso-schematron-$VERSION-xslt2.zip -d $DIST/lib/schematron