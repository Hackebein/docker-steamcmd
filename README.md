# Supported tags and respective `Dockerfile` links

* `bionic`, `latest` [(bionic/Dockerfile)](https://github.com/Hackebein/docker-steamcmd/blob/master/bionic/Dockerfile)
* `disco` [(disco/Dockerfile)](https://github.com/Hackebein/docker-steamcmd/blob/master/disco/Dockerfile)
* `eoan` [(eoan/Dockerfile)](https://github.com/Hackebein/docker-steamcmd/blob/master/eoan/Dockerfile)
* `focal` [(focal/Dockerfile)](https://github.com/Hackebein/docker-steamcmd/blob/master/focal/Dockerfile)
* `xenial` [(xenial/Dockerfile)](https://github.com/Hackebein/docker-steamcmd/blob/master/xenial/Dockerfile)

Tags switching between [Ubuntu](https://hub.docker.com/_/ubuntu/) base images.

# What is SteamCMD?

The Steam Console Client or SteamCMD is a command-line version of the Steam client. Its primary use is to install and update various dedicated servers available on Steam using a command-line interface. It works with games that use the SteamPipe content system.

For detailed information about SteamCMD, please see [wiki](https://developer.valvesoftware.com/wiki/SteamCMD).

# Quick Start

docker run hackebein/steamcmd +login anonymous +quit
