@echo off

echo Please input your operating system
echo   1 § MacOS
echo   2 § Linux
echo   3 § Windows

echo[

set /p os=Please choose your operating system [1/2/3]?:
if %os%==1 echo MacOS
if %os%==2 echo Linux
if %os%==3 echo Windows
