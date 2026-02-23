#!/usr/bin/env bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
LIBS_DIR="$SCRIPT_DIR/../libs"
VCPKG_DIR="$LIBS_DIR/vcpkg"


if [ ! -d "$VCPKG_DIR" ]; then
    echo "Error, manager vcpkg don't exists, exit -1"
    exit -1
fi

echo "Git vcpkg tag:"
git tag

echo "Commit:"
git rev-parse HEAD
