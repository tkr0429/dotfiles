# MacVim Setting
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
### GO PATH
export GOPATH=$HOME/.go
export PATH=$HOME/.go/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"

alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vimdiff='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/mvimdiff "$@"'
alias mvim="mvim --remote-tab-silent"
vim_version=`vim --version | head -1 | sed 's/^.*\ \([0-9]\)\.\([0-9]\)\ .*$/\1\2/'`
alias less='/usr/share/vim/vim73/macros/less.sh'
alias brew="PATH=${PATH/\/Users\/tokushige\/.pyenv\/shims:/} brew"
alias htop="sudo htop"

# Docker Setting
export DOCKER_HOST="tcp://192.168.33.10:2375"
export VAGRANT_DEFAULT_PROVIDER=parallels
#export TERM=xterm-256color


# tmux (auto start)
is_screen_running() {
  [ ! -z "$WINDOW" ]
}
is_tmux_runnning() {
  [ ! -z "$TMUX" ]
}
is_screen_or_tmux_running() {
  is_screen_running || is_tmux_runnning
}
shell_has_started_interactively() {
  [ ! -z "$PS1" ]
}
resolve_alias() {
  cmd="$1"
  while \
    which "$cmd" >/dev/null 2>/dev/null \
    && [ "$(which "$cmd")" != "$cmd" ]
  do
    cmd=$(which "$cmd")
  done
  echo "$cmd"
}


pressl(){
    url="$1"
    /usr/local/opt/openssl/bin/openssl s_client -connect $url -showcerts < /dev/null | openssl x509 -text | egrep "RSA public|Not|RSA Public Key:"
}

chkssl(){
    url="$1"
    pressl $url 2>&1 |grep -Ev "return"
}


if ! is_screen_or_tmux_running && shell_has_started_interactively; then
  for cmd in tmux ; do
    if which $cmd >/dev/null 2>/dev/null; then
      $(resolve_alias "$cmd")
      break
    fi
  done
fi

sshconfig() {
    mv ~/.ssh/config{,.bak}
    cat ~/.ssh/conf.d/*.conf > ~/.ssh/config
}

