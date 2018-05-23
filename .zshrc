# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

bindkey -v
#fix backspace to work in insert mode like expected in vim
eval "$(bindkey -M viins -L | sed -n -e 's/vi-backward-delete-char/backward-delete-char/p')"

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
#zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"

if ! zplug check; then
	zplug install
fi
zplug load

. ~/.shell_profile

