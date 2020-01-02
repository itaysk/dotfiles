## Getting started
1. check for Windows Update
1. Windows Settings -> For Developers -> Apply all

### packages
1. install chocolatey, instructions at `https://chocolatey.org`
1. review `choco.txt` and install using choco: `choco install $package`

### free port 80
1. free port 80 by running `free80.cmd`

### macOS key mapping
1. run `swapkeys.reg` to swap `alt` and `win` keys, so that it matches the mac keyboard `cmd` and `opt` keys layout.
1. ensure autohotkey was installed by choco (included on `choco.txt`).
1. run `mackeys.ahk` and add to startup.

### wsl
I use Ubuntu server

1. install wsl, instructions at `https://docs.microsoft.com/en-us/windows/wsl/install-win10`
1. Follow instructions for [Linux](../linux)

### Docker
Docker engine will not run in WSL, but using Docker for Windows. Docker CLI will be installed in WSL and configure to use the Docker for Windows engine.

1. ensure Docker for Windows was installed by choco (included on `choco.txt`).
1. docker -> settings -> general -> Expose daemon on tcp://localhost:2375 without TLS.
docker-> settings-> kubernetes -> Enable Kubernetes
1. if using wsl, run: `wsl-docker.sh` (one time)
1. install docker cli: `docker-cli.sh`

### Fancy Zones
https://github.com/microsoft/PowerToys/blob/master/src/modules/fancyzones/README.md