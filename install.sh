#!/bin/bash -x

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
  source ${os}.sh
  for tool in ${tools[@]}; do
    echo Installing ${tool}...
    install_${tool}
    echo $tool installed.
    echo
  done
  popd
}

install
