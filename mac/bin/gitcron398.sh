#!/bin/bash

export DIR=/mytrunk/fbcode
cd $DIR
git svn fetch

export DIR=/mytrunk/www-git
cd $DIR
git svn fetch
