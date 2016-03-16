alpine-node-media
---------------------------------------------------------

This container is built using rafakato/alpine-node as base and adding ffmpeg and GraphicsMagick packages

Example
-------

    $ docker run rafakato/alpine-node-media node --version
    v5.8.0

    $ docker run rafakato/alpine-node-media npm --version
    3.7.3

    $ docker run rafakato/alpine-node-media gm -version
    GraphicsMagick 1.3.23 2015-11-07 Q16 http://www.GraphicsMagick.org/
    Copyright (C) 2002-2015 GraphicsMagick Group.
    Additional copyrights and licenses apply to this software.
    See http://www.GraphicsMagick.org/www/Copyright.html for details.

    Feature Support:
      Native Thread Safe       yes
      Large Files (> 32 bit)   yes
      Large Memory (> 32 bit)  yes
      BZIP                     no
      DPS                      no
      FlashPix                 no
      FreeType                 no
      Ghostscript (Library)    no
      JBIG                     no
      JPEG-2000                yes
      JPEG                     yes
      Little CMS               no
      Loadable Modules         yes
      OpenMP                   yes (201307)
      PNG                      yes
      TIFF                     yes
      TRIO                     no
      UMEM                     no
      WebP                     no
      WMF                      no
      X11                      no
      XML                      yes
      ZLIB                     yes

    Host type: x86_64-alpine-linux-musl

    Configured using the command:
      ./configure  '--build=x86_64-alpine-linux-musl' '--host=x86_64-alpine-linux-musl' '--prefix=/usr' '--sysconfdir=/etc' '--mandir=/usr/share/man' '--infodir=/usr/share/info' '--localstatedir=/var' '--enable-shared' '--disable-static' '--with-modules' '--with-threads' '--with-gs-font-dir=/usr/share/fonts/Type1' '--with-quantum-depth=16' 'build_alias=x86_64-alpine-linux-musl' 'host_alias=x86_64-alpine-linux-musl' 'CC=gcc' 'CFLAGS=-Os -fomit-frame-pointer' 'LDFLAGS=-Wl,--as-needed' 'CPPFLAGS=-Os -fomit-frame-pointer' 'CXXFLAGS=-Os -fomit-frame-pointer'

    Final Build Parameters:
      CC       = gcc
      CFLAGS   = -fopenmp -Os -fomit-frame-pointer -Wall
      CPPFLAGS = -Os -fomit-frame-pointer -I/usr/include/libxml2
      CXX      = x86_64-alpine-linux-musl-g++
      CXXFLAGS = -Os -fomit-frame-pointer
      LDFLAGS  = -Wl,--as-needed
      LIBS     = -lz -lltdl -lm -lgomp -lpthread

    $ docker run rafakato/alpine-node-media ffmpeg -version
    ffmpeg version 2.8.5 Copyright (c) 2000-2016 the FFmpeg developers
    built with gcc 5.3.0 (Alpine 5.3.0)
    configuration: --prefix=/usr --enable-avresample --enable-avfilter --enable-gnutls --enable-gpl --enable-libmp3lame --enable-librtmp --enable-libvorbis --enable-libvpx --enable-libxvid --enable-libx264 --enable-libx265 --enable-libtheora --enable-libv4l2 --enable-postproc --enable-pic --enable-pthreads --enable-shared --enable-x11grab --disable-stripping --disable-static --enable-vaapi --enable-libopus --disable-debug
    libavutil      54. 31.100 / 54. 31.100
    libavcodec     56. 60.100 / 56. 60.100
    libavformat    56. 40.101 / 56. 40.101
    libavdevice    56.  4.100 / 56.  4.100
    libavfilter     5. 40.101 /  5. 40.101
    libavresample   2.  1.  0 /  2.  1.  0
    libswscale      3.  1.101 /  3.  1.101
    libswresample   1.  2.101 /  1.  2.101
    libpostproc    53.  3.100 / 53.  3.100

Caveats
-------

As Alpine Linux uses musl, you may run into some issues with environments
expecting glibc-like behaviour (for example, Kubernetes). Some of these issues
are documented here:

- http://gliderlabs.viewdocs.io/docker-alpine/caveats/
- https://github.com/gliderlabs/docker-alpine/issues/8
