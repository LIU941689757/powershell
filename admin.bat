@echo off

@REM 管理员用户执行BAT
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit

@REM 管理员用户执行PS
powershell -Command "Start-Process powershell.exe -Verb RunAs -ArgumentList '-file','regeditadd.ps1'"

pause