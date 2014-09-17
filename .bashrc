# MacVim Setting
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vimdiff='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/mvimdiff "$@"'
alias mvim="mvim --remote-tab-silent"

# Docker Setting
export DOCKER_HOST="tcp://192.168.33.10:2375"
export VAGRANT_DEFAULT_PROVIDER=parallels
