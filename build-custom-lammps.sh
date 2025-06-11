#!/bin/bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd cmake
mkdir build
cd build
cmake -G Ninja -C ../presets/most.cmake -DCMAKE_BUILD_TYPE=Release .
ninja
cd "$SCRIPT_DIR"
