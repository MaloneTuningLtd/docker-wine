FROM ubuntu:20.04

ARG DEBIAN_FRONTEND="noninteractive"

RUN BUILD_DEPENDENCIES="\
  build-essential \
  cmake \
  git \
  software-properties-common \
  wget" \
  && dpkg --add-architecture i386 \
  && apt-get update -qq && apt-get upgrade -yqq \
  && apt-get install -yqq \
    winbind \
    $BUILD_DEPENDENCIES \
    # https://forum.winehq.org/viewtopic.php?f=8&t=32061
    && apt-add-repository ppa:cybermax-dexter/sdl2-backport \
    && apt-get update -qq && apt-get install -yqq libsdl2-dev \
    && git clone https://github.com/FNA-XNA/FAudio.git /tmp/faudio \
    && mkdir -p /tmp/faudio/build && cd /tmp/faudio/build && cmake ../ \
    && make && make install \
    # && wget https://dl.winehq.org/wine-builds/Release.key -O - | apt-key add - \
    # use newer key...
    && wget https://dl.winehq.org/wine-builds/winehq.key -O - | apt-key add - \
    && apt-add-repository https://dl.winehq.org/wine-builds/ubuntu \
    && apt-get update -qq && apt install -yqq --no-install-recommends winehq-devel \
    && apt-get remove --purge -yqq $BUILD_DEPENDENCIES libsdl2-dev \
    && apt-get autoremove -yqq \
    && rm -rf /var/lib/apt/lists/*

