#!/bin/sh
if [ -d ~/.drumcommit ]; then
rm -r ~/.drumcommit
fi

if [ ! -d ~/.drumcommit ]; then
mkdir ~/.drumcommit
fi

if [ ! -d ~/.drumcommit/sounds ]; then
cp -R ../sounds ~/.drumcommit/sounds
fi

if [ ! -d ~/.drumcommit/mac ]; then
cp -R ../linux ~/.drumcommit/mac
fi

if ! grep -Fxq "alias drumcommit='~/.drumcommit/mac/drumcommit.sh'" ~/.bashrc
then
echo "" >> ~/.bashrc
echo "### drumcommit ###" >> ~/.bashrc
echo "alias drumcommit='~/.drumcommit/mac/drumcommit.sh'" >> ~/.bashrc
bash
fi

chmod +x ~/.drumcommit/mac/*.sh

exit 0

