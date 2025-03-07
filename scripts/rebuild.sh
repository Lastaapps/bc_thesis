#!/usr/bin/env bash

script_name=$0
script_full_path=$(dirname "$0")

set -e

rm -rf build

# So build extends local user ownership in case docker is run as root.
mkdir build

"${script_full_path}/./build.sh" "$1"

