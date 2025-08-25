# add this to .bashrc
# source <(curl -s https://raw.githubusercontent.com/Robcloud2023/linux/main/bashrc)

THEIP=$(ip addr show | grep -E '(eth0|br0|vmbr0)' | grep metric | grep 'inet '| grep -v '127.0.0.1' | tail -1 | cut -d: -f2 | awk '{ print $2}')
PS1="\\033[01;31m\]▓\u@"$THEIP" \h \w ▓ \[\033[00m\]";

alias ls='ls -la'

HISTSIZE=5000
HISTFILESIZE=10000
HISTFILE="~/.bash_history"
export HISTSIZE HISTFILESIZE HISTFILE
