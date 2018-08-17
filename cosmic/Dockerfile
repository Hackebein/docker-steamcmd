FROM ubuntu:cosmic
MAINTAINER Lars Olzem <hackebein@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 \
 && apt-get update \
 && apt-get install -y ca-certificates \
 && echo debconf steam/question select I AGREE | debconf-set-selections \
 && apt-get install -y \
        language-pack-en \
        lib32tinfo5 \
        steamcmd \
 && apt-get clean \
 && rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/* \
 && ln -s \
        /usr/games/steamcmd \
        /usr/local/bin/steamcmd

ENTRYPOINT ["steamcmd"]
ONBUILD ENTRYPOINT []