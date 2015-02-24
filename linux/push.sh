#!/bin/sh
DIR=$(pwd)

if [ ! -f $DIR/.git/hooks/pre-push ]; then
echo "" >> $DIR/.git/hooks/pre-push
fi

if ! grep -Fxq "aplay ~/.drumcommit/sounds/stage-clean.wav" $DIR/.git/hooks/pre-push
then
echo "### drumcommit ###" >> $DIR/.git/hooks/pre-push
echo "aplay ~/.drumcommit/sounds/stage-clean.wav" >> $DIR/.git/hooks/pre-push
echo "### end drumcommit ###" >> $DIR/.git/hooks/pre-push
fi
chmod 755 $DIR/.git/hooks/pre-push

exit 0

