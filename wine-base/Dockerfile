FROM ubuntu:18.04

ARG DEBIAN_FRONTEND="noninteractive"

RUN BUILD_DEPENDENCIES="\
  software-properties-common \
  wget" \
  && dpkg --add-architecture i386 \
  && apt-get update \
  && apt-get install -y \
    winbind \
    $BUILD_DEPENDENCIES \
    && wget https://dl.winehq.org/wine-builds/Release.key -O - | apt-key add - \
    && apt-add-repository https://dl.winehq.org/wine-builds/ubuntu \
    && apt-get update && apt install -y --no-install-recommends winehq-devel \
    && apt-get remove --purge -y $BUILD_DEPENDENCIES \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

