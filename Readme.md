I use MacOS as my main computer but the command line tools and techniques are relevant for other systems as well. See the [linux](/.linux) and [windows](./windows) folders for more information about that.

## Getting Started
1. check for macOS updates
1. apply `mac-settings.txt`
1. open terminal, run `xcode-select --install` (to enable basic cli tools)
1. clone this repo `git clone dotfiles` and cd into
1. copy `./home` to the home directory
1. run `mac-login.sh` to add apps to startup

### packages
1. Install brew, instructions at `https://brew.sh`
1. Install asdf (so that it can satisfy brew "Requirements" instad of brew installing duplicates): `brew install asdf`
1. Review and install asdf packages: `./asdf.sh`
1. Review `brew.txt` and `brew-cask.txt`, comment out (using `#`) unneeded packages (note some stuff were installed using asdf, like language runtimes)
1. Install brew packages: `cat ./brew.txt | grep -v '^#' | xargs brew install`
1. (only for mac) Install brew cask packages: `cat ./brew-cask.txt | grep -v '^#' | xargs brew cask install`

### ssh
1. create ssh key: `ssh-keygen`
1. upload the ssh key to GitHub

### shell
1. change the default shell to zsh (installed by brew): `command -v zsh | sudo tee -a /etc/shells  && sudo chsh -s $(command -v zsh)`
1. since I don't use a plugin manager for tmux yet, manually get the single plugin used: `git clone https://github.com/tmux-plugins/tmux-yank ~/.tmux/tmux-yank`

### vim
1. get vim-plug: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
1. in vim run `:PlugInstall`

### vscode
1. install vscode extensions: `cat ./vscode-extensions.txt | xargs -L1 code --install-extension`

### scroll reverser
macOS defaults to "natural scrolling" which makes sense on the trackpad but not with a mouse wheel.
there's no build-in way to choose different setting for trackpad and mouse, so Scroll Reverser app is used.
1. ensure scroll-reverser is installed via `brew-cask.txt`
1. in Scroll Reverser settings, enable scroll reversing just for mouse. disable show in menu bar.
1. in settings, ensure that scrolling is "natural scrolling" (default)

### window manager
I use Amethyst (a tiling window manager) for when plugged in to a big screen, and Spectacle for when using the laptop screen. Both are listed in the brew cask file.

