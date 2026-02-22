#!/usr/bin/env bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
LIBS_DIR="$SCRIPT_DIR/../libs"

VCPKG_DIR="$LIBS_DIR/vcpkg"
VCPKG_TAG="$(<"$SCRIPT_DIR/vcpkg_version.confs.txt" 2>/dev/null || true)"
VCPKG_TAG="${VCPKG_TAG:-2026.01.16}"
echo "VCPKG_VERSION_TAG: $VCPKG_TAG"

mkdir -p "$LIBS_DIR"

if [ ! -d "$VCPKG_DIR" ]; then
    echo "Manager vcpkg cloning into libs/ ..."
    git clone https://github.com/microsoft/vcpkg.git --depth 1 --branch "$VCPKG_TAG" "$VCPKG_DIR"

    cd "$VCPKG_DIR"
    "$VCPKG_DIR/bootstrap-vcpkg.sh"
else
    echo "Manager vcpkg already exists."
fi

echo "Done."
