#!/usr/bin/env bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$SCRIPT_DIR"

echo "== Compiler versions =="
g++ --version
cmake --version

echo "== Creating build directory =="
mkdir -p build

echo "== Configuring project =="
cmake -S . -B build \
    -G Ninja \
    -DCMAKE_BUILD_TYPE=Debug

echo "== Building project =="
cmake --build build

echo "== Done =="
