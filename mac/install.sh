#!/bin/sh
if [ ! -d ~/.drumcommit ]; then
mkdir ~/.drumcommit
fi
if [ ! -f ~/.drumcommit/drumroll.wav ]; then
cp ../drumroll.wav ~/.drumcommit/
fi
if [ ! -f $1/.git/hooks/pre-commit ]; then
echo "" >> $1/.git/hooks/pre-commit
fi

if ! grep -Fxq "afplay ~/.drumcommit/drumroll.wav" $1/.git/hooks/pre-commit
then
echo "### drumcommit ###" >> $1/.git/hooks/pre-commit
echo "afplay ~/.drumcommit/drumroll.wav" >> $1/.git/hooks/pre-commit
echo "### end drumcommit ###" >> $1/.git/hooks/pre-commit
chmod 755 $1/.git/hooks/pre-commit
fi

exit 0

