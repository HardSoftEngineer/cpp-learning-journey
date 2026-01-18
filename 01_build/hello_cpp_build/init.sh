#!/usr/bin/env bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$SCRIPT_DIR"

echo "== Updating system =="
sudo apt update
sudo apt upgrade -y

echo "== Installing build tools =="
sudo apt install -y \
    build-essential \
    gcc g++ \
    cmake \
    ninja-build \
    gdb \
    valgrind \
    clang-format \
    clang-tidy \
    pkg-config

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
