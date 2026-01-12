:: BETA: THIS VERSION IS IN BETA MEANING BUGS WILL BE PRESENT, SEND FEEDBACK HERE: https://forms.cloud.microsoft/r/JZecx1MBtJ
:me
@echo off
color 0b
mode con: cols=80 lines=30
title WOWCAT for Windows 11
SETLOCAL ENABLEDELAYEDEXPANSION

:: SETTINGS DO NOT EDIT
set "WOWCAT_VER=2.2.4"
set "VERSION_URL=https://raw.githubusercontent.com/SilkHeaded/WOWCAT/refs/heads/main/version.txt"
set "FORM=https://forms.cloud.microsoft/r/JZecx1MBtJ"
set "l=https://duckduckgo.com/html/?q=%q%"
set "q=%q: =+%"
set "last_op=%op%"
set "op=%TEMP%\LMAOWOWCAT2913%RANDOM%HTML_temp%RANDOM%.html"
set "RAW_URL=https://raw.githubusercontent.com/SilkHeaded/WOWCAT/main/WOWCAT.bat"
set "TMP_FILE=%TEMP%\WOWCAT_update_%RANDOM%.bat"
set "SELF=%~f0"
set "TMP_VER=%TEMP%\WOWCAT_ver_%RANDOM%.txt"
set "UPDATE_PROMPT=1"

rem math
set /a min=1
set /a max=100
set /a range=max-min+1
set /a randomNumber=%RANDOM%%%range + %min%


echo.
echo           ..     ..  .......  ..     ..  ......   .......  .......
echo           ..     ..  ..   ..  ..     ..  ..       ..   ..     ..
echo           ..  .  ..  ..   ..  ..  .  ..  ..       .......     ..
echo           .. . . ..  ..   ..  .. . . ..  ..       ..   ..     ..
echo           ...   ...  .......  ...   ...  ......   ..   ..     ..
echo         ===========================================================
echo                            [help] - for info
echo                           BUGS MAY BE PRESENT
echo		 _________________________________________________________
echo.


:re
set /p choice="%username% on v%WOWCAT_VER% / "
if "%choice%"=="help" goto help
if "%choice%"=="leave" goto exit
if "%choice%"=="msg" goto msg
if "%choice%"=="enablewarning" set "msgw=1"
if "%choice%"=="disablewarning" set "msgw=
if "%choice%"=="countdown" goto command_
if "%choice%"=="brhtml" goto browser
if "%choice%"=="iamparanoid" goto iamparanoid
if "%choice%"=="clear" goto clean
if "%choice%"=="ping" goto ping
if "%choice%"=="direct" goto dir
if "%choice%"=="tasklist" goto tasklist
if "%choice%"=="shutdown" goto shutdown
if "%choice%"=="windowsdiskcheck" goto chkdsk
if "%choice%"=="upd" goto update
if "%choice%"=="update" goto update
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
if "%choice%"=="notepad" goto notepad
if "%choice%"=="np" goto notepad
if "%choice%"=="com" goto commands
if "%choice%"=="checkupd" goto checkversion
if "%choice%"=="rand" goto coms_
echo ERROR 332: Command failed to be recognized, please use [help] or send feedback [report]
goto re

:command_
if "%msgw%"=echo ERROR 333: Command is valid however not yet programmed, you may become a contributor by [report]

:commands
IF EXIST "com.txt" (
    start "" "com.txt"
    goto re
) ELSE (
echo   ERROR 828: Unable to find "com.txt" so as fallback
echo   ; Going to raw GitHub page...
    start "" "https://raw.githubusercontent.com/SilkHeaded/WOWCAT/refs/heads/main/main/com.txt"
    goto re
)

:coms_
set "RSTR=%random%%random%%random%%random%%random%"
echo !RSTR:~0,10!
goto coms_

:report
start "" "
start "" "%FORM%"
echo Thanks for giving feedback^! :]
goto re

:viewtemp
explorer.exe "search-ms:query=%QUERY%&crumb=location:%FOLDER%"
goto re

:browser
set "q="
set /p q=#
if "%q%"=="" (
echo ERROR 001: No Input
pause
goto re
)

echo Fetching raw HTML
curl -L -A "Mozilla/5.0" "%l%" -o "%op%"
if errorlevel 1 (
echo.
echo ERROR 344: HTML unable to download
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

:help
color 2
title manual
cls
echo =============================================================================
echo : WHAT ARE WE?
echo WOWCAT is a batch file simular to command prompt
echo Created by SilkHeaded and being a small project,
echo thanks for viewing WOWCAT
echo =============================================================================
pause
cls
echo =============================================================================
echo : INFO
echo WOWCAT is not an actual Windows, MacOS, or Linux software
echo WOWCAT is not a virus, you may check the source code with [iamparanoid]
echo WOWCAT may read files only for display and not tracking
echo WOWCAT is in beta, bugs may occur frequently
echo WOWCAT uses MIT license as seen here
echo =============================================================================
pause
cls
echo =============================================================================
echo # VIEW COMMANDS USING [com]
echo =============================================================================
pause
cls
echo =============================================================================
echo : CREDITS
echo Scriptors: SilkHeaded
echo Testers: SilkHeaded, BlackStarMythology (Ari), Stardust, fourf3ced
echo Contributors: You!
echo =============================================================================
echo.
pause
goto me

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

:sfc
echo Checking system file integrity...
sfc /scannow
echo.
goto re

:textcolor
echo colors:
echo + blue + green + aqua + red
echo + purple + yellow + white + gray
echo + light blue + light green + light aqua
echo + light red + light purple + light yellow
echo + bright white
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
echo Downloading update...
curl -L -A "Mozilla/5.0" "%RAW_URL%" -o "%TMP_FILE%"
if errorlevel 1 (
echo ERROR 303: Update failed
del "%TMP_FILE%" 2>nul
goto re
)
echo Replacing on next run...
copy "%TMP_FILE%" "%SELF%" >nul
del "%TMP_FILE%" 2>nul
echo Updated, please restart
goto exit

:checkversion
echo Checking for updates...

curl -L -s -A "Mozilla/5.0" "%VERSION_URL%" -o "%TMP_VER%" >nul 2>&1
if errorlevel 1 (
set /p REMOTE_VER=<"%TMP_VER%"
del "%TMP_VER%" 2>nul
goto :eof
)

del "%TMP_VER%" 2>nul

if "%REMOTE_VER%"=="" goto :eof

if not "%REMOTE_VER%"=="%WOWCAT_VER%" (
echo.
echo ^<^< UPDATE AVAILABLE ^>^> %WOWCAT_VER% -^> %REMOTE_VER%
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
echo ERROR 288: Can't find WOWCAT
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
echo ^<^< UPDATE AVAILABLE ^>^> !WOWCAT_VER! -^> !REMOTE_VER!
echo.
color 0B
)
goto :eof

:exit
exit

