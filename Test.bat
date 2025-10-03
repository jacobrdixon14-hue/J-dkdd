@echo off
echo Scanning local network...
echo.

:: Set your subnet (adjust the last octet as needed)
set SUBNET=192.168.1

:: Loop through addresses 1-254
for /L %%i in (1,1,254) do (
    ping -n 1 -w 100 %%SUBNET%%.%%i >nul
    if not errorlevel 1 (
        echo Device found: %%SUBNET%%.%%i
    )
)

echo.
echo Scan complete.
pause
