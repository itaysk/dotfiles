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
1. install wsl, instructions at `https://docs.microsoft.com/en-us/windows/wsl/install-win10`
1. copy from `./home` the relevant files to the home directory. merge `wsl/home/.shell_profile` into `home/.shell_profile` according to the instructions in the file.
1. source the new shell config, it may error until packages are installed, ignore and source again packages are installed.

#### wsl packages - debian/ubuntu
1. update and install basic packages `sudo apt-get update && sudo apt-get install build-essential coreutils wget curl git`
1. for asdf python build, ensure `zlib` is installed: `sudo apt-get install zlib1g-dev`
1. install brew for wsl, instructions at `https://docs.brew.sh/Homebrew-on-Linux`
1. as per brew instructions install gcc `brew install gcc`
1. Install asdf (so that it can satisfy brew "Requirements" instad of brew installing duplicates): `brew install asdf`
1. install asdf packages: `./asdf.sh`
1. review `brew.txt` and `brew-cask.txt`, comment out (using `#`) unneeded packages (note some stuff were installed using asdf, like language runtimes)

#### additional settings in the main (mac) readme
for setting up ssh, tmux, vim, etc.

### Docker
Docker engine will not run in WSL, but using Docker for Windows. Docker CLI will be installed in WSL and configure to use the Docker for Windows engine.

1. ensure Docker for Windows was installed by choco (included on `choco.txt`).
1. docker -> settings -> general -> Expose daemon on tcp://localhost:2375 without TLS.
docker-> settings-> kubernetes -> Enable Kubernetes
1. if using wsl, run: `wsl-docker.sh` (one time)
1. install docker cli: `docker-cli.sh`

### Fancy Zones
https://github.com/microsoft/PowerToys/blob/master/src/modules/fancyzones/README.md