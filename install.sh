#!/bin/sh

if [ ! -d "$HOME/.yadr" ]; then
    echo "Installing YADR for the first time"
    git clone --depth=1 https://github.com/hulajesus/dotfiles.git "$HOME/.yadr"
    cd "$HOME/.yadr"
    git fetch origin server:server
    git checkout server
    [ "$1" = "ask" ] && export ASK="true"
    rake install
else
    echo "YADR is already installed"
fi
