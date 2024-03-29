###############################
# Other things in my profile...
###############################

######################
# Git Branch Awareness
######################
parse_git_branch() {
  MYPWD=`pwd`
  if [[ "$MYPWD" =~ "/Volumes/" ]]; then
      echo ""
  else
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
  fi
}

PS1='\[\033[00;32m\]\h \[\033[00;37m\]\w\n\[\033[00;35m\]$(parse_git_branch)\[\033[00m\] \$ '
# PS1='\[\033[00;32m\]\h \[\033[00;37m\]\w\n\[\033[00;35m\]\[\033[00m\] \$ '

# Alternately, use powerline-go
# See https://github.com/justjanne/powerline-go
# Add powerline-go
#function _update_ps1() {
#    PS1="$($GOPATH/bin/powerline-go \
#        -newline -cwd-max-depth 5 -mode compatible -colorize-hostname\
#        -max-width 95 -shell bash\
#        -modules 'venv,host,ssh,cwd,perms,git,hg,jobs,exit,root')"
#
#if [ "$TERM" != "linux" ]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

############
# Maven opts
############
MAVEN_NDBG_OPTS="-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9875
-Dcom.sun.management.jmxremote.ssl=false
-Dcom.sun.management.jmxremote.authenticate=false -Xms256m -Xmx2048m
-XX:PermSize=100m -XX:MaxPermSize=100m"

MAVEN_DBG_OPTS="-Djetty.reload=automatic -Djetty.scanIntervalSeconds=10
-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9875
-Dcom.sun.management.jmxremote.ssl=false
-Dcom.sun.management.jmxremote.authenticate=false -server -Xms256m -Xmx2048m
-XX:PermSize=100m -XX:MaxPermSize=100m -Xdebug -Xnoagent
-Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=y"


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
alias el='exa --long --header --all --icons'
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
 
alias svndiff='svn diff | colordiff'
 
alias bgrv="cat build.gradle | grep 'version\s\?=' | sed 's/version//' | sed 's/=//' | sed 's/'\''//g'"
alias diff='colordiff'


##############
# More aliases
##############
alias jetty='MAVEN_OPTS="${MAVEN_NDBG_OPTS}" TZ=GMT mvn jetty:run'
alias utar='tar -xzf'

alias tmuxl='tmux list-sessions'
alias tmuxa='tmux attach-session -t $1'

alias ccat="pygmentize -g"


##########
# jgitflow
##########
alias fstart='mvn jgitflow:feature-start'
alias ffinish='mvn jgitflow:feature-finish'
alias rstart='mvn jgitflow:release-start'
alias rfinish='mvn jgitflow:release-finish'


############
# Kubernetes
############
alias k='/usr/local/bin/kubectl'
alias o='$GOPATH/bin/operator-sdk'
alias kx='/usr/local/bin/kubectx'
alias kn='/usr/local/bin/kubens'


###############
# App related
###############
alias ch='open -a "Google Chrome" --args --profile-directory="Guest Profile"'
alias saf='open -a "Safari"'
alias fire='open -a "Firefox"'


##################
# jupyter notebook
##################
alias jnb='jupyter notebook'

#######
# Video
#######
alias video-res='ffprobe -v error -show_entries stream=width,height -of csv=p=0:s=x $1'
