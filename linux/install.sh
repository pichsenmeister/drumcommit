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

if [ ! -d ~/.drumcommit/linux ]; then
cp -R ../linux ~/.drumcommit/linux
fi

if ! grep -Fxq "alias drumcommit='~/.drumcommit/linux/drumcommit.sh'" ~/.bashrc
then
echo "" >> ~/.bashrc
echo "### drumcommit ###" >> ~/.bashrc
echo "alias drumcommit='~/.drumcommit/linux/drumcommit.sh'" >> ~/.bashrc
bash
fi

chmod +x ~/.drumcommit/linux/*.sh

echo "[drumcommit] SUCCESS"

exit 0

