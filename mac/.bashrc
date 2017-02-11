source ~/bin/git-aliases.sh
source ~/bin/bash_include.sh
source ~/bin/git-completion.bash
export CLICOLOR=true
export EDITOR=vim
export pager=less
export PS1="[\w]\\$ "
export GIT_CEILING_DIRECTORIES=“/Users/gautamroy”
#export PYTHONPATH='/usr/lib/python2.6/site-packages'

PATH=$PATH:~/bin
PATH="/usr/local/bin:$PATH"
PATH="$PATH:/Developer/usr/bin"
PATH="$PATH:/Applications/Xcode.app/Contents/Developer/usr/libexec/git-core/"
PATH="$PATH:/Users/gautamroy/code-disk/fb_devtools/arcanist/bin"
export PATH

#java
export JAVA_HOME=$(/usr/libexec/java_home)
alias j7='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_60.jdk/Contents/Home'
alias j8='export JAVA_HOME=$(/usr/libexec/java_home)'

#android
export ANDROID_SDK=/Users/gautamroy/Library/Android/sdk
export ANDROID_HOME=${ANDROID_SDK}
export PATH=${PATH}:${ANDROID_SDK}/tools:${ANDROID_SDK}/platform-tools
export ANDROID_NDK_HOME=/Users/gautamroy/Library/Android/sdk/ndk-bundle

# maven
export M2_HOME=/Users/gautamroy/code/tools/apache-maven-3.3.9
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# ssh
alias sshparasol='ssh umbrella.cs.tamu.edu'

#arc
export PATH="$PATH:$HOME/dev/arcanist/bin"
alias adp='arc diff --preview'
alias adph='adp HEAD^'
alias adpl='adp --nolint' 
function pa() { pbpaste | arc paste | awk '{print $2}' | xargs open; }

#general
alias rm='rm -i'
alias ll='ls -l'
alias sr='screen -rAD'
alias cds='cd ~/code/workspace'
alias crms='rm -rf ~/.microemulator/suite-null'
alias ppaste="pbpaste | arc paste | tail -1 | awk '{print $2}' | xargs open"
alias tc='top -o cpu'

alias netstat_osx="sudo lsof -i -P"

#vi mode
set -o vi

ulimit -n 8192 

export BASE_PATH=~/code

