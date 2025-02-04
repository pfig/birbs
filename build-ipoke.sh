#!/bin/bash

set -e

CWD=`pwd`

IPOKE_PKG="ipoke_v.3_test1.zip"
IPOKE_URL="https://puredata.info/Members/ipoke/${IPOKE_PKG}/at_download/file"
IPOKE_DIR="ipoke~"

if [ ! -z "$1" ]; then
  IPOKE_PKG="$1"
fi

if [ ! -f "${IPOKE_PKG}" ]; then
  DOWNLOAD_ARGS="${IPOKE_PKG} ${IPOKE_URL}"
  HAVE_CURL=`which curl`
  if [ $? -eq 0 ]; then
    DOWNLOAD_CMD="curl -s -o"
  else
    HAVE_WGET=`which wget`
    if [ $? -eq 0 ]; then
      DOWNLOAD_CMD="wget -q -O"
    else
      echo "Please download ipoke~ manually."
      exit 1
    fi
  fi
  echo "Downloading ipoke~..."
  eval "${DOWNLOAD_CMD} ${DOWNLOAD_ARGS}"
fi

echo "Expanding ipoke~ archive..."
unzip -q "${IPOKE_PKG}"

cd "${IPOKE_DIR}"

echo "Removing pre-packaged binaries..."
rm -f bin/* bin64/*

echo "Applying patches..."
patch -l -p0 < "${CWD}/ipoke~.patch" >/dev/null 2>&1

echo "Building external..."
cd src
make >/dev/null 2>&1

echo "Copying external binary..."
cd "${CWD}"
cp "${IPOKE_DIR}"/bin64/* . >/dev/null 2>&1

echo "Cleaning up..."
rm -rf "${IPOKE_DIR}"

echo "Pure Data ipoke~ external built."
