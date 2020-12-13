# What
The goal is to be able to just clone this repo and run an install script
to get my preferred setting configured in a fresh unix/linux installation.

## How to install
    cd ~
    git clone https://github.com/davidxcheng/dotfiles.git
    cd dotfiles
    chmod 744 install.sh
    ./install.sh

## ToDo

- Move `autorun.bat` to a windows setup repo
- Add script that installs tools like git, homebrew, iojs etc

# Lessons learned
OS X is based on the open source OS called Darwin which in turn is a fork of BSD.

## Shells & Shell scripts
- The shebang (#!) marks the beginning of a _interpreter directive header_ that dictates which shell will be used as its interpreter.
`#!/usr/bin/env bash` will make `bash` the interpreter.
- All shell sessions are login shell in Darwin/OS X
- Darwin/OS X runs `~/.bash_profile` that sources `~/.bashrc`
- When running the `default` commands in the .osx-file the changes are persisted in ~/Library/Preferences. No need to run it on every boot.

[Info about the order in which files are read](http://dghubble.com/blog/posts/.bashprofile-.profile-and-.bashrc-conventions/)

