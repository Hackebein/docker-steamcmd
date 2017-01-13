FROM ubuntu:16.04
MAINTAINER Lars Olzem <hackebein@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

COPY sources_xenial_multiverse.list /etc/apt/sources.list.d/

RUN dpkg --add-architecture i386 \
    && apt-get update -q \
    && echo debconf steam/question select I AGREE | debconf-set-selections \
    && apt-get install -yqq steamcmd \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/usr/games/steamcmd"]