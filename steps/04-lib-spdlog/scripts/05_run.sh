#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ROOT_DIR="$SCRIPT_DIR/.."
BUILD_DIR="$ROOT_DIR/build"
APP="app"

cd "$ROOT_DIR"

echo "App running ------------------------------------------------------------"
"$BUILD_DIR/$APP" 
echo "App return: $?"
