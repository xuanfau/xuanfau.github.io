@echo off
:: change directory
set path1=%~d0
set path4=%~dp0
%path1%
cd %path4%

:: show git status
git status

:: add all changing
git add -A

:: local commit
git commit -m "Autoupdate"

:: push to remote repository
git push origin master

:: make a pause 
pause