#!/usr/bin/env bash

cpu_cores="$(grep -c processor /proc/cpuinfo)"

mkdir -p build
pushd build

arch -arm64 cmake -DCMAKE_TOOLCHAIN_FILE=./conan/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=gcc-12 -DCMAKE_CXX_COMPILER=g++-12 -G Ninja ../
#cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF -G Ninja ../
cmake --build . -j 8

popd
