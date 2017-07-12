#!/bin/sh

PKG='dist-upgrade'

if [ ! -z "${1// }" ] ; then
  if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
    echo "$PKG usage:"
    echo "$PKG    # update global Node and npm"
    echo "$PKG -h # show this help"
    exit 0
  fi
fi

# NPX=`which npx`
# if [ -z "$NPX" ] ; then
  # NPX=`npm bin`/npx
# fi
# if [ -z "$NPX" ] ; then
  # exit 1
# fi

# $NPX n latest && npm i -g npm@next

WHICH=`which npx`
NPMBIN=`npm bin`/npx
NPX=${WHICH:-$NPMBIN}
$NPX n latest && npm i -g npm@next
