if [ -f ~/.bashrc ];then
   source ~/.bashrc
fi
if [ -f `brew --prefix`/etc/bash_completion.d/vagrant ]; then
   source `brew --prefix`/etc/bash_completion.d/vagrant
fi
if [ -f $(brew --prefix)/etc/bash_completion ]; then
   source $(brew --prefix)/etc/bash_completion
fi

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH
export CLICOLOR="true"
##export LSCOLORS="Exfxcxdxbxegedabagacad"
export LSCOLORS="gxfxcxdxbxegedabagacad"


# alias command

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -a"
eval "$(rbenv init -)"
eval "$(plenv init -)"
eval "$(pyenv init -)"
