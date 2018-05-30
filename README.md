# Supported tags and respective `Dockerfile` links

* `artful` [(artful/Dockerfile)](https://github.com/Hackebein/docker-steamcmd/blob/master/artful/Dockerfile)
* `bionic`, `latest` [(bionic/Dockerfile)](https://github.com/Hackebein/docker-steamcmd/blob/master/bionic/Dockerfile)
* `trusty` not supported
* `xenial` [(xenial/Dockerfile)](https://github.com/Hackebein/docker-steamcmd/blob/master/xenial/Dockerfile)
Tags switching between [Ubuntu](https://hub.docker.com/r/library/ubuntu/) base images.

# What is SteamCMD?

The Steam Console Client or SteamCMD is a command-line version of the Steam client. Its primary use is to install and update various dedicated servers available on Steam using a command-line interface. It works with games that use the SteamPipe content system.

For detailed information about SteamCMD, please see [wiki](https://developer.valvesoftware.com/wiki/SteamCMD).

# Update Hooks

* on base image update (supported by Docker Hub)
* on repository update (supported by Docker Hub)

# Quick Start

docker run hackebein/steamcmd:latest +login anonymous +quit
