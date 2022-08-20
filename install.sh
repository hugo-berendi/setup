#!/bin/bash
if [ "$OSTYPE" == "linux-gnu" ]; then
        curl --silent -o- https://raw.githubusercontent.com/hugo-berendi/setup/main/linux/linux.sh | bash
fi

if [ "$OSTYPE" == "darwin"* ]; then
        curl --silent -o- https://raw.githubusercontent.com/hugo-berendi/setup/main/macos/macos.sh | bash
fi

if [ "$OSTYPE" == "cygwin" ]; then
        echo "There is Cygwin support yet"
fi

if [ "$OSTYPE" == "msys" ]; then
        curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows/windows.bat && ./windows.bat
fi

if [ "$OSTYPE" == "win32" ]; then
        curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows/windows.bat && ./windows.bat
fi

if [ "$OSTYPE" == "freebsd"* ]; then
        echo "There is no FreeBSD support yet."
fi
