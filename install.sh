#!/bin/bash

case "$OSTYPE" in
        solaris*) echo "SOLARIS" ;;
        darwin*)  curl -O https://raw.githubusercontent.com/hugo-berendi/setup/main/macos.sh && bash macos.sh ;; 
        linux*)   curl -O https://raw.githubusercontent.com/hugo-berendi/setup/main/windows.sh && bash windows.sh ;;
        bsd*)     echo "BSD" ;;
        msys*)    curl -O https://raw.githubusercontent.com/hugo-berendi/setup/main/linux.sh && bash linux.sh ;;
        cygwin*)  echo "ALSO WINDOWS" ;;
        *)        echo "unknown: $OSTYPE" ;;
esac

echo "end of the file"