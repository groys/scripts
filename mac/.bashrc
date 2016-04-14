source ~/bin/git-aliases.sh
source ~/bin/bash_include.sh
source ~/bin/git-completion.bash
export CLICOLOR=true
export EDITOR=vim
export pager=less
export PS1="[\w]\\$ "
export GIT_CEILING_DIRECTORIES=“/Users/groys”
export PYTHONPATH='/usr/lib/python2.6/site-packages'
export WTK_HOME=/Volumes/lowercase-disk/snaptu/WTK

PATH=$PATH:~/bin
PATH="/usr/local/bin:$PATH"
PATH="$PATH:/Developer/usr/bin"
PATH="$PATH:/Applications/Xcode.app/Contents/Developer/usr/libexec/git-core/"
PATH="$PATH:/Users/groys/code-disk/fb_devtools/arcanist/bin"
export PATH

#java
export JAVA_HOME=$(/usr/libexec/java_home)
alias j7='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_60.jdk/Contents/Home'
alias j8='export JAVA_HOME=$(/usr/libexec/java_home)'

#android
export ANDROID_SDK=~/android-sdk-macosx
export ANDROID_HOME=${ANDROID_SDK}
export PATH=${PATH}:${ANDROID_SDK}/tools:${ANDROID_SDK}/platform-tools
export ANDROID_NDK_REPOSITORY=/opt/android-ndk

# maven
export M2_HOME=~/bin/apache-maven-3.2.1
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
#export MAVEN_OPTS=-Djava.net.preferIPv6Addresses=true
export MAVEN_OPTS="-Xmx4g"

# ssh
dev_box=dev3401.prn1.facebook.com
alias d1="ssh $dev_box"
alias d2='ssh devrs136.prn1.facebook.com'
alias sshparasol='ssh umbrella.cs.tamu.edu'
alias smcc='d1 smcc'
alias s='d1 -D5555'

#arc
alias adph='adp HEAD^'
alias adpl='adp --nolint' 

#general
alias rm='rm -i'
alias ll='ls -l'
alias sr='screen -rAD'
alias cdp='cd /Volumes/lowercase-disk/puma/'
alias cds='cd ~/code/workspace'
alias cdh='cd /Volumes/lowercase-disk/git-hdfs-titan/'
alias cdd='cd /Volumes/lowercase-disk/git-datafreeway/'
alias crms='rm -rf ~/.microemulator/suite-null'
alias ppaste="pbpaste | arc paste | tail -1 | awk '{print $2}' | xargs open"
alias tc='top -o cpu'

alias netstat_osx="sudo lsof -i -P"

#vi mode
set -o vi


ulimit -n 8192 
alias bcc='find ~/Library/Caches/IntelliJIdea13/compile-server/ -name "BuildConfig.java" | xargs rm -f'

export BASE_PATH=~/code
