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
# - temporary dir mounted at /var/tmp
$oci_runtime run --rm -t \
  -u $(id -u):$(id -g) \
  -v $PWD/build:/data \
  -v $tmpdir:/var/tmp:z \
  libvips-build-linux
