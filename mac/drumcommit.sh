#!/bin/bash
if [ ! $1 ] 
then
  echo "missing options: commit, push"
elif [ $1 = "push" ]
then
  sh ~/.drumcommit/mac/push.sh
elif [ $1 = "commit" ]
then
  sh ~/.drumcommit/mac/commit.sh
else
  echo "wrong options. available: commit, push"
fi
exit 0
