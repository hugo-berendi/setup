#!/bin/bash
# read $OSTYPE with an if statement
if [ "$OSTYPE" == "linux-gnu" ]; then
    curl --silent -o- https://raw.githubusercontent.com/hugo-berendi/setup/main/linux/linux.sh | bash
elif [ "$OSTYPE" == "darwin"* ]; then
    curl --silent -o- https://raw.githubusercontent.com/hugo-berendi/setup/main/macos/macos.sh | bash
elif [ "$OSTYPE" == "cygwin" ]; then
    echo "There is Cygwin support yet"
elif [ "$OSTYPE" == "msys" ]; then
    curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows/windows.bat && ./windows.bat
elif [ "$OSTYPE" == "win32" ]; then
    curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows/windows.bat && ./windows.bat
elif [ "$OSTYPE" == "freebsd"* ]; then
    echo "There is no FreeBSD support yet."
else
    echo "Unknown"
fi