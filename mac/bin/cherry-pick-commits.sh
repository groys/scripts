#!/bin/bash

## script to cherry pick the last numcommits commits from the pickbranch into
## current branch

## make sure you on the branch you want to cherry-pick commits into

usage() {
  echo "Usage: $0 <pick-branch> <num-commits>"
  exit 1
}

if [ "$#" -eq 2 ]
then
  pickbranch=$1
  numcommits=$2
else
  usage
fi

echo $pickbranch
echo $numcommits
git lop $pickbranch | head -$numcommits | awk '{print $1}' | tac > cherrypickfile

while read line; 
do 
  git cherry-pick $line; 
done < cherrypickfile
