FROM mhart/alpine-node:latest
MAINTAINER Rafael Kato "rafael@kato.io"

RUN apk add --update ffmpeg libtool libltdl libpng libpng-dev jpeg jpeg-dev libjasper libstdc++ zlib libgomp libxml2 libltdl libgcc musl lcms2 && \
    apk add --update graphicsmagick --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

CMD "node"
