#!/bin/bash

# Installs the ycm-core/YouCompleteMe dependencies for Debian
sudo apt install build-essential cmake python3-dev
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
