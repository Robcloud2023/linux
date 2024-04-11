THEIP=$(ip addr show | grep -E '(eth0|br0|vmbr0)' | grep 'inet '| grep -v '127.0.0.1' | tail -1 | cut -d: -f2 | awk '{ print $2}')
PS1="\\033[01;31m\]▓\u@"$THEIP" \h \w ▓ \[\033[00m\]";
