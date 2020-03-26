FROM ubuntu:bionic
MAINTAINER Lars Olzem <hackebein@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive \
    PATH=$PATH:/opt/steamcmd

RUN dpkg --add-architecture i386 \
 && apt-get update \
 && apt-get install -y --no-install-recommends --no-install-suggests \
        ca-certificates \
        language-pack-en \
        lib32tinfo5 \
        wget \
 && apt upgrade -y \
 && mkdir -p /opt/steamcmd \
 && cd /opt/steamcmd \
 && wget -qO- 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxf - \
 && ln -s steamcmd.sh steamcmd \
 && apt-get autoremove -y --purge \
        wget \
 && apt-get clean \
 && rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*

ENTRYPOINT ["steamcmd"]
ONBUILD ENTRYPOINT []
