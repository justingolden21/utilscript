@echo off
title Util Script

:: log date, time, user
echo %time% %date% %username% >> log.txt
color 0
echo Welcome %username%! It is %time% on %date%.



:Top

echo What would you like to do?
echo     'system' for system info
echo     'tasks' for a list of tasks
echo     'net' for network stats
echo     'ip' for ip info
echo     'driver' for info on your drivers
echo     'quit' to quit (or ctrl+c)

set uinput = ""
set /p uinput= " "

if "%uinput%"=="quit" (
	echo Quitting...
	goto :End
)
if "%uinput%"=="system" (
	echo Displaying System Info...
	systeminfo
)
if "%uinput%"=="tasks" (
	echo Displaying Task Info...
	tasklist
)
if "%uinput%"=="net" (
	echo Displaying Network Info...
	netstat
)
if "%uinput%"=="ip" (
	echo Displaying IP Info...
	ipconfig
)
if "%uinput%"=="driver" (
	echo Displaying Driver Info...
	driverquery
)

if "%uinput%"=="" (
	echo You did not enter any input
	goto Top
)
if "%uinput%" NEQ "quit" if "%uinput%" NEQ "system" if "%uinput%" NEQ "tasks" if "%uinput%" NEQ "net" if "%uinput%" NEQ "ip" if "%uinput%" NEQ "driver" (
	echo Input ^"%uinput%^" is invalid
	goto Top
)

pause
:End
