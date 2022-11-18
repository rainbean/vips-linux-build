#!/usr/bin/env bash

# exit on error
set -e

. variables.sh

# shall be /data in container
work_dir=$(pwd)

# build each library
jobs=('cmake' 'openjpeg' 'lcms' 'libspng' 'mozjpeg' 'highway' 'libjxl' 'openslide' 'libvips')
for task in "${jobs[@]}"
do
    # work on mounted tmp folder
    cd /var/tmp
    . $work_dir/$task.sh
done

# pack package
# cd $work_dir
# . $work_dir/package.sh

