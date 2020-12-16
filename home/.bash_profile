#prompt
export PS1="\n\[\e[0;32m\]\w\$\[\e[m\] "
#export PS1="\n\w\$ "

#bash-completion
if [ "${BASH_VERSINFO}" -ge 4 ] && [ -f /usr/local/share/bash-completion/bash_completion ]; then
   . /usr/local/share/bash-completion/bash_completion
 fi

. ~/.shell_profile