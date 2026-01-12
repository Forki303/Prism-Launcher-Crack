@echo off
chcp 65001 >nul

echo Are you sure you want to execute this script?
echo.
choice /c YN /m "Select:"

if errorlevel 2 goto no
if errorlevel 1 goto yes

:yes
echo Executing script...

echo {"accounts":[{"entitlement":{"canPlayMinecraft":true,"ownsMinecraft":true},"type":"MSA"}],"formatVersion":3} > "%appdata%\PrismLauncher\accounts.json"

echo.
echo Ready!
pause
exit

:no
echo The script has been cancelled.
pause
exit