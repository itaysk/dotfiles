This is for terminal only Linux. I use Ubuntu Server.

## Getting Started
1. Check for OS updates `sudo apt-get update && sudo apt-get upgrade`
1. Install basic packages `sudo apt-get install build-essential coreutils wget curl git`
1. For asdf python build, ensure `zlib` is installed: `sudo apt-get install zlib1g-dev`
1. Install brew for linux, instructions at `https://docs.brew.sh/Homebrew-on-Linux`
1. As per brew instructions install gcc `brew install patchelf gcc`
1. Install asdf `brew install asdf`
1. Follow the rest of the main [Readme->packages](../Readme.md#packages) section and the additional application specific settings there.