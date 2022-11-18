#!/usr/bin/env bash

echo "Build lcms"
LCMS_VERSION=2.14
wget -q https://github.com/mm2/Little-CMS/releases/download/lcms${LCMS_VERSION}/lcms2-${LCMS_VERSION}.tar.gz -O lcms2.tar.gz
tar xf lcms2.tar.gz
cd lcms2-${LCMS_VERSION}
meson build
meson compile -C build
meson install -C build