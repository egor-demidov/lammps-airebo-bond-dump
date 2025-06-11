#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
BUILD_DIR="$SCRIPT_DIR/cmake/build"

export PATH="$BUILD_DIR:$PATH"
export LAMMPS_POTENTIALS="$SCRIPT_DIR/potentials"

# Comment the line below to disable bond order dumps
export PERFORM_BO_DUMPS=1

# Set the frequency of bond order dumps here (every N time steps)
# Should match the frequency of dumps in LAMMPS
export BO_DUMP_PERIOD=1000
