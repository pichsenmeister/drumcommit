#!/bin/sh
DIR=$(pwd)

if [ ! -f $DIR/.git/hooks/pre-commit ]; then
echo "" >> $DIR/.git/hooks/pre-commit
fi

if grep -Fxq "aplay ~/.drumcommit/drumroll.wav" $DIR/.git/hooks/pre-commit
then
grep -v "aplay ~/.drumcommit/drumroll.wav" $DIR/.git/hooks/pre-commit > $DIR/.git/hooks/pre-commit.orig
mv $DIR/.git/hooks/pre-commit.orig $DIR/.git/hooks/pre-commit
fi

if ! grep -Fxq "aplay ~/.drumcommit/sounds/drumroll.wav" $DIR/.git/hooks/pre-commit
then
echo "### drumcommit ###" >> $DIR/.git/hooks/pre-commit
echo "aplay ~/.drumcommit/sounds/drumroll.wav" >> $DIR/.git/hooks/pre-commit
echo "### end drumcommit ###" >> $DIR/.git/hooks/pre-commit
fi
chmod 755 $DIR/.git/hooks/pre-commit

exit 0

