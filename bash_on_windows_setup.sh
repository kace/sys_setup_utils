#!/bin/bash

# bash_on_windows_setup.sh - customizes a default instance of bash on windows

### .bashrc
# bash coloring, python startup, default editor
# PS1 -> https://wiki.ubuntuusers.de/Bash/Prompt/
# use on Ubuntu (dir coloring needs to be explicit) -> LS_COLORS='ow=01;36:di=01;36'
echo "
LS_COLORS='ow=01;36;40'
export LS_COLORS
PS1='\u@\h \[\033[1;35m\]\W\[\033[0m\]$ '

export PYTHONSTARTUP=/home/$USER/.pystartup.py

export VISUAL=vim
export EDITOR="$VISUAL"
" >> ~/.bashrc

### .vimrc
echo ":set background=dark
:filetype plugin indent on
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set mouse=a
:autocmd FileType python highlight OverLength ctermbg=red ctermfg=white guibg=#592929
:autocmd FileType python match OverLength /\%81v.\+/" > /$HOME/.vimrc
