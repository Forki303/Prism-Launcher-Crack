@echo off
chcp 65001 >nul

echo Are you sure you want to execute this script?
echo.
choice /c YN /m "Select:"

if errorlevel 2 goto no
if errorlevel 1 goto yes

:yes
echo Executing script...

set "PL_DIR=%appdata%\PrismLauncher"


if not exist "%PL_DIR%" (
    mkdir "%PL_DIR%"
)


>"%PL_DIR%\accounts.json" (
    echo {
    echo     "accounts": [
    echo         {
    echo             "entitlement": {
    echo                 "canPlayMinecraft": true,
    echo                 "ownsMinecraft": true
    echo             },
    echo             "msa": {
    echo                 "refresh_token": "TOKEN",
    echo                 "token": "TOKEN"
    echo             },
    echo             "msa-client-id": "c36a9fb6-4f2a-41ff-90bd-ae7cc92031eb",
    echo             "type": "MSA"
    echo         }
    echo     ],
    echo     "formatVersion": 3
    echo }
)

echo.
echo Ready!
pause
exit

:no
echo The script has been cancelled.
pause
exit
