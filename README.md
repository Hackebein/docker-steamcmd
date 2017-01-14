**Supported tags and respective `Dockerfile` links**
* `16.04`, `xenial`, `latest` [xenial/Dockerfile](https://github.com/Hackebein/docker-steamcmd/blob/master/xenial/Dockerfile)
* `16.10`, `yakkety` [yakkety/Dockerfile](https://github.com/Hackebein/docker-steamcmd/blob/master/yakkety/Dockerfile)
* `17.04`, `zesty` [zesty/Dockerfile](https://github.com/Hackebein/docker-steamcmd/blob/master/zesty/Dockerfile)
Select between [Ubuntu](https://hub.docker.com/r/library/ubuntu/) Base Image

**What is SteamCMD**
The Steam Console Client or SteamCMD is a command-line version of the Steam client. Its primary use is to install and update various dedicated servers available on Steam using a command-line interface. It works with games that use the SteamPipe content system.

For detailed information about SteamCMD, please see [wiki](https://developer.valvesoftware.com/wiki/SteamCMD).

**Quick Start**
docker run hackebein/steamcmd:latest +login anonymous +quit