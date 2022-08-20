#!/bin/bash
if [ "$OSTYPE" == "linux-gnu" ]; then
        curl --silent -o- https://raw.githubusercontent.com/hugo-berendi/setup/main/linux/linux.sh | bash
else if [ "$OSTYPE" == "darwin"* ]; then
        curl --silent -o- https://raw.githubusercontent.com/hugo-berendi/setup/main/macos/macos.sh | bash
else if [ "$OSTYPE" == "cygwin" ]; then
        echo "There is Cygwin support yet"
else if [ "$OSTYPE" == "msys" ]; then
        curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows/windows.bat && ./windows.bat
else if [ "$OSTYPE" == "win32" ]; then
        curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows/windows.bat && ./windows.bat
else if [ "$OSTYPE" == "freebsd"* ]; then
        echo "There is no FreeBSD support yet."
else
        echo "Unknown"
fi