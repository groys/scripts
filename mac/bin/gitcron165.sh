#!/bin/bash

export DIR=/mytrunk/www
cd $DIR
git svn fetch


#export DIR=/mytrunk/opsfiles
#cd $DIR
#svn up

export DIR=/mytrunk/fbcode-test
cd $DIR
git svn fetch
