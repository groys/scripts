source ~/bin/git-aliases.sh
source ~/bin/bash_include.sh
source ~/bin/git-completion.bash
export CLICOLOR=true
export EDITOR=vim
export pager=less
export PS1="[\w]\\$ "
export GIT_CEILING_DIRECTORIES=“/Users/groys”
export PYTHONPATH='/usr/lib/python2.6/site-packages'

PATH=$PATH:~/bin
PATH="/usr/local/bin:$PATH"
PATH="$PATH:/Developer/usr/bin"
PATH="$PATH:/Applications/Xcode.app/Contents/Developer/usr/libexec/git-core/"
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

#arc
alias adph='adp HEAD^'
alias adpl='adp --nolint' 

#general
alias rm='rm -i'
alias ll='ls -l'
alias sr='screen -rAD'
alias tc='top -o cpu'
alias cdc='cd ~/code'
alias netstat_osx="sudo lsof -i -P"

#vi mode
set -o vi


ulimit -n 8192 
