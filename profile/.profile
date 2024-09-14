export PATH=$HOME/scripts:$PATH
 
######
# Java
######
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
 
#####
# Git
#####
alias glog='git log --graph --abbrev-commit --pretty=oneline'
alias gstat='git log --stat'
alias glogm="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gdif='git diff'
alias gdifc='git diff --cached'
alias gnames='git diff $1 $2 --name-only'
alias gdl='git branch -D'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gbr='git branch'
alias gst='git status'
alias gpr='git webdiff HEAD'
alias gpullr='git pull --rebase'
alias gnvm='git reset --soft HEAD~1'
 
###########################
# Some aliases for laziness
###########################
alias l='ls -alGh'
alias el='exa --long --header --all --icons --git'
alias cpr='cp -r'
alias cl='clear; ls'
alias psef='ps -ef | grep $1'
alias h='history'
alias ..='cd ..'
alias ....='cd ../..'
alias pd='pwd'
alias df='df -h'
alias grep='grep --color=auto'
alias b=bat
alias v=vim
alias wp='cd /Users/rmorshed/workplace'
 
alias svndiff='svn diff | colordiff'
 
alias bgrv="cat build.gradle | grep 'version\s\?=' | sed 's/version//' | sed 's/=//' | sed 's/'\''//g'"
alias diff='colordiff'
alias dsf='diff-so-fancy'
 
##############
# More aliases
##############
alias utar='tar -xzf'

alias tmuxl='tmux list-sessions'
alias tmuxa='tmux attach-session -t $1'
 
alias ccat="pygmentize -g"
alias python='/usr/local/bin/python3'
alias strip-json-comments="sed 's/\\/\\/.*//'"
alias pdflatex='/Library/TeX/Root/bin/universal-darwin/pdflatex'

###############
# App related
###############
alias ch='open -a "Google Chrome" --args --profile-directory="Guest Profile"'
alias saf='open -a "Safari"'
alias fire='open -a "Firefox"'
