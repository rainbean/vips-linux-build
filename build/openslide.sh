#!/usr/bin/env bash

echo "Build openslide"
OPENSLIDE_VERSION=2022-11-18
wget -q https://github.com/rainbean/openslide/releases/download/${OPENSLIDE_VERSION}/openslide-3.4.1.tar.gz
tar xf openslide-3.4.1.tar.gz
cd openslide-3.4.1
autoreconf -fi
./configure
make -j 4
make install/strip