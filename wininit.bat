@echo off
rem You need to run this as an administrator.

mklink /d ..\.vim vimfiles
mklink ..\_vimrc vimfiles\vimrc

pause
