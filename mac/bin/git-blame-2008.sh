#!/bin/bash

command="git blame"

#filearray=( $(find scribe/src/ -iname "*.cpp" -or -iname "*.h") )
N=0
for i in $(find scribe/src/ -iname "*.cpp" -or -iname "*.h"); do
#  filearray[$N]=$i
#  let "N= $N + 1"
  echo $i
  git blame $i | grep "2008"
done


#echo ${filearray[@]}
