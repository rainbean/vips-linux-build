#!/usr/bin/env bash

echo "Build libvips"
VIPS_VERSION=8.13.3
wget -q https://github.com/libvips/libvips/releases/download/v${VIPS_VERSION}/vips-${VIPS_VERSION}.tar.gz
tar xf vips-${VIPS_VERSION}.tar.gz
cd vips-${VIPS_VERSION}
meson build \
    -Ddeprecated=false \
    -Dintrospection=false \
    -Dfontconfig=disabled \
    -Dpangocairo=disabled \
    -Dpdfium=disabled \
    -Dquantizr=disabled \
    -Dmodules=disabled \
    -Dopenjpeg=enabled \
    -Djpeg-xl=enabled
meson compile -C build
meson install -C build