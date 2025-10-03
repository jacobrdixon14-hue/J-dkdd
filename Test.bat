@echo off
echo Scanning local network for devices...
echo.

:: Set your subnet
set SUBNET=192.168.1

:: Ping all addresses quickly to populate ARP cache
for /L %%i in (1,1,254) do (
    ping -n 1 -w 50 %SUBNET%.%%i >nul
)

echo Active devices (IP and name):
echo ------------------------------

:: Show devices from ARP table with resolved names
for /f "tokens=1,2" %%A in ('arp -a ^| find "%SUBNET%"') do (
    set IP=%%A
    for /f "tokens=1" %%N in ('nslookup %%A ^| find "Name:"') do (
        set NAME=%%N
    )
    echo %%A
)

echo.
echo Scan complete.
pause
