@echo off
title Util Script

:Top
color 0
set uinput = ""
echo What would you like to do?
set /p uinput= "'system' for system info, 'tasks' for a list of tasks, 'net' for network stats, 'ip' for ip info, 'driver' for info on your drivers, or type 'quit' to quit:    "

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
