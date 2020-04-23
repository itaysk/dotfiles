This is for terminal only Linux. I use Ubuntu Server.

## Getting Started
1. Check for OS updates `sudo apt-get update && sudo apt-get upgrade`
1. Install packages listed in [./apt-get.txt](apt-get.txt)
1. Manually Install:
  a. zplug
  b. z
  c. asdf
1. Follow the rest of the main [Readme->packages](../Readme.md#packages) section and the additional application specific settings there.

## Tmux

remove the `yank` extension from `.tmux.conf` as it is MacOS specific

## rc files

remove all brew references before copying