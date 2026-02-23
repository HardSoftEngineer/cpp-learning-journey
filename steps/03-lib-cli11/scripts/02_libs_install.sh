#!/usr/bin/env bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ROOT_DIR="$SCRIPT_DIR/.."
LIBS_DIR="$ROOT_DIR/libs"
VCPKG_CONFS="$ROOT_DIR/vcpkg.json"
VCPKG_DIR="$LIBS_DIR/vcpkg"
VCPKG_INSTALLED_DIR="$LIBS_DIR/vcpkg_installed"


echo "Start..."

if [ ! -d "$VCPKG_DIR" ]; then
    echo "Error, manager vcpkg don't exists path: $VCPKG_DIR, exit -1"
    exit -1
fi

echo "VCPKG_CONFS: $VCPKG_CONFS"
cat "$VCPKG_CONFS"

echo "VCPKG_DIR: $VCPKG_DIR"
cd "$VCPKG_DIR"

echo "Installing dependencies..."
# "$VCPKG_DIR/vcpkg" install

"$VCPKG_DIR/vcpkg" install \
  --x-manifest-root="$ROOT_DIR" \
  --x-install-root="$VCPKG_INSTALLED_DIR"

echo "Done."
