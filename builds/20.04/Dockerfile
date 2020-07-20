FROM alpine:latest as base
RUN apk add --update --no-cache \
        tar \
        wget \
 && mkdir -p /app \
 && wget --no-verbose 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' -O '/tmp/steamcmd_linux.tar.gz' \
 && tar -C /app -xf '/tmp/steamcmd_linux.tar.gz' \
 && ln -s steamcmd.sh /app/steamcmd

FROM ubuntu:20.04
MAINTAINER Lars Olzem <hackebein@gmail.com>
ENV DEBIAN_FRONTEND=noninteractive \
    PATH=$PATH:/opt/steamcmd
COPY --from=base /app /opt/steamcmd
RUN dpkg --add-architecture i386 \
 && apt-get update \
 && apt-get install -y --no-install-recommends --no-install-suggests \
        ca-certificates \
        language-pack-en \
        lib32tinfo6 \
 && apt upgrade -y \
 && apt clean \
 && rm -rf \
        /var/lib/apt/lists/* \
 && chmod a=u /opt/steamcmd
WORKDIR /opt/steamcmd
ENTRYPOINT ["steamcmd"]
ONBUILD ENTRYPOINT []
