#!/bin/sh
DIR=$(pwd)

if [ ! -f $DIR/.git/hooks/post-checkout ]; then
echo "" >> $DIR/.git/hooks/post-checkout
fi

if ! grep -Fxq "afplay ~/.drumcommit/sounds/pipe.wav" $DIR/.git/hooks/post-checkout
then
echo "### drumcommit ###" >> $DIR/.git/hooks/post-checkout
echo "afplay ~/.drumcommit/sounds/pipe.wav" >> $DIR/.git/hooks/post-checkout
echo "### end drumcommit ###" >> $DIR/.git/hooks/post-checkout
fi

chmod 755 $DIR/.git/hooks/post-checkout
echo "[drumcommit] post-checkout hook installed"

exit 0

