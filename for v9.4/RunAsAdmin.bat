@echo off
chcp 65001 >nul

echo Вы действительно хотите выполнить этот скрипт?
echo.
choice /c YN /m "Выберите:"

if errorlevel 2 goto no
if errorlevel 1 goto yes

:yes
echo Выполнение скрипта...

echo {"accounts":[{"entitlement":{"canPlayMinecraft":true,"ownsMinecraft":true},"type":"MSA"}],"formatVersion":3} > "%appdata%\PrismLauncher\accounts.json"

echo.
echo Готово!
pause
exit

:no
echo Скрипт отменён.
pause
exit
