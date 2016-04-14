#!/bin/bash

#usage $0 [diffid] [donttest]

source bash_include.sh

# arc land command
if [ $# -gt 0 ];
then
echo $1
arc_land="arc land --revision $1"
else
arc_land="arc land"
fi


test -e '.git/rebase-apply'
if [ "$?" -eq "0" ];
then 
echo "middle of rebase";
exit 1;
fi

#build
if [ $# -lt 2 ];
then
mvn -U clean package  
fi

if [ "$?" -ne "0" ]; 
then 
echo "build command failed"; 
exit 1; 
fi

$arc_land
