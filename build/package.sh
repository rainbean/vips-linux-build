#!/usr/bin/env bash

target="$work_dir/vips-linux-$(date +%F).tar"

cd /usr/local/bin
tar cf $target vips vipsheader

cd /usr/local/lib
tar rf $target libjpeg.so* libjxl.so* libjxl_threads.so* libopenjp2* libopenslide.so*

cd /usr/local/lib/x86_64-linux-gnu
tar rf $target liblcms2.so* libspng.so* libvips-cpp.so* libvips.so*

cd /usr/lib/x86_64-linux-gnu/
tar rf $target \
    libglib-2.0.so* libgobject-2.0.so* libgmodule-2.0.so* libgio-2.0.so* libexpat.so* libgsf-1.so* \
    libexif.so* libwebpmux.so* libwebpdemux.so* libwebp.so* libtiff.so* libcairo.so* \
    liborc-0.4.so* libxml2.so* libjbig.so* libjpeg.so* libcairo-gobject.so* libpixman-1.so* libpng16* \
    libsqlite3.so* libbrotlidec.so* libbrotlicommon.so* libbrotlienc.so* libicuuc.so* libicudata.so*

gzip $target