#!/usr/bin/env bash

echo "Install latest compatible cmake"
CMAKE_VERSION=3.25.0
wget -q https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}-linux-x86_64.tar.gz
tar xf cmake-${CMAKE_VERSION}-linux-x86_64.tar.gz --strip-components=1 -C /usr