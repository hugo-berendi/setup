#!/bin/bash

# find the os and install the installer

case "$OSTYPE" in
        solaris*) curl --silent -o- https://raw.githubusercontent.com/hugo-berendi/setup/main/linux.sh | bash ;;
        darwin*)  curl --silent -o- https://raw.githubusercontent.com/hugo-berendi/setup/main/macos/macos.sh | bash ;; 
        linux*)   curl --silent -o- https://raw.githubusercontent.com/hugo-berendi/setup/main/linux.sh | bash ;;
        bsd*)     curl --silent -o- https://raw.githubusercontent.com/hugo-berendi/setup/main/linux.sh | bash ;;
        msys*)    curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows/windows.bat && ./windows.bat ;;
        cygwin*)  curl --silent -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows/windows.bat && ./windows.bat ;;
        *)        echo "unknown: $OSTYPE" ;;
esac

# end of the file

echo ""
echo "##############################################################################"
echo ""
echo "Done"