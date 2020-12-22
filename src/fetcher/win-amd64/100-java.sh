#!/bin/sh

set -e
set -u


# win64
mkdir -p $DIST/lib

download amazon-corretto-8-x64-windows-jre.zip \
  https://corretto.aws/downloads/latest/amazon-corretto-8-x64-windows-jre.zip

test ! -e $DIST/lib/corretto || rm -rf $DIST/lib/corretto

unzip -qo $TMP/amazon-corretto-8-x64-windows-jre.zip -d $DIST/lib
mv $DIST/lib/jre8 $DIST/lib/corretto