#!/bin/zsh

source ~/.aliases

setopt AUTO_CD

# Fastest possible way to check if repo is dirty. a savior for the WebKit repo.
function parse_git_dirty() {
    git diff --quiet --ignore-submodules HEAD 2>/dev/null; [ $? -eq 1 ] && echo '*'
}

function parse_git_branch() {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

function prompt() {
    PROMPT="%B%F{green}%~%f%b"
    PROMPT+=$([[ -n $(git branch 2> /dev/null) ]] && echo ' on ')%F{magenta}$(parse_git_branch)%f
    PROMPT+=$'\n'"$ "
}

precmd_functions+=(prompt)
