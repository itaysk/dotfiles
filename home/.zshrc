. ~/.shellrc

# ignore common commands from history logging
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"
#vim mode
bindkey -v
#fix backspace to work in insert mode like expected in vim
eval "$(bindkey -M viins -L | sed -n -e 's/vi-backward-delete-char/backward-delete-char/p')"
autoload -Uz compinit && compinit

export PROMPT='%F{green}%~%f %F{yello}❯%f '

# fuzzy search in history (fzf dependency)
fh() {
  print -z "$( fc -l 1 | fzf +s --tac | sed 's/ *[0-9]* *//')"
}
