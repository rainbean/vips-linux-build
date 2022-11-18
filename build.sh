#!/usr/bin/env bash

# Default arguments
tmpdir="/var/tmp/vips"

# Ensure temporary dir exists
mkdir -p $tmpdir

# Build a machine image with all the required build tools pre-installed
docker build -t libvips-build-linux container

# Run build scripts inside a container with the:
# - current UID and GID inherited
# - build dir mounted at /data
docker run --rm -t \
  -v $PWD/build:/data \
  libvips-build-linux
