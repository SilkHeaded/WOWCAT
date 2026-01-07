:: BETA: THIS VERSION IS IN BETA MEANING BUGS WILL BE PRESENT, SEND FEEDBACK HERE:
:me
@echo off
color 0b
mode con: cols=80 lines=30
title WOWCAT for Windows 11
setlocal ENABLEDELAYEDEXPANSION
set "WOWCAT_VER=1.1.23"
set "VERSION_URL=https://raw.githubusercontent.com/SilkHeaded/WOWCAT/refs/heads/main/version.txt"
cls
echo.
echo 		          WOWCAT SYSTEMS (v1.1.23)
echo			            [help] - for info
echo                        BUGS MAY BE PRESENT
echo		 _________________________________________________________
echo.
call :checkversion
echo.

:re
set /p choice="%username% at %TIME% / "
if "%choice%"=="help" goto help
if "%choice%"=="leave" goto exit 
if "%choice%"=="countdown" goto command_
if "%choice%"=="brhtml" goto browser
if "%choice%"=="iamparanoid" goto iamparanoid
if "%choice%"=="clear" goto clean
if "%choice%"=="ping" goto ping
if "%choice%"=="tasklist" goto tasklist
if "%choice%"=="shutdown" goto shutdown
if "%choice%"=="windowsdiskcheck" goto chkdsk
if "%choice%"=="wdc" goto chkdsk
if "%choice%"=="systemfilecheck" goto sfc
if "%choice%"=="sfc" goto sfc
if "%choice%"=="textcolor" goto textcolor
if "%choice%"=="onscreenkeyboard" goto osk
if "%choice%"=="osk" goto osk
if "%choice%"=="calculator" goto calc
if "%choice%"=="calc" goto calc
if "%choice%"=="coinflip" goto coinflip
if "%choice%"=="mag" goto magnify
if "%choice%"=="qt" goto quicktime
if "%choice%"=="removablestorage" goto removeablestorage
if "%choice%"=="saa" goto soundandaudio
if "%choice%"=="soundaudio" goto soundandaudio
if "%choice%"=="task" goto taskmanager
if "%choice%"=="wp" goto wordpad
if "%choice%"=="wordpad" goto wordpad
if "%choice%"=="pf" goto printersfolder
if "%choice%"=="printerfolder" goto printersfolder
if "%choice%"=="report" goto report
echo  ERROR 332: Command failed to be recognized, please use [help] or send feedback [report] 
goto re

:command_
echo  ERROR 333: Command is valid however not yet programmed, you may become a contributor by [report]


:help
echo - = MANUAL = -
echo # WHAT ARE WE? 	
echo WOWCAT is a batch file simular to command prompt
echo Created by SilkHeaded and being a small project,
echo thanks for viewing WOWCAT
echo.
echo # INFO
echo WOWCAT is not an actual Windows, MacOS, or Linux software
echo WOWCAT is not a virus, you may check the source code with [iamparanoid]
echo WOWCAT may read files only for display and not tracking
echo WOWCAT is in beta, bugs may occur frequently
echo.
echo # COMMANDS 
echo [leave] - Exit WOWCAT manually
echo [help] - Look at the manual
echo [systeminfo] - Look at system information (SOON)
echo [iamparanoid] - Look at WOWCAT source code
echo [viewtemp] - Look at all files created by WOWCAT
echo [countdown] - Countdown from a numeric value (NOT WORKING)
echo [brhtml] - Pick up data from DuckDuckGo into a HTML
echo      It may appear blank when it is run, type there
echo [clear] - Clear all command history in WOWCAT
echo [ping] - Test internet or local host connectivity
echo [tasklist] - Show running processes
echo [shutdown] - Reboot or power off the computer
echo [windowsdiskcheck] or [wdc] - Run Windows disk check
echo [systemfilecheck] or [sfc] - Run system file integrity checker
echo [textcolor] - Change text
echo      blue
echo      green
echo      aqua
echo      red
echo      purple
echo      yellow
echo      white
echo      gray
echo      light blue
echo      light green
echo      light aqua
echo      light red
echo      light purple
echo      light yellow
echo      bright white
echo [onscreenkeyboard] or [osk] - Self explained
echo [calc] or [calculator] - Self explained
echo [coinflip] - Flip a coin (50/50)
echo [wp] or [wordpad] - Self explained
echo [firewall] - Windows Firewall
echo [mag] - Magnify
echo [printersfolder] - Open printers folder
echo [qt] - Open QuickTime
echo [removablestorage] - Look at removable storage
echo [saa] or [soundaudio] - Sounds and Audio
echo [securitysystemtool] or [sst] - Open System Security Tool
echo [task] - Task Manager
echo [message] or [msg] - Self explained
echo       MESSAGE - Message imput
echo       IP - Device IP to send to, leave blank to leave a pop up 
echo.
echo # CREDITS
echo Scriptors: Declan Mignogna
echo Testers: Arden Mignogna, Bodhi Mignogna, Martin Holland
echo Command Ideas: Declan Mignogna, Arden Mignogna, Bodhi Mignogna, Martin Holland
echo Contributors: You! 
echo.
goto re

:report
start "" "https://forms.cloud.microsoft/r/JZecx1MBtJ"
echo Thanks for giving feedback^! :]
goto

:viewtemp
set "FOLDER=%TEMP%"
set "QUERY=LMAOWOWCAT2913"
explorer.exe "search-ms:query=%QUERY%&crumb=location:%FOLDER%"

:browser
set "q="
set /p q= # 
if "%q%"=="" (
    echo ERROR 001: No Input
    pause
    goto re
)

REM replace spaces with + for the URL
set "q=%q: =+%"
set "l=https://duckduckgo.com/html/?q=%q%"

REM remember last output file
set "op=%TEMP%\LMAOWOWCAT2913%RANDOM%HTML_temp%RANDOM%.html"
set "last_op=%op%"

echo Fetching raw HTML
curl -L -A "Mozilla/5.0" "%l%" -o "%op%"
if errorlevel 1 (
    echo.
    echo Search (HTML) unable to download
    pause
    goto re
)

echo.
echo Raw HTML opening in accessible HTML viewer

start "" "%op%"
echo.
goto re

:iamparanoid
if exist "%~f0" (
    start "" notepad.exe "%~f0%"
) else (
    echo ERROR 264: Cannot find
)

:clear
cls
goto re

:ping
set /p host=Enter host or IP to ping: 
if "%host%"=="" set host=8.8.8.8
echo Pinging %host%...
ping %host%
echo.
goto re

:tasklist
echo Listing all active tasks...
tasklist
echo.
goto re

:shutdown
echo [1] Shutdown now
echo [2] Restart
echo [3] Abort pending shutdown
set /p shopt=Select option: 
if "%shopt%"=="1" shutdown /s /t 3
if "%shopt%"=="2" shutdown /r /t 3
if "%shopt%"=="3" shutdown /a
echo.
goto re

:chkdsk
echo Running chkdsk on system drive...
chkdsk C:
echo.
goto re

:update
set "RAW_URL=https://raw.githubusercontent.com/SilkHeaded/WOWCAT/73cd15be163248a585de8339c49d4e1212c4565b/WOWCAT.bat?token=GHSAT0AAAAAADSWGZYPMW4X6G75CQW3MZAK2K6MUYQ"
set "TMP_FILE=%TEMP%\WOWCAT_update_%RANDOM%.bat"
set "LOG_FILE=%TEMP%\WOWCAT_update.log"

echo [%DATE% %TIME%] User %USERNAME% requested update >> "%LOG_FILE%"
echo Downloading latest WOWCAT from GitHub...
curl -L -A "Mozilla/5.0" "%RAW_URL%" -o "%TMP_FILE%"
if errorlevel 1 (
    echo Update failed: download error.
    echo [%DATE% %TIME%] ERROR: download failed >> "%LOG_FILE%"
    del "%TMP_FILE%" 2>nul
    goto re
)

for %%A in ("%~f0") do set "OLD_SIZE=%%~zA"
for %%A in ("%TMP_FILE%") do set "NEW_SIZE=%%~zA"
echo [%DATE% %TIME%] OLD_SIZE=%OLD_SIZE% NEW_SIZE=%NEW_SIZE% >> "%LOG_FILE%"

echo Applying update on restart...
echo [%DATE% %TIME%] Spawning helper to replace script >> "%LOG_FILE%"
start "" cmd /c "\"%~dp0WOWCAT_update.bat\" \"%~f0\" \"%TMP_FILE%\" \"%LOG_FILE%\""
goto exit


:sfc
echo Checking system file integrity...
sfc /scannow
echo.
goto re

:textcolor
echo colors:
echo     + blue      + green     + aqua      + red
echo     + purple    + yellow    + white     + gray
echo     + light blue + light green + light aqua
echo     + light red + light purple + light yellow
echo     + bright white
set /p choice=Enter color: 

if "%choice%"=="green" (color 2) & goto re
if "%choice%"=="blue" (color 1) & goto re
if "%choice%"=="red" (color 4) & goto re
if "%choice%"=="aqua" (color 3) & goto re
if "%choice%"=="purple" (color 5) & goto re
if "%choice%"=="yellow" (color 6) & goto re
if "%choice%"=="white" (color 7) & goto re
if "%choice%"=="gray" (color 8) & goto re
if "%choice%"=="light blue" (color 9) & goto re
if "%choice%"=="light green" (color A) & goto re
if "%choice%"=="light aqua" (color B) & goto re
if "%choice%"=="light red" (color C) & goto re
if "%choice%"=="light purple" (color D) & goto re
if "%choice%"=="light yellow" (color E) & goto re
if "%choice%"=="bright white" (color F) & goto re
if "%choice%"=="default" (color 0B) & goto re
echo ERROR 236: INVALID COLOR
goto re


:update
set "RAW_URL=https://raw.githubusercontent.com/SilkHeaded/WOWCAT/refs/heads/main/WOWCAT.bat"
set "TMP_FILE=%TEMP%\WOWCAT_update_%RANDOM%.bat"
set "LOG_FILE=%TEMP%\WOWCAT_update.log"

echo [%DATE% %TIME%] User %USERNAME% requested update >> "%LOG_FILE%"

echo Downloading latest WOWCAT from GitHub...
curl -L -A "Mozilla/5.0" "%RAW_URL%" -o "%TMP_FILE%"
if errorlevel 1 (
    echo Update failed: download error.
    echo [%DATE% %TIME%] ERROR: download failed >> "%LOG_FILE%"
    del "%TMP_FILE%" 2>nul
    goto re
)

:checkversion
echo Checking for updates...
set "TMP_VER=%TEMP%\WOWCAT_ver_%RANDOM%.txt"

curl -L -s -A "Mozilla/5.0" "%VERSION_URL%" -o "%TMP_VER%" >nul 2>&1
if errorlevel 1 (
    del "%TMP_VER%" 2>nul
    goto :eof
)

set /p REMOTE_VER=<"%TMP_VER%"
del "%TMP_VER%" 2>nul

if "%REMOTE_VER%"=="" goto :eof

if not "%REMOTE_VER%"=="%WOWCAT_VER%" (
    set "UPDATE_PROMPT=1"
    echo.
    echo    ^<^< UPDATE AVAILABLE ^>^>  %WOWCAT_VER% -^> %REMOTE_VER%
    echo.
)
goto :eof


for %%A in ("%~f0") do set "OLD_SIZE=%%~zA"
for %%A in ("%TMP_FILE%") do set "NEW_SIZE=%%~zA"

echo [%DATE% %TIME%] OLD_SIZE=%OLD_SIZE% NEW_SIZE=%NEW_SIZE% >> "%LOG_FILE%"

echo Applying update on restart...
echo [%DATE% %TIME%] Spawning helper to replace script >> "%LOG_FILE%"

start "" cmd /c "\"%~dp0WOWCAT_update.bat\" \"%~f0\" \"%TMP_FILE%\" \"%LOG_FILE%\""
goto exit

:osk
osk
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:calc
calc
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:coinflip
set /a min=1
set /a max=100
set /a range=max-min+1
set /a randomNumber=%RANDOM%%%range + %min%

if %randomNumber% GEQ 50 (
    echo coinflip = heads
) else (
    echo coinflip = tails
)
goto re

:taskmanager
taskmgr
goto re

:wordpad
write
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:notepad
start notepad
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:firewall
firewall.cpl
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:magnify
magnify
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:util
utilman
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:windowssystemsecuritytool
syskey
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:soundsandaudio
mmsys.cpl
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:removablestorage
ntmsmgr.msc
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:quicktime
Quicktime.cpl
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:printersfolder
printers
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:iamparanoid
if exist "%~f0" (
    start "" notepad.exe "%~f0"
) else (
    echo ERROR 264: Cannot find
)
goto re

:msg
set /p msg=MESSAGE # 
set /p iptof=IP # 
if "%iptof%"=="" (
    msg * "%msg%"
) else (
    msg %iptof% "%msg%"
)
goto re

:checkversion
set "TMP_VER=%TEMP%\WOWCAT_ver_%RANDOM%.txt"
curl -L -s -A "Mozilla/5.0" "%VERSION_URL%" -o "%TMP_VER%" >nul 2>&1
if errorlevel 1 (
    del "%TMP_VER%" 2>nul
    goto :eof
)
set /p REMOTE_VER=<"%TMP_VER%"
del "%TMP_VER%" 2>nul
if "%REMOTE_VER%"=="" goto :eof
if not "%REMOTE_VER%"=="%WOWCAT_VER%" (
    color 0E
    echo.
    echo    ^<^< UPDATE AVAILABLE ^>^>  !WOWCAT_VER! -^> !REMOTE_VER!
    echo.
    color 0B
)
goto :eof


:exit
exit


