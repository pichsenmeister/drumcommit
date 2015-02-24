#!/bin/bash
if [ ! $1 ] 
then
  echo "missing options: checkout, commit, push"
elif [ $1 = "push" ]
then
  sh ~/.drumcommit/linux/push.sh
elif [ $1 = "commit" ]
then
  sh ~/.drumcommit/linux/commit.sh
elif [ $1 = "checkout" ]
then
  sh ~/.drumcommit/linux/checkout.sh
else
  echo "wrong options. available: checkout, commit, push"
fi
exit 0
