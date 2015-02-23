#!/bin/sh
DIR=$(pwd)

if [ ! -f $DIR/.git/hooks/pre-commit ]; then
echo "" >> $DIR/.git/hooks/pre-commit
fi

if ! grep -Fxq "afplay ~/.drumcommit/sounds/drumroll.wav" $DIR/.git/hooks/pre-commit
then
echo "### drumcommit ###" >> $DIR/.git/hooks/pre-commit
echo "afplay ~/.drumcommit/sounds/drumroll.wav" >> $DIR/.git/hooks/pre-commit
echo "### end drumcommit ###" >> $DIR/.git/hooks/pre-commit
chmod 755 $DIR/.git/hooks/pre-commit
fi

exit 0

