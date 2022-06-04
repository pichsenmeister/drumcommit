#!/bin/bash
DIR=$(pwd)
if [ ! -d $DIR/.git ]
then
  echo "[drumcommit] ERROR: not a git repo"
  exit 0
elif [ ! $1 ] 
then
  echo "[drumcommit] ERROR: missing option. available: checkout, commit, push"
  echo "[drumcommit] usage: drumcommit <option>"
elif [ $1 = "push" ]
then
  sh ~/.drumcommit/linux/push.sh
elif [ $1 = "commit" ]
then
  sh ~/.drumcommit/linux/commit.sh
elif [ $1 = "checkout" ]
then
  sh ~/.drumcommit/linux/checkout.sh
elif [ $1 = "all" ]
then
  sh ~/.drumcommit/linux/commit.sh
  sh ~/.drumcommit/linux/checkout.sh
  sh ~/.drumcommit/linux/push.sh  
else
  echo "[drumcommit] ERROR: invalid option. available: checkout, commit, push"
fi
exit 0
