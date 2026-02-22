#!/usr/bin/env bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ROOT_DIR="$SCRIPT_DIR/.."
LIBS_DIR="$ROOT_DIR/libs"
VCPKG_CONFS="$ROOT_DIR/vcpkg.json"
VCPKG_DIR="$LIBS_DIR/vcpkg"
VCPKG_INSTALLED_DIR="$LIBS_DIR/vcpkg_installed"
TRIPLET="x64-linux"
BUILD_DIR="$ROOT_DIR/build"
BUILD_TYPE="Release"

echo "Start..."

echo "rm -rf $BUILD_DIR"
rm -rf "$BUILD_DIR"

cmake -S "$ROOT_DIR" -B "$BUILD_DIR" \
  -DCMAKE_TOOLCHAIN_FILE="$VCPKG_DIR/scripts/buildsystems/vcpkg.cmake" \
  -DVCPKG_INSTALLED_DIR="$VCPKG_INSTALLED_DIR" \
  -DVCPKG_TARGET_TRIPLET="$TRIPLET" \
  -DCMAKE_BUILD_TYPE="$BUILD_TYPE"

cmake --build "$BUILD_DIR" --parallel
