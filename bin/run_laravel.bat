@echo off
@mode con cp select=936 >nul
@call "C:\nginxstack\scripts\setenv.bat"
main.exe %*