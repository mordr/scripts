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


###########################
# Some aliases for laziness
###########################
alias ll='ls -alGh'
alias cpr='cp -r'
alias cl='clear; ls'
alias psef='ps -ef | grep $1'
alias h='history'
alias ..='cd ..'
alias ....='cd ../..'
alias pd='pwd'
alias df='df -h'
alias grep='grep --color=auto'

alias svndiff='svn diff | colordiff'

alias bgrv="cat build.gradle | grep 'version\s\?=' | sed 's/version//' | sed 's/=//' | sed 's/'\''//g'"


##############
# More aliases
##############
alias jetty='MAVEN_OPTS="${MAVEN_NDBG_OPTS}" TZ=GMT mvn jetty:run'


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
alias k="/Users/RagibMorshed/.bricks/bin/kubectl"
alias o="/Users/RagibMorshed/working/golang/bin/operator-sdk"
