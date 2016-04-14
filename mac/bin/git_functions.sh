#!/bin/bash

source bash_include.sh

arc='/Users/groys/code-disk/fb_devtools/arcanist/bin/arc'
remote_master='master'
local_master='master'
local_titan_repo_path="/Volumes/lowercase-disk/git-hadoop-titan"
local_datafreeway_repo_path="/Volumes/lowercase-disk/git-datafreeway"
local_puma_repo_path="/Volumes/lowercase-disk/puma"
local_hadoop_trunk_path="/Volumes/lowercase-disk/hadoop/trunk"
local_hadoop_external_path="/Volumes/lowercase-disk/hadoop/external"

cur_path=`pwd`

if [[ $cur_path == $local_titan_repo_path* ]];
then 
  remote_repo_path="/mytrunk/hadoop-tit";
elif [[ $cur_path == $local_datafreeway_repo_path* ]];
then 
  remote_repo_path="/mytrunk/datafreeway";
elif [[ $cur_path == $local_puma_repo_path* ]];
then 
  remote_repo_path="/mytrunk/puma";
elif [[ $cur_path == $local_hadoop_trunk_path* ]];
then 
  remote_repo_path="/mytrunk/hadoop/trunk";
elif [[ $cur_path == $local_hadoop_external_path* ]];
then 
  remote_repo_path="/mytrunk/hadoop/external";
else
  local_repo_name=`basename $cur_path`
  remote_repo_path="/mytrunk/$local_repo_name";
fi
echo "remote_repo_path $remote_repo_path";

export remote_repo_path

git_locally_modified() {
  x=`git ls-files -m $@`
  test "$x" != ""
}

git_current_branch() { 
git br | grep "^*" | cut -d' ' -f 2; 
}
