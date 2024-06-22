@echo off

@REM 管理员用户执行PS
powershell -Command 
    "Start-Process powershell.exe -Verb RunAs -ArgumentList '-file','regeditadd.ps1'"

pause