#!/bin/sh
DIR=$(pwd)

if [ ! -f $DIR/.git/hooks/pre-commit ]; then
echo "" >> $DIR/.git/hooks/pre-commit
fi

if grep -Fxq "afplay ~/.drumcommit/drumroll.wav" $DIR/.git/hooks/pre-commit
then
grep -v "afplay ~/.drumcommit/drumroll.wav" $DIR/.git/hooks/pre-commit > $DIR/.git/hooks/pre-commit.orig
mv $DIR/.git/hooks/pre-commit.orig $DIR/.git/hooks/pre-commit
fi

if ! grep -Fxq "afplay ~/.drumcommit/sounds/drumroll.wav" $DIR/.git/hooks/pre-commit
then
echo "### drumcommit ###" >> $DIR/.git/hooks/pre-commit
echo "afplay ~/.drumcommit/sounds/drumroll.wav" >> $DIR/.git/hooks/pre-commit
echo "### end drumcommit ###" >> $DIR/.git/hooks/pre-commit
fi

chmod 755 $DIR/.git/hooks/pre-commit
echo "[drumcommit] pre-commit hook installed"

exit 0
