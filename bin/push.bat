@echo off
:: change directory
set path1=%~d0
set path4=%~dp0
%path1%
cd %path4%

set "lj=%~p0"
set "lj=%lj:\bin\= %"
set "lj=%lj:\= %"
for %%a in (%lj%) do set wjj=%%a

:: input commit message
set /p commit_msg=Please input commit %wjj%-message:

:: show git status
git status

:: add all changing
git add -A

:: local commit
git commit -m "%commit_msg%"

:: push to remote repository
git push origin master

:: make a pause 
pause