#!/bin/bash
git clone --bare  https://github.com/XelK/dots.git $HOME/.dots
git init --bare $HOME/.dots
alias config='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'" >> $HOME/.bashrc
