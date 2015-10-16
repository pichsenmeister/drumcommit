#!/bin/sh

if [ -f /etc/debian_version ]; then
    OS=Debian
else
    OS=$(uname -s)
fi

if [ $OS = "Darwin" ]; then
  ./mac/install.sh
elif [ $OS = "Debian" -o $OS = "Ubuntu" -o "Linux" ]; then
  ./linux/install.sh
fi
