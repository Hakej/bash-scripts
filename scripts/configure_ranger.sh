#!/bin/bash

bash_path="$HOME/.bashrc"

if grep -Fq "ranger" $bash_path
then
    echo "Ranger seems to be configured."
    exit 2
fi

sudo pacman -S --needed ranger

echo >> $bash_path
echo "alias ranger='ranger --choosedir=\$HOME/.rangerdir; LASTDIR=\`cat \$HOME/.rangerdir\`; cd \"\$LASTDIR\"'" >> $bash_path

echo "Ranger configured."

bash
