#!/bin/bash

VERSION=$(cat VERSION.txt)
CWD=$(pwd)
BASE=$(basename $CWD)

VALID_TARGETS=("desktop" "organelle")
if [ ! -z "$1" ]; then
  TARGETS=($1)
else
  TARGETS=${VALID_TARGETS[@]}
fi

for TARGET in $TARGETS; do
  case $TARGET in
    "desktop" | "organelle")
      echo "Packaging for ${TARGET}..."
      cd ..
      zip -q -r "${BASE}/birbs-${VERSION}-${TARGET}.zip" ${BASE}/ -i@"${BASE}/manifest-${TARGET}.lst"
      cd "${CWD}"
      ;;
    *)
      echo "Valid targets are ${VALID_TARGETS[@]}."
  esac
done

echo "Distributions packaged."
