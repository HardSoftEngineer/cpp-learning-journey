#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ROOT_DIR="$SCRIPT_DIR/.."
BUILD_DIR="$ROOT_DIR/build"
APP="app"


echo "App running ------------------------------------------------------------"
"$BUILD_DIR/$APP" --confs "$ROOT_DIR/cofns/dev.json" -l "$ROOT_DIR" --mode "develop"
