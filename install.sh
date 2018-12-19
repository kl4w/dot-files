#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

ostype() {
  case "$OSTYPE" in
    solaris*) export os=solaris ;;
    darwin*)  export os=osx ;;
    linux*)   export os=linux ;;
    bsd*)     export os=bsd ;;
    msys*)    export os=windows ;;
    *)        echo "unknown: $OSTYPE" && exit 1 ;;
  esac
}

install() {
  echo $OSTYPE
  ostype
  pushd $DIR/install
  . ${os}.sh install
  popd
}

install
