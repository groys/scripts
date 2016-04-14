#!/bin/bash

export DIR=$HOME/www
cd $DIR
git svn fetch

export DIR=$HOME/fbcode-git
cd $DIR
git svn fetch
