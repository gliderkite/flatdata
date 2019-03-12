#!/bin/sh
set -ex

cmake ../src/flatdata-cpp \
    -DCMAKE_C_COMPILER=${C_COMPILER} \
    -DCMAKE_CXX_COMPILER=${CXX_COMPILER} \
    -DCMAKE_CXX_FLAGS="-Wall -pedantic -Wextra"
make
make test
