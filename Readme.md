## Getting Started
1. check for macOS updates
1. apply `mac-settings.txt`
1. open terminal, run `xcode-select --install` (to enable basic cli tools)
1. clone this repo `git clone dotfiles` and cd into
1. copy ./home to the home directory

### packages
1. install brew, instructions at `brew.sh`
1. review `brew.txt` and `brew-cask.txt`, comment out (using `#`) unneeded packages (note some stuff will be installed using asdf later, like language runtimes)
1. install brew packages: `cat ./brew.txt | grep -v '^#' | xargs brew install`
1. install brew cask packages: `cat ./brew-cask.txt | grep -v '^#' | xargs brew cask install`
1. install asdf packages: `./asdf.sh`

### ssh
1. create ssh key: `ssh-keygen`
1. upload the ssh key to GitHub

### tmux
1. since I don't use a plugin manager for tmux yet, manually get the single plugin used: `git clone https://github.com/tmux-plugins/tmux-yank ~/.tmux/tmux-yank`

### vim
1. get vim-plug: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
1. in vim run `:PlugInstall`

### vscode
1. install vscode extensions: `cat ./vscode-extensions.txt | xargs -L1 code --install-extension`