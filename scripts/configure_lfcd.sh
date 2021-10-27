#!/bin/bash

mkdir -p ~/.config/lf
curl https://raw.githubusercontent.com/gokcehan/lf/master/etc/lfcd.sh -o ~/.config/lf/lfcd.sh

path_to_bashrc="$HOME/.bashrc"

echo >> $path_to_bashrc
echo 'LFCD="$GOPATH/src/github.com/gokcehan/lf/etc/lfcd.sh"' >> $path_to_bashrc
echo 'LFCD="$HOME/.config/lf/lfcd.sh"' >> $path_to_bashrc
echo 'if [ -f "$LFCD" ]; then' >> $path_to_bashrc
echo '   source "$LFCD"' >> $path_to_bashrc
echo 'fi' >> $path_to_bashrc
echo >> $path_to_bashrc
echo bind \'\"\\C-o\":\"lfcd\\C-m\"\' >> $path_to_bashrc

