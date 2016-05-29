# personal initialization file, executed for login shells

# execute bashrc if readable
test -r ~/.bashrc && . ~/.bashrc

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=4500
HISTFILESIZE=9000

alias ll='ls -l'

complete -d cd
source ~/.bash_completion/git-completion.bash

if test "Darwin" = "$(uname -s)"; then

  export TERM=darwin-256x96 # immediately followed by
  /usr/bin/tput init
  export CLICOLOR=1
  export LSCOLORS=ExFxBxDxCxegedabagacad

  export PS1='\W \$ '

  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

  export PATH=/Applications/VirtualBox.app/Contents/MacOS:$PATH
  export PATH=~/Downloads/couchbase/Couchbase\ Server.app/Contents/MacOS:$PATH
  export PATH=~/Downloads/eclipse/Eclipse.app/Contents/MacOS:$PATH
  export PATH=~/Downloads/eventstore:$PATH
  export PATH=~/Downloads/gradle/bin:$PATH
  export PATH=~/Downloads/maven/bin:$PATH
  export PATH=~/Downloads/mongodb/bin:$PATH
  export PATH=~/Library/Android/sdk/tools:$PATH
  export PATH=~/Library/Android/sdk/platform-tools:$PATH

fi

#eval $(ssh-agent)
#ssh-add ~/.ssh/id_rsa
#ssh-add ~/.ssh/id_rsa_webwhammy

